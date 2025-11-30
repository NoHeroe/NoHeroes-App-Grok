import 'package:json_annotation/json_annotation.dart';

part 'inventory_item.g.dart';

/// ===============================================================
/// 📦 InventoryItem (DOMÍNIO) — compatível com Inventory (Drift)
/// ===============================================================
/// Representa uma instância do item no inventário.
/// ===============================================================
@JsonSerializable(explicitToJson: true)
class InventoryItem {
  final String id;                 // UUID da instância
  final String itemId;             // ID do item base (catálogo)
  final String userId;             // quem possui

  final int quantity;              // stack
  final int durability;            // durabilidade atual
  final String? equippedSlot;      // null = não equipado

  final bool isIndestructible;     // sombras / divinos
  final DateTime obtainedAt;
  final DateTime? lastUsedAt;
  final DateTime? cooldownEndsAt;

  final List<dynamic> upgradeHistory;  // JSON array
  final Map<String, dynamic>? uniqueData; // JSON map

  const InventoryItem({
    required this.id,
    required this.itemId,
    required this.userId,
    required this.quantity,
    required this.durability,
    required this.equippedSlot,
    required this.isIndestructible,
    required this.obtainedAt,
    required this.lastUsedAt,
    required this.cooldownEndsAt,
    required this.upgradeHistory,
    required this.uniqueData,
  });

  InventoryItem copyWith({
    int? quantity,
    int? durability,
    String? equippedSlot,
    DateTime? lastUsedAt,
    DateTime? cooldownEndsAt,
    List<dynamic>? upgradeHistory,
    Map<String, dynamic>? uniqueData,
  }) {
    return InventoryItem(
      id: id,
      itemId: itemId,
      userId: userId,
      quantity: quantity ?? this.quantity,
      durability: durability ?? this.durability,
      equippedSlot: equippedSlot ?? this.equippedSlot,
      isIndestructible: isIndestructible,
      obtainedAt: obtainedAt,
      lastUsedAt: lastUsedAt ?? this.lastUsedAt,
      cooldownEndsAt: cooldownEndsAt ?? this.cooldownEndsAt,
      upgradeHistory: upgradeHistory ?? this.upgradeHistory,
      uniqueData: uniqueData ?? this.uniqueData,
    );
  }

  factory InventoryItem.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryItemToJson(this);
}
