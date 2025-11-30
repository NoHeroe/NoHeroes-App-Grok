import 'package:uuid/uuid.dart';

import '../../infrastructure/repositories/auth_repo.dart';
import '../../infrastructure/repositories/quest_repository.dart';
import '../../infrastructure/repositories/journal_repository.dart';

import '../models/journal.dart';
import 'quest_autocomplete.dart';
import 'shadow_engine.dart';

/// ===============================================================
/// 📔 JournalEngine
/// ===============================================================
///
/// Responsável por:
///   - Criar diário, seções e entradas
///   - Atualizar texto
///   - Emitir eventos para quests de escrita
///   - Integrar reflexões profundas com ShadowEngine
///   - Histórico, busca e estatísticas
///
/// NÃO faz UI. É engine.
/// ===============================================================
class JournalEngine {
  final JournalRepository repo;
  final AuthRepo auth;
  final QuestAutoCompleteEngine questAC;
  final ShadowEngine shadowEngine;

  JournalEngine({
    required this.repo,
    required this.auth,
    required this.questAC,
    required this.shadowEngine,
  });

  final _uuid = const Uuid();

  // ===========================================================
  // 🔥 Criar uma entrada de diário
  // ===========================================================
  Future<JournalEntry> createEntry({
    required String userId,
    required String title,
    String? sectionId,
    String? initialText,
    Map<String, dynamic>? meta,
  }) async {
    final entry = JournalEntry(
      id: _uuid.v4(),
      userId: userId,
      title: title,
      sectionId: sectionId,
      body: initialText ?? '',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      meta: meta,
    );

    await repo.insertEntry(entry);
    return entry;
  }

  // ===========================================================
  // 🔥 Atualizar texto (importante!)
  // ===========================================================
  Future<JournalEntry> updateEntryBody({
    required String entryId,
    required String newBody,
  }) async {
    final entry = await repo.getEntryById(entryId);
    if (entry == null) {
      throw Exception("JournalEntry não existe: $entryId");
    }

    final oldLength = entry.body.length;
    final newLength = newBody.length;

    final deltaChars = (newLength - oldLength).clamp(0, 10000);

    // Converter deltaChars em métricas úteis:
    final deltaLines = _countNewLines(entry.body, newBody);
    final deltaWords = _countNewWords(entry.body, newBody);

    // atualizar no banco
    final updated = entry.copyWith(
      body: newBody,
      updatedAt: DateTime.now(),
    );

    await repo.updateEntry(updated);

    // emitir eventos para QUESTS:
    final userId = entry.userId;

    if (deltaLines > 0) {
      await questAC.onJournalLinesWritten(
        userId: userId,
        lines: deltaLines,
        journalEntryId: entry.id,
        journalSectionId: entry.sectionId,
      );
    }

    if (deltaWords > 0) {
      await questAC.onJournalWordsWritten(
        userId: userId,
        words: deltaWords,
        journalEntryId: entry.id,
      );
    }

    // integração ShadowEngine: reflexões profundas
    if (_looksLikeShadowReflection(newBody)) {
      await shadowEngine.onShadowEvent(
        "deep_reflection",
        weight: 1,
      );
    }

    return updated;
  }

  // ===========================================================
  // 🔥 Criar seção (capítulo do diário)
  // ===========================================================
  Future<JournalSection> createSection({
    required String userId,
    required String name,
    String? description,
  }) async {
    final section = JournalSection(
      id: _uuid.v4(),
      userId: userId,
      name: name,
      description: description,
      createdAt: DateTime.now(),
    );

    await repo.insertSection(section);
    return section;
  }

  // ===========================================================
  // 🔍 Busca global no diário
  // ===========================================================
  Future<List<JournalEntry>> search({
    required String userId,
    required String query,
  }) {
    return repo.searchInEntries(userId, query);
  }

  // ===========================================================
  // 🔥 Métricas do diário
  // ===========================================================
  Future<Map<String, dynamic>> getStats(String userId) async {
    final entries = await repo.getEntries(userId);

    int totalChars = 0;
    int totalWords = 0;
    int totalLines = 0;

    for (final e in entries) {
      totalChars += e.body.length;
      totalWords += _wordCount(e.body);
      totalLines += _lineCount(e.body);
    }

    return {
      "entries": entries.length,
      "chars": totalChars,
      "words": totalWords,
      "lines": totalLines,
    };
  }

  // ===========================================================
  // 🔥 Helpers de processamento de texto
  // ===========================================================
  int _lineCount(String text) {
    return text.split('\n').length;
  }

  int _wordCount(String text) {
    if (text.trim().isEmpty) return 0;
    return text.trim().split(RegExp(r'\s+')).length;
  }

  int _countNewLines(String oldText, String newText) {
    final oldLines = _lineCount(oldText);
    final newLines = _lineCount(newText);
    return (newLines - oldLines).clamp(0, 5000);
  }

  int _countNewWords(String oldText, String newText) {
    final oldWords = _wordCount(oldText);
    final newWords = _wordCount(newText);
    return (newWords - oldWords).clamp(0, 10000);
  }

  // ===========================================================
  // 🔥 Shadow reflection detector (heurístico)
  // ===========================================================
  bool _looksLikeShadowReflection(String text) {
    if (text.length < 120) return false;

    final t = text.toLowerCase();
    return t.contains("eu percebi") ||
        t.contains("medo") ||
        t.contains("culpa") ||
        t.contains("vergonha") ||
        t.contains("me peguei") ||
        t.contains("senti") ||
        t.contains("sombra");
  }
}
