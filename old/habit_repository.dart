import 'package:drift/drift.dart';
import '../db/app_db.dart' as db;

/// ===================================================================
/// 🧩 HabitRepository
/// Camada fina em cima do Drift p/ lidar com hábitos
/// ===================================================================
/// Aqui NÃO tem regra de negócio, só CRUD em cima de:
///   - HabitDefinitions
///   - HabitInstances
///
/// Toda regra de:
///   - criar instâncias diárias
///   - dar XP
///   - falhar hábito
///   - integração com Shadow/Quests
/// fica no HabitService.
/// ===================================================================
class HabitRepository {
  final db.AppDatabase _db;

  HabitRepository(this._db);

  // ---------------------------------------------------------------
  // DEFINITIONS (catálogo)
  // ---------------------------------------------------------------

  Future<List<db.HabitDefinition>> getAllDefinitions() {
    return _db.select(_db.habitDefinitions).get();
  }

  Future<db.HabitDefinition?> getDefinitionById(String id) async {
    final query = _db.select(_db.habitDefinitions)
      ..where((tbl) => tbl.id.equals(id));
    return query.getSingleOrNull();
  }

  // ---------------------------------------------------------------
  // INSTANCES (por usuário / dia)
  // ---------------------------------------------------------------

  Future<List<db.HabitInstance>> getInstancesForUserDay(
    String userId,
    int dayKey,
  ) {
    final query = _db.select(_db.habitInstances)
      ..where((tbl) => tbl.userId.equals(userId))
      ..where((tbl) => tbl.dayKey.equals(dayKey));

    return query.get();
  }

  Future<db.HabitInstance?> getInstanceById(String id) async {
    final query = _db.select(_db.habitInstances)
      ..where((tbl) => tbl.id.equals(id));
    return query.getSingleOrNull();
  }

  Future<db.HabitInstance?> getInstanceForHabitDay(
    String userId,
    String habitId,
    int dayKey,
  ) async {
    final query = _db.select(_db.habitInstances)
      ..where((tbl) => tbl.userId.equals(userId))
      ..where((tbl) => tbl.habitId.equals(habitId))
      ..where((tbl) => tbl.dayKey.equals(dayKey));

    return query.getSingleOrNull();
  }

  Future<void> insertInstance(db.HabitInstancesCompanion data) {
    return _db.into(_db.habitInstances).insert(data);
  }

  Future<void> updateInstance(db.HabitInstance instance) {
    return _db.update(_db.habitInstances).replace(instance);
  }

  Future<void> deleteInstance(String id) async {
    await (_db.delete(_db.habitInstances)
          ..where((tbl) => tbl.id.equals(id)))
        .go();
  }

  // ---------------------------------------------------------------
  // EXTRA: apagar instâncias antigas (limpeza)
  // ---------------------------------------------------------------
  Future<int> deleteInstancesBeforeDay(int dayKey) {
    final q = _db.delete(_db.habitInstances)
      ..where((tbl) => tbl.dayKey.isSmallerThanValue(dayKey));
    return q.go();
  }
}
