import 'dart:convert';
import 'package:flutter/services.dart';

/// Loader parrudo para o catálogo de itens.
/// Permite expansão ilimitada, segurança e validação.
class ItemsLoader {
  static const String mainFile = 'assets/data/items.json';

  /// Arquivos adicionais (DLC, Sombrio, Mithos, Eventos, etc)
  static const List<String> additionalFiles = [
    'assets/data/items_sombrio.json',
    'assets/data/items_evento.json',
  ];

  /// Carrega todos os catálogos disponíveis
  static Future<List<Map<String, dynamic>>> loadJson() async {
    final List<Map<String, dynamic>> results = [];

    // -------------------------------------------------------------
    // 1. Carrega o catálogo principal
    // -------------------------------------------------------------
    try {
      final base = await _loadFile(mainFile);
      results.addAll(base);
    } catch (e) {
      print("[ItemsLoader][FATAL] Falha ao carregar catálogo principal:");
      print("→ $e");
      return [];
    }

    // -------------------------------------------------------------
    // 2. Carrega catálogos adicionais (se existirem)
    // -------------------------------------------------------------
    for (final file in additionalFiles) {
      try {
        final extra = await _loadFile(file);
        results.addAll(extra);
        print("[ItemsLoader] Catálogo extra carregado: $file");
      } catch (_) {
        // Esse arquivo é opcional – apenas ignoramos se não existir
        continue;
      }
    }

    // -------------------------------------------------------------
    // 3. Normalização geral
    // -------------------------------------------------------------
    final normalized = results.map(_normalizeItem).toList();

    // -------------------------------------------------------------
    // 4. Verificação de duplicidade de IDs
    // -------------------------------------------------------------
    final idSet = <String>{};
    final duplicates = <String>[];

    for (final item in normalized) {
      final id = item["id"];
      if (idSet.contains(id)) duplicates.add(id);
      idSet.add(id);
    }

    if (duplicates.isNotEmpty) {
      print("[ItemsLoader][WARN] Itens duplicados encontrados:");
      for (final id in duplicates) {
        print(" → $id");
      }
    }

    return normalized;
  }

  // =============================================================
  // 🔹 Carrega arquivo único
  // =============================================================
  static Future<List<Map<String, dynamic>>> _loadFile(String file) async {
    final raw = await rootBundle.loadString(file);
    final decoded = jsonDecode(raw);

    if (decoded is Map && decoded.containsKey("items")) {
      final list = decoded["items"];
      if (list is List) {
        return list.cast<Map<String, dynamic>>();
      }
    }

    throw Exception("Estrutura inválida em $file");
  }

  // =============================================================
  // 🔹 Normalização do item antes de salvar no DB
  // =============================================================
  static Map<String, dynamic> _normalizeItem(Map<String, dynamic> j) {
    // Garante que todos os campos existam, mesmo se 0 ou vazio

    return {
      "id": j["id"] ?? "",
      "name": j["name"] ?? "Sem Nome",

      "rank": j["rank"] ?? "E",
      "rarity": j["rarity"] ?? "comum",

      "tier": j["tier"] ?? 1,
      "type": j["type"] ?? "equip",

      "slot": j["slot"] ?? "",

      "classes": j["classes"] ?? [],
      "faccoes": j["faccoes"] ?? [],
      "requiredStyle": j["requiredStyle"],
      "requiredLevel": j["requiredLevel"],
      "requirements": j["requirements"] ?? {},

      "stats": j["stats"] ?? {},
      "effects": j["effects"] ?? {},

      "bonusForca": j["bonusForca"] ?? 0,
      "bonusDestreza": j["bonusDestreza"] ?? 0,
      "bonusConstituicao": j["bonusConstituicao"] ?? 0,
      "bonusInteligencia": j["bonusInteligencia"] ?? 0,
      "bonusEspirito": j["bonusEspirito"] ?? 0,
      "bonusCarisma": j["bonusCarisma"] ?? 0,

      "bonusForcaPct": j["bonusForcaPct"] ?? 0.0,
      "bonusDestrezaPct": j["bonusDestrezaPct"] ?? 0.0,
      "bonusConstituicaoPct": j["bonusConstituicaoPct"] ?? 0.0,
      "bonusInteligenciaPct": j["bonusInteligenciaPct"] ?? 0.0,
      "bonusEspiritoPct": j["bonusEspiritoPct"] ?? 0.0,
      "bonusCarismaPct": j["bonusCarismaPct"] ?? 0.0,

      "buyPriceCoins": j["buyPriceCoins"] ?? 0,
      "buyPriceMoney": j["buyPriceMoney"] ?? 0.0,
      "sellable": j["sellable"] ?? true,
      "tradable": j["tradable"] ?? true,
      "auctionable": j["auctionable"] ?? true,
      "bindOnPickup": j["bindOnPickup"] ?? false,

      "stackMax": j["stackMax"] ?? 1,
      "durabilityMax": j["durabilityMax"] ?? 100,
      "durability": j["durability"] ?? 100,

      "craftable": j["craftable"] ?? false,
      "craftRecipe": j["craftRecipe"] ?? [],

      "isSombrio": j["isSombrio"] ?? false,
      "sombrioContentId": j["sombrioContentId"],

      "meshId": j["meshId"],
      "visualId": j["visualId"],

      "description": j["description"] ?? "",
      "attributes": j["attributes"] ?? {},
    };
  }
}
