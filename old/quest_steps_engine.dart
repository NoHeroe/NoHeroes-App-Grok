import '../../infrastructure/repositories/quest_repository.dart';
import '../../infrastructure/repositories/auth_repo.dart';
import '../models/quest.dart';
import 'quest_service.dart';

/// ===============================================================
/// ⚙️ QuestStepsEngine
/// ===============================================================
///
/// Responsável por:
///   - Progresso de Story / Boss Quests baseadas em Steps
///   - Avanço automático de steps
///   - Conclusão de steps e da quest inteira
///   - Encadeamento narrativo entre quests
///   - Gating por facção / classe / requisitos
///
/// NÃO lida com UI. Apenas lógica.
/// ===============================================================
class QuestStepsEngine {
  final QuestRepository repo;
  final QuestService service;
  final AuthRepo auth;

  QuestStepsEngine({
    required this.repo,
    required this.service,
    required this.auth,
  });

  // -----------------------------------------------------------
  // 🔥 Inicia a quest no primeiro step automaticamente
  // -----------------------------------------------------------
  Future<void> startQuestIfNeeded(QuestInstance inst) async {
    final template = await repo.getTemplateById(inst.questId);
    if (template == null) return;

    // Se não tem steps → não mexe
    if (template.steps.isEmpty) return;

    // Já iniciado?
    if (inst.startedAt != null) return;

    // Inicia a quest + step 1
    final updated = inst.copyWith(
      status: QuestStatus.inProgress,
      startedAt: DateTime.now(),
      stepProgress: {template.steps.first.id: 0},
      completedStepIds: [],
    );

    await repo.updateInstance(updated);
  }

  // -----------------------------------------------------------
  // 🔥 Atualiza progresso de um step
  // -----------------------------------------------------------
  Future<void> addStepProgress({
    required QuestInstance inst,
    required String stepId,
    required int delta,
  }) async {
    final template = await repo.getTemplateById(inst.questId);
    if (template == null) return;

    final step = template.steps.firstWhere(
      (s) => s.id == stepId,
      orElse: () => throw Exception("Step não encontrado: $stepId"),
    );

    final current = inst.stepProgress[stepId] ?? 0;
    final target = step.targetProgress;

    final newValue = (current + delta).clamp(0, target);

    // atualizar stepProgress
    final updatedStepProgress = Map<String, int>.from(inst.stepProgress);
    updatedStepProgress[stepId] = newValue;

    // se completou o step:
    bool completedStep = newValue >= target;

    // atualizar completedStepIds
    final updatedCompleted = List<String>.from(inst.completedStepIds);
    if (completedStep && !updatedCompleted.contains(stepId)) {
      updatedCompleted.add(stepId);
    }

    // aplicar update
    final next = inst.copyWith(
      stepProgress: updatedStepProgress,
      completedStepIds: updatedCompleted,
      lastUpdatedAt: DateTime.now(),
      status: QuestStatus.inProgress,
    );

    await repo.updateInstance(next);

    // se finalizou step → tentar desbloquear próximo step
    if (completedStep) {
      await _unlockNextStep(next, template);
    }
  }

  // -----------------------------------------------------------
  // 🔥 Quando um step termina, esse método desbloqueia o próximo
  // -----------------------------------------------------------
  Future<void> _unlockNextStep(
    QuestInstance inst,
    QuestTemplate template,
  ) async {
    // Pega steps na ordem
    final ordered = [...template.steps]..sort((a, b) => a.orderIndex.compareTo(b.orderIndex));

    // acha primeiro step incompleto
    for (final step in ordered) {
      if (!inst.completedStepIds.contains(step.id)) {
        // desbloqueia esse step
        final newStepProgress = Map<String, int>.from(inst.stepProgress);
        newStepProgress[step.id] = newStepProgress[step.id] ?? 0;

        final updated = inst.copyWith(
          stepProgress: newStepProgress,
          status: QuestStatus.inProgress,
        );

        await repo.updateInstance(updated);
        return;
      }
    }

    // se todos steps concluídos → completar quest
    await service.completeQuest(inst);
    await _unlockNextQuestInChain(template, inst.userId);
  }

  // -----------------------------------------------------------
  // 🔥 Encadeamento entre quests: libera as próximas da chain
  // -----------------------------------------------------------
  Future<void> _unlockNextQuestInChain(
    QuestTemplate completedTemplate,
    String userId,
  ) async {
    // Busca todas templates que dependem da quest concluída
    final all = await repo.getAllTemplates();
    final nextQuests = all.where(
      (q) => q.prerequisiteQuestIds.contains(completedTemplate.id),
    );

    for (final q in nextQuests) {
      // Se já existe instância → não recriar
      final existingInst = await repo.getInstanceByQuest(userId, q.id);
      if (existingInst != null) continue;

      // Cria instância se liberada
      final user = await auth.currentUser;
      if (user == null) continue;
      final u = auth.toDomain(user);

      if (service.isQuestAvailableForUser(q, u)) {
        await service.createInstance(q.id, userId);
      }
    }
  }

  // -----------------------------------------------------------
  // 🔥 Força pular step (admin / GM tool)
  // -----------------------------------------------------------
  Future<void> forceCompleteStep({
    required QuestInstance inst,
    required String stepId,
  }) async {
    final template = await repo.getTemplateById(inst.questId);
    if (template == null) return;

    // marca como concluído
    final updatedStepProgress = Map<String, int>.from(inst.stepProgress);
    updatedStepProgress[stepId] =
        template.steps.firstWhere((s) => s.id == stepId).targetProgress;

    final updatedCompleted = List<String>.from(inst.completedStepIds);
    if (!updatedCompleted.contains(stepId)) {
      updatedCompleted.add(stepId);
    }

    final updated = inst.copyWith(
      stepProgress: updatedStepProgress,
      completedStepIds: updatedCompleted,
    );

    await repo.updateInstance(updated);
    await _unlockNextStep(updated, template);
  }

  // -----------------------------------------------------------
  // 🔥 Reiniciar step (para debugging)
  // -----------------------------------------------------------
  Future<void> resetStep({
    required QuestInstance inst,
    required String stepId,
  }) async {
    final updatedStepProgress = Map<String, int>.from(inst.stepProgress);
    updatedStepProgress[stepId] = 0;

    final updatedCompleted = List<String>.from(inst.completedStepIds);
    updatedCompleted.remove(stepId);

    final updated = inst.copyWith(
      stepProgress: updatedStepProgress,
      completedStepIds: updatedCompleted,
      status: QuestStatus.inProgress,
    );

    await repo.updateInstance(updated);
  }
}
