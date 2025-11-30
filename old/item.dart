import 'package:json_annotation/json_annotation.dart';
import '../../core/constants/enums.dart';
import '../../domain/models/user.dart';


part 'item.g.dart';

@JsonSerializable(explicitToJson: true)
class Item {
  final String id;
  final String name;

  /// Rank da missão / dificuldade — E, D, C, B, A, S
  final String? rank;

  /// Raridade textual — comum, raro, místico, lendário, sombrio, divino
  final String? rarity;

    /// Tier interno (para balanceamento avançado)
  @JsonKey(fromJson: itemTierFromJson, toJson: itemTierToJson)
  final ItemTier tier;

  /// Tipo base do item
  @JsonKey(fromJson: itemTypeFromJson, toJson: itemTypeToJson)
  final ItemType type;

  /// Slot real onde equipa:
  /// head, chest, gloves, boots, pants, shoulder, belt, ring,
  /// relic, hand1, hand2, etc.
  final String slot;

  // ================================================================
  // ✔ REQUISITOS (completos)
  // ================================================================

  /// classes que podem equipar (ex: ["guerreiro", "colosso"])
  final List<String> classes;

  /// facções permitidas (null = qualquer)
  final List<String>? faccoes;

  /// estilo permitido: solo, duo, team (null = qualquer)
  final String? requiredStyle;

  /// nível mínimo
  final int? requiredLevel;

  /// atributos mínimos
  final Map<String, int>? requirements;

  // ================================================================
  // ✔ BÔNUS (separados para manter clareza)
  // ================================================================

  /// bônus diretos
  final int bonusForca;
  final int bonusDestreza;
  final int bonusConstituicao;
  final int bonusInteligencia;
  final int bonusEspirito;
  final int bonusCarisma;

  /// bônus percentuais (%)
  final double bonusForcaPct;
  final double bonusDestrezaPct;
  final double bonusConstituicaoPct;
  final double bonusInteligenciaPct;
  final double bonusEspiritoPct;
  final double bonusCarismaPct;

  // ================================================================
  // ✔ EFEITOS complexos (para habilidades passivas / buffs)
  // ================================================================

  /// efeitos extras:
  /// {
  ///   "xp_bonus": 0.05,
  ///   "missao_penalidade_reducao": 0.10,
  ///   "vitalismo_bonus": 20,
  ///   "chance_critico": 0.12,
  /// }
  final Map<String, dynamic> effects;

  // ================================================================
  // ✔ ECONOMIA (itens do app inteiro)
  // ================================================================

  final int? buyPriceCoins;
  final double? buyPriceMoney;

  final bool sellable;
  final bool tradable;
  final bool auctionable;

  /// liga ao pegar (soulbound)
  final bool bindOnPickup;

  // ================================================================
  // ✔ INVENTÁRIO
  // ================================================================

  /// quantas unidades podem empilhar
  final int stackMax;

  /// durabilidade
  final int durabilityMax;

  /// durabilidade atual (somente para itens unitários)
  final int durability;

  // ================================================================
  // ✔ CRAFTING
  // ================================================================

  final bool craftable;
  final List<Map<String, dynamic>> craftRecipe;

  // ================================================================
  // ✔ SOMBRIO / DIVINO
  // ================================================================

  final bool isSombrio;

  /// conteúdo vinculado (pdf, ebook, anime, etc)
  final String? sombrioContentId;

  // ================================================================
  // ✔ VISUAL — ESSENCIAL PARA O AVATAR
  // ================================================================

  /// modelo para avatar 3D (GLTF/GLB)
  final String? meshId;

  /// textura / pacote visual
  final String? visualId;

  // ================================================================
  // ✔ DESCRIÇÃO
  // ================================================================

  final String description;

  /// atributos extras (legado)
  final Map<String, dynamic>? attributes;

  // ================================================================
  // CONSTRUTOR
  // ================================================================

  const Item({
    required this.id,
    required this.name,
    this.rank,
    this.rarity,
    required this.tier,
    required this.type,
    required this.slot,

    /// REQUISITOS
    this.classes = const [],
    this.faccoes,
    this.requiredStyle,
    this.requiredLevel,
    this.requirements,

    /// BÔNUS
    this.bonusForca = 0,
    this.bonusDestreza = 0,
    this.bonusConstituicao = 0,
    this.bonusInteligencia = 0,
    this.bonusEspirito = 0,
    this.bonusCarisma = 0,

    /// BÔNUS %
    this.bonusForcaPct = 0,
    this.bonusDestrezaPct = 0,
    this.bonusConstituicaoPct = 0,
    this.bonusInteligenciaPct = 0,
    this.bonusEspiritoPct = 0,
    this.bonusCarismaPct = 0,

    /// EFEITOS
    this.effects = const {},

    /// ECONOMIA
    this.buyPriceCoins,
    this.buyPriceMoney,
    this.sellable = true,
    this.tradable = true,
    this.auctionable = true,
    this.bindOnPickup = false,

    /// INVENTÁRIO
    required this.stackMax,
    required this.durabilityMax,
    required this.durability,

    /// CRAFTING
    this.craftable = false,
    this.craftRecipe = const [],

    /// SOMBRIO
    this.isSombrio = false,
    this.sombrioContentId,

    /// VISUAL
    this.meshId,
    this.visualId,

    this.description = '',
    this.attributes,
  });

  // ================================================================
  // GETTERS importantes
  // ================================================================

  /// Item é equipável?
  bool get isEquipable =>
      slot.isNotEmpty && type != ItemType.consumable;

  /// Item é arma?
  bool get isWeapon =>
      slot == "hand1" || slot == "hand2";

  /// Item é armadura?
  bool get isArmor =>
      ["head", "chest", "gloves", "boots", "pants", "shoulder"]
          .contains(slot);

  /// Inquebrável (sombrio/divino)
  bool get isIndestructible =>
      rarity == "sombrio" || rarity == "divino";

  /// User pode equipar?
  bool canEquip(User user) {
    // classe
    if (classes.isNotEmpty &&
        !classes.contains(user.classeBaseId)) {
      return false;
    }

    // facção
    if (faccoes != null && faccoes!.isNotEmpty) {
      if (!faccoes!.contains(user.faccao)) return false;
    }

    // estilo
    if (requiredStyle != null &&
        requiredStyle != user.estilo) {
      return false;
    }

    // nível
    if (requiredLevel != null &&
        user.level < requiredLevel!) {
      return false;
    }

    // requisitos por atributo
    if (requirements != null) {
      for (final entry in requirements!.entries) {
        final stat = entry.key;
        final min = entry.value;

        final current = switch (stat) {
          "forca" => user.totalForca,
          "destreza" => user.totalDestreza,
          "constituicao" => user.totalConstituicao,
          "inteligencia" => user.totalInteligencia,
          "espirito" => user.totalEspirito,
          "carisma" => user.totalCarisma,
          _ => 999,
        };

        if (current < min) return false;
      }
    }

    return true;
  }

  // ================================================================
  // JSON
  // ================================================================

  factory Item.fromJson(Map<String, dynamic> json) =>
      _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
// ==================
// ENUM CONVERTERS
// ==================

ItemTier itemTierFromJson(String value) {
  return ItemTier.values.firstWhere(
    (e) => e.toString().split('.').last == value,
    orElse: () => ItemTier.values.first,
  );
}

String itemTierToJson(ItemTier tier) {
  return tier.toString().split('.').last;
}

ItemType itemTypeFromJson(String value) {
  return ItemType.values.firstWhere(
    (e) => e.toString().split('.').last == value,
    orElse: () => ItemType.values.first,
  );
}

String itemTypeToJson(ItemType type) {
  return type.toString().split('.').last;
}

