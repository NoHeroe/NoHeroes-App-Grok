class EquipmentSet {
  /// slots: ex: {"head": itemJson, "chest": itemJson, ...}
  final Map<String, dynamic> slots;

  EquipmentSet(this.slots);

  /// Soma todos os atributos dos itens equipados em um mapa unificado.
  ///
  /// Chaves normalizadas:
  /// atk, def, mdef, agi, matk,
  /// dodge, block, luck,
  /// armor_pen, lifesteal,
  /// crit_rate, crit_dmg,
  /// xp_pct, gold_pct,
  /// mana_regen_pct, life_regen_pct
  Map<String, double> sumStats() {
    final Map<String, double> result = {
      "atk": 0,
      "def": 0,
      "mdef": 0,
      "agi": 0,
      "matk": 0,
      "dodge": 0,
      "block": 0,
      "luck": 0,
      "armor_pen": 0,
      "lifesteal": 0,
      "crit_rate": 0,
      "crit_dmg": 0,
      "xp_pct": 0,
      "gold_pct": 0,
      "mana_regen_pct": 0,
      "life_regen_pct": 0,
    };

    for (final item in slots.values) {
      if (item == null) continue;

      final stats = item['stats'];
      if (stats is! Map) continue;

      stats.forEach((rawKey, rawValue) {
        if (rawValue == null) return;
        final key = _normalizeKey(rawKey.toString());
        if (key == null) return;

        final v = (rawValue as num).toDouble();
        result[key] = (result[key] ?? 0) + v;
      });
    }

    return result;
  }

  /// Normaliza nomes diferentes para uma chave padrão interna.
  String? _normalizeKey(String key) {
    final k = key.toLowerCase();

    if (k == 'atk' || k == 'attack' || k == 'dano' || k == 'dano_fisico') {
      return 'atk';
    }
    if (k == 'def' || k == 'defense' || k == 'defesa') {
      return 'def';
    }
    if (k == 'mdef' || k == 'defesa_mag' || k == 'defesa_magica') {
      return 'mdef';
    }
    if (k == 'agi' || k == 'agility' || k == 'agilidade') {
      return 'agi';
    }
    if (k == 'mag' || k == 'matk' || k == 'magic' || k == 'dano_magico') {
      return 'matk';
    }
    if (k == 'evd' || k == 'dodge' || k == 'esquiva') {
      return 'dodge';
    }
    if (k == 'blk' || k == 'block' || k == 'bloqueio') {
      return 'block';
    }
    if (k == 'luck' || k == 'sorte') {
      return 'luck';
    }
    if (k == 'pen' || k == 'armor_pen' || k == 'penetracao') {
      return 'armor_pen';
    }
    if (k == 'ls_pct' || k == 'lifesteal' || k == 'roubo_vida') {
      return 'lifesteal';
    }
    if (k == 'crit_rate' || k == 'crit' || k == 'critico_chance') {
      return 'crit_rate';
    }
    if (k == 'crit_dmg' || k == 'crit_damage' || k == 'dano_critico') {
      return 'crit_dmg';
    }
    if (k == 'xp_pct' || k == 'xp_bonus') {
      return 'xp_pct';
    }
    if (k == 'gold_pct' || k == 'gold_bonus' || k == 'coins_pct') {
      return 'gold_pct';
    }
    if (k == 'mana_reg' || k == 'mana_regen_pct') {
      return 'mana_regen_pct';
    }
    if (k == 'hp_reg' || k == 'life_regen_pct') {
      return 'life_regen_pct';
    }

    // chave desconhecida -> ignora por enquanto
    return null;
  }
}
