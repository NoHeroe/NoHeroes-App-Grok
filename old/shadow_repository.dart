import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../db/app_db.dart';

/// =================================================================
/// 📚 ShadowRepository — Persistência do Shadow System
/// =================================================================
/// Somente DEAL com o banco:
///  - ShadowProfiles
///  - ShadowEvents
///
/// Nenhuma lógica fica aqui.
/// Isso pertence ao ShadowService.
/// =================================================================
class ShadowRepository {
  final AppDatabase db;
  ShadowRepository(this.db);

  // =================================================================
  // 🔥 PERFIL
  // =================================================================

  Future<ShadowProfile> getOrCreateProfile(String userId) async {
    final existing = await (db.select(db.shadowProfiles)
          ..where((tbl) => tbl.userId.equals(userId)))
        .getSingleOrNull();

    if (existing != null) return existing;

    // Criar perfil novo
    final companion = ShadowProfilesCompanion.insert(
      userId: userId,
      archetypeScoresJson: const Value('{}'),
      totalShadowScore: const Value(0),
      dominantArchetypeId: const Value(null),
      crisisLevel: const Value('none'),
      resilienceScore: const Value(50),
      totalNegativeEvents: const Value(0),
      totalPositiveEvents: const Value(0),
      totalCrises: const Value(0),
      totalBreakthroughs: const Value(0),
      metaJson: const Value('{}'),
    );

    await db.into(db.shadowProfiles).insert(companion);

    return await (db.select(db.shadowProfiles)
          ..where((tbl) => tbl.userId.equals(userId)))
        .getSingle();
  }

  Future<void> saveProfile(ShadowProfile profile) async {
    await (db.update(db.shadowProfiles)
          ..where((p) => p.userId.equals(profile.userId)))
        .replace(profile);
  }

  // =================================================================
  // 🔥 EVENTOS
  // =================================================================

  Future<void> insertEvent(ShadowEventsCompanion event) async {
    await db.into(db.shadowEvents).insert(event);
  }

  Future<List<ShadowEvent>> getEventsForUser(
    String userId, {
    int limit = 50,
  }) async {
    final q = db.select(db.shadowEvents)
      ..where((tbl) => tbl.userId.equals(userId))
      ..orderBy([(tbl) => OrderingTerm.desc(tbl.createdAt)])
      ..limit(limit);

    return q.get();
  }

  // =================================================================
  // 🔧 UTILS
  // =================================================================

  Map<String, int> decodeScores(String jsonString) {
    try {
      final map = jsonDecode(jsonString);
      return Map<String, int>.from(map);
    } catch (_) {
      return {};
    }
  }

  String encodeScores(Map<String, int> map) {
    return jsonEncode(map);
  }
}

/// Provider do repositório
final shadowRepositoryProvider = Provider<ShadowRepository>((ref) {
  final db = ref.read(appDatabaseProvider);
  return ShadowRepository(db);
});
