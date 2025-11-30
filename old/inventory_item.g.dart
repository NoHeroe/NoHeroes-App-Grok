// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryItem _$InventoryItemFromJson(Map<String, dynamic> json) =>
    InventoryItem(
      id: json['id'] as String,
      itemId: json['itemId'] as String,
      userId: json['userId'] as String,
      quantity: (json['quantity'] as num).toInt(),
      durability: (json['durability'] as num).toInt(),
      equippedSlot: json['equippedSlot'] as String?,
      isIndestructible: json['isIndestructible'] as bool,
      obtainedAt: DateTime.parse(json['obtainedAt'] as String),
      lastUsedAt: json['lastUsedAt'] == null
          ? null
          : DateTime.parse(json['lastUsedAt'] as String),
      cooldownEndsAt: json['cooldownEndsAt'] == null
          ? null
          : DateTime.parse(json['cooldownEndsAt'] as String),
      upgradeHistory: json['upgradeHistory'] as List<dynamic>,
      uniqueData: json['uniqueData'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$InventoryItemToJson(InventoryItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemId': instance.itemId,
      'userId': instance.userId,
      'quantity': instance.quantity,
      'durability': instance.durability,
      'equippedSlot': instance.equippedSlot,
      'isIndestructible': instance.isIndestructible,
      'obtainedAt': instance.obtainedAt.toIso8601String(),
      'lastUsedAt': instance.lastUsedAt?.toIso8601String(),
      'cooldownEndsAt': instance.cooldownEndsAt?.toIso8601String(),
      'upgradeHistory': instance.upgradeHistory,
      'uniqueData': instance.uniqueData,
    };
