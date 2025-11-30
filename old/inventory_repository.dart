import 'dart:convert';
import 'package:drift/drift.dart';
import '../db/app_db.dart' as db;

import '../../domain/models/inventory_item.dart';
import '../../domain/models/user.dart';
import '../../domain/models/item.dart';

class InventoryRepository {
  final db.AppDatabase _db;

  InventoryRepository(this._db);

  // ============================================================
  // 📦 CONVERSÕES (Drift → Domain)
  // ============================================================

  InventoryItem _mapRow(db.InventoryData row) {
    return InventoryItem(
      id: row.id,
      itemId: row.itemId,
      userId: "user", // se tiver userId na tabela, coloque aqui
      quantity: row.quantity,
      durability: row.durability,
      equippedSlot: row.equippedSlot,
      isIndestructible: row.isIndestructible,
      obtainedAt: row.obtainedAt,
      lastUsedAt: row.lastUsedAt,
      cooldownEndsAt: row.cooldownEndsAt,
      upgradeHistory: jsonDecode(row.upgradeHistory),
      uniqueData: row.uniqueData != null ? jsonDecode(row.uniqueData!) : null,
    );
  }

  // ============================================================
  // 📦 GETTERS
  // ============================================================

  Future<List<InventoryItem>> getAll() async {
    final rows = await _db.select(_db.inventory).get();
    return rows.map(_mapRow).toList();
  }

  Future<InventoryItem?> getById(String id) async {
    final row = await (_db.select(_db.inventory)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
    return row == null ? null : _mapRow(row);
  }

  Future<InventoryItem?> getByItemId(String itemId) async {
    final row = await (_db.select(_db.inventory)
          ..where((tbl) => tbl.itemId.equals(itemId)))
        .getSingleOrNull();
    return row == null ? null : _mapRow(row);
  }

  // ============================================================
  // ➕ ADICIONAR ITEM
  // ============================================================

  Future<void> addItem(Item item, int quantity) async {
    final existingRow = await getByItemId(item.id);

    if (existingRow != null && item.stackMax > 1) {
      final newQty = (existingRow.quantity + quantity)
          .clamp(1, item.stackMax);

      await (_db.update(_db.inventory)
            ..where((tbl) => tbl.id.equals(existingRow.id)))
          .write(db.InventoryCompanion(
        quantity: Value(newQty),
      ));
      return;
    }

    final idInternal =
        "${item.id}_${DateTime.now().millisecondsSinceEpoch}";

    await _db.into(_db.inventory).insert(
          db.InventoryCompanion.insert(
            id: idInternal,
            itemId: item.id,
            quantity: const Value(1),
            durability: Value(item.durabilityMax),
            equippedSlot: const Value(null),
            isIndestructible: Value(item.isIndestructible),
            obtainedAt: Value(DateTime.now()),
            lastUsedAt: const Value(null),
            cooldownEndsAt: const Value(null),
            upgradeHistory: const Value("[]"),
            uniqueData: Value(item.isSombrio
                ? jsonEncode({"corruption": 0, "awakened": false})
                : null),
          ),
        );
  }

  // ============================================================
  // ➖ REMOVER ITEM
  // ============================================================

  Future<void> removeOne(Item item) async {
    final inv = await getByItemId(item.id);
    if (inv == null) return;

    if (inv.quantity <= 1 || item.stackMax == 1) {
      await (_db.delete(_db.inventory)
            ..where((tbl) => tbl.id.equals(inv.id)))
          .go();
      return;
    }

    await (_db.update(_db.inventory)
          ..where((tbl) => tbl.id.equals(inv.id)))
        .write(
      db.InventoryCompanion(quantity: Value(inv.quantity - 1)),
    );
  }

  // ============================================================
  // 🛡️ EQUIPAR
  // ============================================================

  Future<void> equipItem({
    required User user,
    required Item item,
    required String slot,
    required Future<void> Function(User newUser) onUserUpdated,
  }) async {

    if (!item.isEquipable) {
      throw Exception("Item não é equipável.");
    }

    if (!item.canEquip(user)) {
      throw Exception("Usuário não cumpre requisitos.");
    }

    final newSlots = Map<String, String?>.from(user.equippedSlots);
    newSlots[slot] = item.id;

    final updatedUser = user.copyWith(equippedSlots: newSlots);

    await onUserUpdated(updatedUser);

    await (_db.update(_db.inventory)
          ..where((tbl) => tbl.itemId.equals(item.id)))
        .write(
      db.InventoryCompanion(equippedSlot: Value(slot)),
    );
  }

  // ============================================================
  // ❌ DESEQUIPAR
  // ============================================================

  Future<void> unequipItem({
    required User user,
    required String slot,
    required Future<void> Function(User) onUserUpdated,
  }) async {
    final currentItem = user.equippedSlots[slot];
    if (currentItem == null) return;

    final newSlots = Map<String, String?>.from(user.equippedSlots);
    newSlots[slot] = null;

    await (_db.update(_db.inventory)
          ..where((tbl) => tbl.itemId.equals(currentItem)))
        .write(const db.InventoryCompanion(
      equippedSlot: Value(null),
    ));

    final updated = user.copyWith(equippedSlots: newSlots);
    await onUserUpdated(updated);
  }
}
