import 'package:json_annotation/json_annotation.dart';

part 'inventory.g.dart';

@JsonSerializable(explicitToJson: true)
class InventoryItem {
  /// ID único da instância do item.
  /// Pode ser:     itemId_timestamp   ou   UUID
  final String id;

  /// ID do item base (cadastrado no catálogo)
  final String itemId;

  /// Quantidade (stack)
  final int quantity;

  /// Durabilidade atual
  final int durability;

  /// SLOT equipado: head, chest, hand1, relic...
  final String? equippedSlot;

  // --------------------------------------------------------------------
  // 🔥 CAMPOS QUE FALTAVAM NO MODELO — ESSENCIAIS PRA VERSÃO COMPLETA
  // --------------------------------------------------------------------

  /// True → item é inquebrável nesta instância (ex: Sombrio ou Divino)
  final bool isIndestructible;

  /// Data de obtenção (para histórico, conquistas, sorting)
  final DateTime obtainedAt;

  /// Última vez que o item foi usado (consumível, munição, relíquia)
  final DateTime? lastUsedAt;

  /// Cooldown global/restante de uso (ex: relíquias com cooldown)
  final DateTime? cooldownEndsAt;

  /// Histórico de upgrades individuais (ex: "reforged", "+1", "+2")
  final List<String> upgradeHistory;

  /// Instâncias sombrias podem ter propriedades únicas
  final Map<String, dynamic>? uniqueData;

  const InventoryItem({
    required this.id,
    required this.itemId,
    required this.quantity,
    required this.durability,
    this.equippedSlot,

    // novos campos
    required this.isIndestructible,
    required this.obtainedAt,
    this.lastUsedAt,
    this.cooldownEndsAt,
    this.upgradeHistory = const [],
    this.uniqueData,
  });

  // ================================================================
  // COPY
  // ================================================================

  InventoryItem copyWith({
    String? id,
    String? itemId,
    int? quantity,
    int? durability,
    String? equippedSlot,
    bool? isIndestructible,
    DateTime? obtainedAt,
    DateTime? lastUsedAt,
    DateTime? cooldownEndsAt,
    List<String>? upgradeHistory,
    Map<String, dynamic>? uniqueData,
  }) {
    return InventoryItem(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      quantity: quantity ?? this.quantity,
      durability: durability ?? this.durability,
      equippedSlot: equippedSlot ?? this.equippedSlot,
      isIndestructible: isIndestructible ?? this.isIndestructible,
      obtainedAt: obtainedAt ?? this.obtainedAt,
      lastUsedAt: lastUsedAt ?? this.lastUsedAt,
      cooldownEndsAt: cooldownEndsAt ?? this.cooldownEndsAt,
      upgradeHistory: upgradeHistory ?? this.upgradeHistory,
      uniqueData: uniqueData ?? this.uniqueData,
    );
  }

  // ================================================================
  // JSON
  // ================================================================

  factory InventoryItem.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryItemToJson(this);
}
