import 'dart:convert';
import 'package:drift/drift.dart';
import '../../../infrastructure/db/app_db.dart' as db;

/// Repositório do catálogo de itens (base).
class ItemRepository {
  final db.AppDatabase _db;

  /// Cache em memória para performance.
  final Map<String, db.Item> cache = {};

  ItemRepository(this._db);

  // ---------------------------------------------------------------
  // 🔥 GET ALL
  // ---------------------------------------------------------------
  Future<List<db.Item>> getAll() async {
    final list = await _db.select(_db.items).get();
    for (var i in list) {
      cache[i.id] = i;
    }
    return list;
  }

  // ---------------------------------------------------------------
  // 🔥 GET BY ID
  // ---------------------------------------------------------------
  Future<db.Item?> getById(String id) async {
    // cache primeiro
    if (cache.containsKey(id)) return cache[id];

    final row = await (_db.select(_db.items)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();

    if (row != null) cache[id] = row;
    return row;
  }

  // ---------------------------------------------------------------
  // 🔥 INSERT OR UPDATE
  // ---------------------------------------------------------------
  Future<void> insertOrUpdate(String id, Map<String, dynamic> json) async {
    final jsonData = jsonEncode(json);

    final existing = await getById(id);

    if (existing == null) {
      // Inserir
      await _db.into(_db.items).insert(
            db.ItemsCompanion.insert(
              id: id,
              jsonData: jsonData,
              version: const Value(1),
            ),
          );
    } else {
      // Atualizar
      await (_db.update(_db.items)
            ..where((tbl) => tbl.id.equals(id)))
          .write(
        db.ItemsCompanion(
          jsonData: Value(jsonData),
          version: Value(existing.version + 1),
        ),
      );
    }

    // Atualiza cache
    final updated = await getById(id);
    if (updated != null) cache[id] = updated;
  }
}
