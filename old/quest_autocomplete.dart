import '../../infrastructure/repositories/quest_repository.dart';
import '../models/quest.dart';
import '../models/user.dart';
import 'quest_service.dart';

/// ===============================================================
/// ⚙️ QuestAutoCompleteEngine
/// ===============================================================
/// Responsável por:
///  - Consumir eventos internos do app (journal, leitura, treino, timer...)
///  - Encontrar quests que:
///      * autoCompleteFromApp == true
///      * autoCompleteEventKey combina com o evento
///  - Atualizar progressos e completar quests automaticamente
///
/// NÃO faz UI.
/// NÃO decide recompensas (delegado ao QuestService).
/// ===============================================================
class QuestAutoCompleteEngine {
  final QuestRepository repo;
  final QuestService service;

  QuestAutoCompleteEngine({
    required this.repo,
    required this.service,
  });

  // -----------------------------------------------------------
  // 🔧 UTILITÁRIO CENTRAL: aplica um "evento" em quests elegíveis
  // -----------------------------------------------------------
  Future<void> _applyEventToMatchingQuests({
    required String userId,
    required String eventKey,
    required int amount,
    String? contentId,
    Map<String, dynamic>? extraMeta,
  }) async {
    if (amount <= 0) return;

    // 1) pega todas as instâncias ativas do usuário
    final instances = await repo.getInstances(userId);

    for (final inst in instances) {
      // ignora quests já encerradas
      if (inst.status == QuestStatus.completed ||
          inst.status == QuestStatus.failed ||
          inst.status == QuestStatus.expired) {
        continue;
      }

      // 2) pega a template correspondente
      final template = await repo.getTemplateById(inst.questId);
      if (template == null) continue;

      // precisa ser uma quest com autoComplete ligado
      if (!template.autoCompleteFromApp) continue;

      // precisa bater a chave de evento
      if (template.autoCompleteEventKey == null ||
          template.autoCompleteEventKey!.isEmpty) {
        continue;
      }

      if (template.autoCompleteEventKey != eventKey) {
        // se quiser no futuro, dá pra suportar prefixo/wildcard tipo "journal_*"
        continue;
      }

      // se a quest está vinculada a um conteúdo específico (ebook, manga, etc)
      if (contentId != null &&
          template.linkedContentId != null &&
          template.linkedContentId!.isNotEmpty &&
          template.linkedContentId != contentId) {
        // conteúdo não bate → ignora
        continue;
      }

      // 3) aplica regras específicas de tracking
      await _applyTracking(
        template: template,
        instance: inst,
        eventKey: eventKey,
        amount: amount,
        extraMeta: extraMeta,
      );
    }
  }

  // -----------------------------------------------------------
  // 🔧 Aplica tracking de acordo com o tipo da quest
  // -----------------------------------------------------------
  Future<void> _applyTracking({
    required QuestTemplate template,
    required QuestInstance instance,
    required String eventKey,
    required int amount,
    Map<String, dynamic>? extraMeta,
  }) async {
    switch (template.trackingType) {
      case QuestTrackingType.manual:
        // manual: não faz nada. UI que conclui.
        return;

      case QuestTrackingType.counter:
      case QuestTrackingType.timer:
      case QuestTrackingType.writing:
      case QuestTrackingType.reading:
        await _applyNumericProgress(
          template: template,
          instance: instance,
          delta: amount,
          extraMeta: extraMeta,
        );
        return;
    }
  }

  // -----------------------------------------------------------
  // 🔢 Progresso numérico genérico
  //    (counter, timer, writing, reading)
  // -----------------------------------------------------------
  Future<void> _applyNumericProgress({
    required QuestTemplate template,
    required QuestInstance instance,
    required int delta,
    Map<String, dynamic>? extraMeta,
  }) async {
    if (delta <= 0) return;

    // alvo padrão da template, mas a instance pode ter override
    final target = instance.targetProgress > 0
        ? instance.targetProgress
        : template.defaultTargetProgress;

    final newProgress = (instance.currentProgress + delta).clamp(0, target);

    // mescla meta existente com o extra do evento
    final mergedMeta = {
      if (instance.resultMeta != null) ...instance.resultMeta!,
      if (extraMeta != null) ...extraMeta,
    };

    // se atingiu ou passou do alvo → completa
    if (newProgress >= target) {
      await service.addProgress(
        instance: instance,
        delta: delta,
        resultMeta: mergedMeta,
        autoComplete: true,
        forceComplete: true,
      );
    } else {
      // apenas atualiza progresso parcial
      await service.addProgress(
        instance: instance,
        delta: delta,
        resultMeta: mergedMeta,
        autoComplete: true,
      );
    }
  }

  // ===========================================================
  // 📝 EVENTOS: JOURNAL / DIÁRIO
  // ===========================================================

  /// Ex.: usuário escreveu N linhas no diário.
  ///
  /// - eventKey: "journal_lines"
  /// - trackingType esperado: writing
  /// - trackingUnit esperado: lines
  Future<void> onJournalLinesWritten({
    required String userId,
    required int lines,
    String? journalEntryId,
    String? journalSectionId,
  }) async {
    await _applyEventToMatchingQuests(
      userId: userId,
      eventKey: 'journal_lines',
      amount: lines,
      extraMeta: {
        if (journalEntryId != null) 'journal_entry_id': journalEntryId,
        if (journalSectionId != null) 'journal_section_id': journalSectionId,
        'journal_lines_delta': lines,
      },
    );
  }

  /// Ex.: usuário escreveu N palavras no diário.
  ///
  /// - eventKey: "journal_words"
  /// - trackingUnit: words
  Future<void> onJournalWordsWritten({
    required String userId,
    required int words,
    String? journalEntryId,
  }) async {
    await _applyEventToMatchingQuests(
      userId: userId,
      eventKey: 'journal_words',
      amount: words,
      extraMeta: {
        if (journalEntryId != null) 'journal_entry_id': journalEntryId,
        'journal_words_delta': words,
      },
    );
  }

  // ===========================================================
  // 📖 EVENTOS: LEITURA INTERNA (ebooks, mangás, etc.)
  // ===========================================================

  /// Ex.: usuário leu N páginas do conteúdo X.
  ///
  /// - eventKey: "ebook_pages_read"
  /// - trackingType: reading
  /// - trackingUnit: pages
  /// - linkedContentId: id do ebook/manga
  Future<void> onContentPagesRead({
    required String userId,
    required String contentId,
    required int pages,
    double? percentProgress,
  }) async {
    await _applyEventToMatchingQuests(
      userId: userId,
      eventKey: 'ebook_pages_read',
      amount: pages,
      contentId: contentId,
      extraMeta: {
        'content_id': contentId,
        'pages_delta': pages,
        if (percentProgress != null) 'percent_progress': percentProgress,
      },
    );
  }

  /// Ex.: usuário completou um capítulo.
  ///
  /// - eventKey: "content_chapter_completed"
  /// - trackingUnit: chapters
  Future<void> onContentChapterCompleted({
    required String userId,
    required String contentId,
    int chapters = 1,
  }) async {
    await _applyEventToMatchingQuests(
      userId: userId,
      eventKey: 'content_chapter_completed',
      amount: chapters,
      contentId: contentId,
      extraMeta: {
        'content_id': contentId,
        'chapters_delta': chapters,
      },
    );
  }

  // ===========================================================
  // 🏋️ EVENTOS: TREINO / FÍSICO
  // ===========================================================

  /// Ex.: usuário realizou N repetições de um exercício.
  ///
  /// - eventKey: "training_reps"
  /// - trackingType: counter
  /// - trackingUnit: reps
  Future<void> onTrainingReps({
    required String userId,
    required int reps,
    String? exerciseId,
  }) async {
    await _applyEventToMatchingQuests(
      userId: userId,
      eventKey: 'training_reps',
      amount: reps,
      extraMeta: {
        if (exerciseId != null) 'exercise_id': exerciseId,
        'reps_delta': reps,
      },
    );
  }

  /// Ex.: usuário treinou N minutos.
  ///
  /// - eventKey: "training_minutes"
  /// - trackingType: timer ou counter
  /// - trackingUnit: minutes
  Future<void> onTrainingMinutes({
    required String userId,
    required int minutes,
    String? workoutId,
  }) async {
    await _applyEventToMatchingQuests(
      userId: userId,
      eventKey: 'training_minutes',
      amount: minutes,
      extraMeta: {
        if (workoutId != null) 'workout_id': workoutId,
        'minutes_delta': minutes,
      },
    );
  }

  // ===========================================================
  // 🧘 EVENTOS: MEDITAÇÃO / TIMER PURO
  // ===========================================================

  /// Timer usado em meditação, respiração, foco profundo, etc.
  ///
  /// - eventKey: "focus_timer_minutes"
  /// - trackingType: timer
  /// - trackingUnit: minutes
  Future<void> onFocusTimerCompleted({
    required String userId,
    required int minutes,
    String? sessionId,
  }) async {
    await _applyEventToMatchingQuests(
      userId: userId,
      eventKey: 'focus_timer_minutes',
      amount: minutes,
      extraMeta: {
        if (sessionId != null) 'session_id': sessionId,
        'minutes_delta': minutes,
      },
    );
  }

  // ===========================================================
  // 🎯 EVENTO GENÉRICO (FLEX)
  // ===========================================================

  /// Endpoint genérico caso você queira disparar algo custom:
  ///
  ///  ex:
  ///   handleGenericEvent(
  ///     userId: x,
  ///     eventKey: 'work_session_completed',
  ///     amount: 1,
  ///     extraMeta: {'task_id': 'xyz'}
  ///   );
  Future<void> handleGenericEvent({
    required String userId,
    required String eventKey,
    int amount = 1,
    Map<String, dynamic>? extraMeta,
    String? contentId,
  }) async {
    await _applyEventToMatchingQuests(
      userId: userId,
      eventKey: eventKey,
      amount: amount,
      contentId: contentId,
      extraMeta: extraMeta,
    );
  }
}
