class DerivedStats {
  final int attack;
  final int defense;
  final int magicDefense;
  final int agility;
  final int magicDamage;
  final int dodge;
  final int block;
  final int luck;
  final int lifeSteal;
  final int armorPenetration;

  /// Taxa de acerto crítico em %
  final double critRate;

  /// Dano crítico em % (ex: 150 = 150% do dano base)
  final double critDamage;

  /// Bônus de ganho em %
  final double xpGainPct;
  final double goldGainPct;
  final double manaRegenPct;
  final double lifeRegenPct;

  /// Ranking de poder total
  final int powerTotal;

  const DerivedStats({
    required this.attack,
    required this.defense,
    required this.magicDefense,
    required this.agility,
    required this.magicDamage,
    required this.dodge,
    required this.block,
    required this.luck,
    required this.lifeSteal,
    required this.armorPenetration,
    required this.critRate,
    required this.critDamage,
    required this.xpGainPct,
    required this.goldGainPct,
    required this.manaRegenPct,
    required this.lifeRegenPct,
    required this.powerTotal,
  });

  static const zero = DerivedStats(
    attack: 0,
    defense: 0,
    magicDefense: 0,
    agility: 0,
    magicDamage: 0,
    dodge: 0,
    block: 0,
    luck: 0,
    lifeSteal: 0,
    armorPenetration: 0,
    critRate: 0,
    critDamage: 0,
    xpGainPct: 0,
    goldGainPct: 0,
    manaRegenPct: 0,
    lifeRegenPct: 0,
    powerTotal: 0,
  );
}
