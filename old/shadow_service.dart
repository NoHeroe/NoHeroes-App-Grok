import 'dart:convert';
import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../infrastructure/repositories/shadow_repository.dart';
import '../../infrastructure/repositories/auth_repo.dart';
import '../../infrastructure/repositories/quest_repository.dart';
import '../models/user.dart';
import '../models/quest.dart';

/// ===============================================================
/// ⚫ SHADOW SERVICE — Versão Final
/// ===============================================================
///
/// - Atualiza ShadowProfile (banco)
/// - Gera ShadowEvents (banco)
/// - Análise textual simples + gatilhos
/// - Spawn de ShadowQuests
/// - Spawn de ShadowBoss
/// - Crise e Breakthrough
///
/// Nada aqui é UI.
/// É só regra.
/// ===============================================================
class ShadowService {
  final ShadowRepository repo;
  final AuthRepo auth;
  final QuestRepository quests;

  final _uuid = const Uuid();

  static const int baseDelta = 5;
  static const int bossThreshold = 40;
  static const int crisisThreshold = 60;
  static const int breakthroughThreshold = -30;

  ShadowService({
    required this.repo,
    required this.auth,
    required this.quests,
  });

  // ===========================================================
  // 🔥 UTIL
  // ===========================================================

  Future<User?> _user() async {
    final dbU = await auth.currentUser;
    if (dbU == null) return null;
    return auth.toDomain(dbU);
  }

  Future<ShadowProfile> _profile(User u) {
    return repo.getProfile(u.id);
  }

  Map<String, int> _decodeScores(String jsonStr) {
    try {
      return Map<String, int>.from(jsonDecode(jsonStr));
    } catch (_) {
      return {};
    }
  }

  String _encodeScores(Map<String, int> m) => jsonEncode(m);

  // ===========================================================
  // 🔥 EVENTOS EXTERNOS (públicos)
  // ===========================================================

  Future<void> registrarFalhaHabito(String habitId) async {
    final user = await _user();
    if (user == null) return;

    await _applyShadow(
      user: user,
      archetype: "disciplina",
      delta: baseDelta,
      sourceType: "habit",
      sourceId: habitId,
      meta: {"reason": "habit_failed"},
    );
  }

  Future<void> registrarEscritaDiario(String text) async {
    final user = await _user();
    if (user == null) return;

    final archetype = _inferArchetypeFromText(text);
    if (archetype == null) return;

    await _applyShadow(
      user: user,
      archetype: archetype,
      delta: baseDelta,
      sourceType: "diary",
      sourceId: "entry",
      meta: {"snippet": text.substring(0, min(40, text.length))},
    );
  }

  Future<void> registrarLeituraInativa(int dias) async {
    final user = await _user();
    if (user == null) return;

    if (dias >= 3) {
      await _applyShadow(
        user: user,
        archetype: "disciplina",
        delta: baseDelta,
        sourceType: "reading",
        sourceId: "progress",
        meta: {"inactiveDays": dias},
      );
    }
  }

  Future<void> registrarQuestFalhada(QuestTemplate q) async {
    final user = await _user();
    if (user == null) return;

    await _applyShadow(
      user: user,
      archetype: q.meta?["shadow_archetype"] ?? "disciplina",
      delta: baseDelta,
      sourceType: "quest",
      sourceId: q.id,
      meta: {"quest_title": q.title},
    );
  }

  // ===========================================================
  // 🔥 DETECTOR SIMPLES DE SOMBRA EM TEXTO
  // ===========================================================

  final Map<String, List<String>> _keywords = {
    "medo": ["medo", "ansioso", "inseguro", "receio"],
    "orgulho": ["melhor que", "não erro", "sou superior"],
    "ira": ["raiva", "ódio", "irritado"],
    "disciplina": ["procrastinei", "depois eu faço", "atrapalhei"],
    "apatia": ["tanto faz", "não ligo", "sem energia"],
  };

  String? _inferArchetypeFromText(String text) {
    final lower = text.toLowerCase();

    for (final entry in _keywords.entries) {
      for (final k in entry.value) {
        if (lower.contains(k)) {
          return entry.key;
        }
      }
    }

    return null;
  }

  // ===========================================================
  // 🔥 APLICAR SOMBRA
  // ===========================================================

  Future<void> _applyShadow({
    required User user,
    required String archetype,
    required int delta,
    required String sourceType,
    required String sourceId,
    Map<String, dynamic>? meta,
  }) async {
    final profile = await _profile(user);

    final scores = _decodeScores(profile.archetypeScoresJson);
    scores[archetype] = (scores[archetype] ?? 0) + delta;

    final total = scores.values.fold(0, (a, b) => a + b);

    final newCrisis = _computeCrisis(total);
    final newDominant = _dominant(scores);

    // salvar no perfil
    final updated = profile.copyWith(
      archetypeScoresJson: _encodeScores(scores),
      totalShadowScore: total,
      crisisLevel: newCrisis,
      dominantArchetypeId: newDominant,
    );

    await repo.saveProfile(updated);

    // inserir evento
    await repo.insertEvent(
      ShadowEventsCompanion.insert(
        id: _uuid.v4(),
        userId: user.id,
        archetypeId: archetype,
        kind: delta >= 0 ? "negative" : "positive",
        sourceType: sourceType,
        sourceId: sourceId,
        delta: delta,
        archetypeScoreAfter: scores[archetype]!,
        totalShadowScoreAfter: total,
        metaJson: Value(jsonEncode(meta ?? {})),
      ),
    );

    // spawn automático?
    await _maybeSpawnShadowQuest(user, archetype, total);
  }

  // ===========================================================
  // 🔥 DECISÕES DE CRISE / BOSS / QUEST
  // ===========================================================

  String _computeCrisis(int total) {
    if (total >= crisisThreshold) return "severe";
    if (total >= bossThreshold) return "moderate";
    if (total >= 20) return "mild";
    return "none";
  }

  String? _dominant(Map<String, int> scores) {
    if (scores.isEmpty) return null;
    final sorted = scores.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    return sorted.first.key;
  }

  Future<void> _maybeSpawnShadowQuest(
      User user, String archetype, int total) async {
    if (total >= bossThreshold) {
      await _spawnBoss(user, archetype);
    } else {
      await _spawnQuest(user, archetype);
    }
  }

  Future<void> _spawnQuest(User user, String archetype) async {
    final all = await quests.getAllTemplates();
    final candidates = all.where((q) =>
        q.type == QuestType.shadow &&
        q.meta?["shadow_archetype"] == archetype &&
        (q.steps.isEmpty));

    if (candidates.isEmpty) return;

    final t = candidates.elementAt(Random().nextInt(candidates.length));

    await quests.insertInstance(
      QuestInstance(
        id: _uuid.v4(),
        userId: user.id,
        questId: t.id,
        status: QuestStatus.available,
        currentProgress: 0,
        targetProgress: t.defaultTargetProgress,
        createdAt: DateTime.now(),
      ),
    );
  }

  Future<void> _spawnBoss(User user, String archetype) async {
    final all = await quests.getAllTemplates();
    final candidates = all.where((q) =>
        q.type == QuestType.shadow &&
        q.meta?["shadow_archetype"] == archetype &&
        q.steps.isNotEmpty);

    if (candidates.isEmpty) return;

    final boss = candidates.elementAt(Random().nextInt(candidates.length));

    await quests.insertInstance(
      QuestInstance(
        id: _uuid.v4(),
        userId: user.id,
        questId: boss.id,
        status: QuestStatus.available,
        currentProgress: 0,
        targetProgress: boss.defaultTargetProgress,
        createdAt: DateTime.now(),
      ),
    );
  }
}

// ===============================================================
// RIVERPOD PROVIDER
// ===============================================================

final shadowServiceProvider = Provider<ShadowService>((ref) {
  final repo = ref.read(shadowRepositoryProvider);
  final auth = ref.read(authRepoProvider);
  final quests = ref.read(questRepositoryProvider);

  return ShadowService(
    repo: repo,
    auth: auth,
    quests: quests,
  );
});
