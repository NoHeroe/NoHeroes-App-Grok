// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
  id: json['id'] as String,
  name: json['name'] as String,
  rank: json['rank'] as String?,
  rarity: json['rarity'] as String?,
  tier: itemTierFromJson(json['tier'] as String),
  type: itemTypeFromJson(json['type'] as String),
  slot: json['slot'] as String,
  classes:
      (json['classes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  faccoes: (json['faccoes'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  requiredStyle: json['requiredStyle'] as String?,
  requiredLevel: (json['requiredLevel'] as num?)?.toInt(),
  requirements: (json['requirements'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toInt()),
  ),
  bonusForca: (json['bonusForca'] as num?)?.toInt() ?? 0,
  bonusDestreza: (json['bonusDestreza'] as num?)?.toInt() ?? 0,
  bonusConstituicao: (json['bonusConstituicao'] as num?)?.toInt() ?? 0,
  bonusInteligencia: (json['bonusInteligencia'] as num?)?.toInt() ?? 0,
  bonusEspirito: (json['bonusEspirito'] as num?)?.toInt() ?? 0,
  bonusCarisma: (json['bonusCarisma'] as num?)?.toInt() ?? 0,
  bonusForcaPct: (json['bonusForcaPct'] as num?)?.toDouble() ?? 0,
  bonusDestrezaPct: (json['bonusDestrezaPct'] as num?)?.toDouble() ?? 0,
  bonusConstituicaoPct: (json['bonusConstituicaoPct'] as num?)?.toDouble() ?? 0,
  bonusInteligenciaPct: (json['bonusInteligenciaPct'] as num?)?.toDouble() ?? 0,
  bonusEspiritoPct: (json['bonusEspiritoPct'] as num?)?.toDouble() ?? 0,
  bonusCarismaPct: (json['bonusCarismaPct'] as num?)?.toDouble() ?? 0,
  effects: json['effects'] as Map<String, dynamic>? ?? const {},
  buyPriceCoins: (json['buyPriceCoins'] as num?)?.toInt(),
  buyPriceMoney: (json['buyPriceMoney'] as num?)?.toDouble(),
  sellable: json['sellable'] as bool? ?? true,
  tradable: json['tradable'] as bool? ?? true,
  auctionable: json['auctionable'] as bool? ?? true,
  bindOnPickup: json['bindOnPickup'] as bool? ?? false,
  stackMax: (json['stackMax'] as num).toInt(),
  durabilityMax: (json['durabilityMax'] as num).toInt(),
  durability: (json['durability'] as num).toInt(),
  craftable: json['craftable'] as bool? ?? false,
  craftRecipe:
      (json['craftRecipe'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList() ??
      const [],
  isSombrio: json['isSombrio'] as bool? ?? false,
  sombrioContentId: json['sombrioContentId'] as String?,
  meshId: json['meshId'] as String?,
  visualId: json['visualId'] as String?,
  description: json['description'] as String? ?? '',
  attributes: json['attributes'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'rank': instance.rank,
  'rarity': instance.rarity,
  'tier': itemTierToJson(instance.tier),
  'type': itemTypeToJson(instance.type),
  'slot': instance.slot,
  'classes': instance.classes,
  'faccoes': instance.faccoes,
  'requiredStyle': instance.requiredStyle,
  'requiredLevel': instance.requiredLevel,
  'requirements': instance.requirements,
  'bonusForca': instance.bonusForca,
  'bonusDestreza': instance.bonusDestreza,
  'bonusConstituicao': instance.bonusConstituicao,
  'bonusInteligencia': instance.bonusInteligencia,
  'bonusEspirito': instance.bonusEspirito,
  'bonusCarisma': instance.bonusCarisma,
  'bonusForcaPct': instance.bonusForcaPct,
  'bonusDestrezaPct': instance.bonusDestrezaPct,
  'bonusConstituicaoPct': instance.bonusConstituicaoPct,
  'bonusInteligenciaPct': instance.bonusInteligenciaPct,
  'bonusEspiritoPct': instance.bonusEspiritoPct,
  'bonusCarismaPct': instance.bonusCarismaPct,
  'effects': instance.effects,
  'buyPriceCoins': instance.buyPriceCoins,
  'buyPriceMoney': instance.buyPriceMoney,
  'sellable': instance.sellable,
  'tradable': instance.tradable,
  'auctionable': instance.auctionable,
  'bindOnPickup': instance.bindOnPickup,
  'stackMax': instance.stackMax,
  'durabilityMax': instance.durabilityMax,
  'durability': instance.durability,
  'craftable': instance.craftable,
  'craftRecipe': instance.craftRecipe,
  'isSombrio': instance.isSombrio,
  'sombrioContentId': instance.sombrioContentId,
  'meshId': instance.meshId,
  'visualId': instance.visualId,
  'description': instance.description,
  'attributes': instance.attributes,
};
