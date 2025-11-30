import 'dart:convert';

import '../models/item.dart';
import '../models/inventory_item.dart';
import '../../features/items/data/item_repository.dart';
import '../models/user.dart';

/// Serviço parrudo para itens.
/// Conecta o catálogo → inventário → atributos → avatar.
class ItemService {
  final ItemRepository repo;

  ItemService(this.repo);

  // ============================================================
  // 🔹 C A T Á L O G O   B A S E
  // ============================================================

  /// Todos os itens base (catálogo)
  Future<List<Item>> getAllDefinitions() async {
    final all = await repo.getAll();
    return all.map((e) => Item.fromJson(jsonDecode(e.jsonData))).toList();
  }

  /// Item base (catálogo)
  Future<Item?> getItemDefinition(String itemId) async {
    final raw = await repo.getById(itemId);
    if (raw == null) return null;
    return Item.fromJson(jsonDecode(raw.jsonData));
  }

  /// Síncrono — útil para sorting pesado
  Item? getItemDefinitionSync(String itemId) {
    final raw = repo.cache[itemId];
    if (raw == null) return null;
    return Item.fromJson(jsonDecode(raw.jsonData));
  }

  // ============================================================
  // 🔹 I N S T Â N C I A S  (InventoryItem)
  // ============================================================

  /// Criação de instância simples compatível com o modelo atual
  InventoryItem createInstance({
    required Item item,
    required String userId,
  }) {
    return InventoryItem(
      id: "${item.id}_${DateTime.now().millisecondsSinceEpoch}",
      itemId: item.id,
      userId: userId,
      quantity: 1,
      durability: item.durabilityMax,
      equippedSlot: null,
      meta: item.isSombrio
          ? {
              "corruption": 0,
              "awakened": false,
            }
          : null,
    );
  }

  // ============================================================
  // 🔹 R E Q U I S I T O S
  // ============================================================

  bool canEquipUser(Item item, User user) {
    return item.canEquip(user);
  }

  // ============================================================
  // 🔹 A T R I B U T O S
  // ============================================================

  Map<String, num> getFlatStats(Item item) {
    return {
      "forca": item.bonusForca,
      "destreza": item.bonusDestreza,
      "constituicao": item.bonusConstituicao,
      "inteligencia": item.bonusInteligencia,
      "espirito": item.bonusEspirito,
      "carisma": item.bonusCarisma,
    };
  }

  Map<String, double> getPercentStats(Item item) {
    return {
      "forca_pct": item.bonusForcaPct,
      "destreza_pct": item.bonusDestrezaPct,
      "constituicao_pct": item.bonusConstituicaoPct,
      "inteligencia_pct": item.bonusInteligenciaPct,
      "espirito_pct": item.bonusEspiritoPct,
      "carisma_pct": item.bonusCarismaPct,
    };
  }

  // ============================================================
  // 🔹 E F E I T O S  S P E C I A I S
  // ============================================================

  Map<String, dynamic> getEffects(Item item) => item.effects;

  // ============================================================
  // 🔹 P O W E R   S C O R E
  // ============================================================

  int getPowerScore(Item? item) {
    if (item == null) return 0;

    int score = 0;

    // Bônus diretos
    score += item.bonusForca * 3;
    score += item.bonusDestreza * 3;
    score += item.bonusConstituicao * 4;
    score += item.bonusInteligencia * 4;
    score += item.bonusEspirito * 4;
    score += item.bonusCarisma * 2;

    // % bônus
    score += (item.bonusForcaPct * 20).toInt();
    score += (item.bonusDestrezaPct * 20).toInt();
    score += (item.bonusConstituicaoPct * 25).toInt();
    score += (item.bonusInteligenciaPct * 25).toInt();
    score += (item.bonusEspiritoPct * 25).toInt();
    score += (item.bonusCarismaPct * 10).toInt();

    // efeitos especiais valem mais
    if (item.effects.isNotEmpty) {
      score += item.effects.length * 15;
    }

    // raridade altera o multiplicador final
    switch (item.rarity?.toLowerCase()) {
      case "comum":
        score = (score * 1.0).toInt();
        break;
      case "raro":
        score = (score * 1.15).toInt();
        break;
      case "epico":
        score = (score * 1.30).toInt();
        break;
      case "lendario":
        score = (score * 1.50).toInt();
        break;
      case "sombrio":
        score = (score * 1.80).toInt();
        break;
      case "divino":
        score = (score * 2.20).toInt();
        break;
    }

    return score;
  }

  // ============================================================
  // 🔹 F I L T R O S
  // ============================================================

  Future<List<Item>> filterByClass(String classe) async {
    final all = await getAllDefinitions();
    return all.where((i) => i.classes.contains(classe)).toList();
  }

  Future<List<Item>> filterBySlot(String slot) async {
    final all = await getAllDefinitions();
    return all.where((i) => i.slot == slot).toList();
  }

  Future<List<Item>> filterByRarity(String rarity) async {
    final all = await getAllDefinitions();
    return all.where((i) => i.rarity == rarity).toList();
  }

  Future<List<Item>> filterWeapons() async {
    final all = await getAllDefinitions();
    return all.where((i) => i.isWeapon).toList();
  }

  Future<List<Item>> filterArmor() async {
    final all = await getAllDefinitions();
    return all.where((i) => i.isArmor).toList();
  }

  // ============================================================
  // 🔹 C O M P A R A Ç Ã O
  // ============================================================

  int compareItems(Item a, Item b) {
    final pA = getPowerScore(a);
    final pB = getPowerScore(b);
    return pB.compareTo(pA);
  }
}
