import 'dart:math' as math;

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../classes/class_definition.dart';
import '../classes/class_branch.dart';
import '../classes/class_config_provider.dart';
import '../../application/auth/auth_providers.dart';
import '../models/user.dart';
import '../models/equipment_model.dart';
import '../models/equipment_provider.dart';
import 'derived_stats.dart';

/// Provider principal dos status derivados (painel "Status de Combate")
final derivedStatsProvider = Provider<DerivedStats>((ref) {
  final user = ref.watch(authStateProvider);
  if (user == null) return DerivedStats.zero;

  // classes vem de um FutureProvider
  final classesAsync = ref.watch(classConfigProvider);
  final classes = classesAsync.asData?.value;
  if (classes == null) return DerivedStats.zero;

  final classeBase = classes[user.classeBaseId];
  if (classeBase == null) return DerivedStats.zero;

  // Branch opcional (ramificação no lvl 20+)
  ClassBranch? branch;
  final branchId = user.classeBranchId;
  if (branchId != null) {
    try {
      branch = classeBase.branches.firstWhere((b) => b.id == branchId);
    } catch (_) {
      branch = null;
    }
  }

  // Itens equipados
  final equipmentSet = ref.watch(equipmentProvider);

  return _computeDerivedStats(
    user: user,
    classe: classeBase,
    branch: branch,
    equipment: equipmentSet,
  );
});

/// ===============================================
///   CÁLCULO DOS STATUS DERIVADOS (SOULSLIKE)
/// ===============================================
DerivedStats _computeDerivedStats({
  required User user,
  required ClassDefinition classe,
  ClassBranch? branch,
  required EquipmentSet equipment,
}) {
  // --------------------------
  //   Atributos brutos do usuário
  // --------------------------
  final f = user.forca.toDouble();
  final d = user.destreza.toDouble();
  final c = user.constituicao.toDouble();
  final i = user.inteligencia.toDouble();
  final e = user.espirito.toDouble();
  final car = user.carisma.toDouble();
  final lvl = user.level.toDouble();

  // --------------------------
  //   Multiplicadores da classe + branch
  //   (baseados no seu JSON de classes)
  // --------------------------
  final classMult = classe.multipliers; // Map<String, num>
  final branchMods = branch?.modifiers ?? <String, num>{};

  double m(String key) => (classMult[key] ?? 0).toDouble();
  double bm(String key) => (branchMods[key] ?? 0).toDouble();
  double mb(String key) => m(key) + bm(key);

  final danoFisicoPct = mb('dano_fisico_pct');   // ex.: Guerreiro, Colosso
  final danoMagicoPct = mb('dano_magico_pct');   // ex.: Mago
  final defesaPct = mb('defesa_pct');
  final defesaMagPct = mb('defesa_mag_pct');
  final esquivaPct = mb('esquiva_pct');
  final velocidadePct = mb('velocidade_pct');
  final critPct = mb('crit_pct');                // chance de crítico extra
  final armorPenPct = mb('armor_pen_pct');       // penetração de armadura
  final xpGainPctClass = mb('xp_gain_pct');
  final goldGainPctClass = mb('gold_gain_pct');
  final manaRegenPctClass = mb('mana_regen_pct');
  final lifeRegenPctClass = mb('hp_regen_pct');

  // --------------------------
  //   Bases numéricas (estilo soulslike)
  //   Números baixos no início, escala forte por atributo.
  // --------------------------
  final baseAtk = f * 3.0 + d * 1.0 + lvl * 0.5;
  final baseDef = c * 3.0 + f * 0.5 + lvl * 0.6;
  final baseMatk = i * 3.0 + e * 1.0 + lvl * 0.5;
  final baseMdef = e * 2.5 + c * 1.0 + lvl * 0.5;
  final baseAgi = d * 2.5 + lvl * 0.4;

  final baseDodge = d * 0.6 + car * 0.3;
  final baseBlock = c * 0.5 + f * 0.2;
  final baseLuck = car * 2.0;

  // --------------------------
  //   Equipamentos agregados
  //   (usa os keys do EquipmentSet.sumStats)
  // --------------------------
  final equipStats = equipment.sumStats();

  int _eInt(String key) => (equipStats[key] ?? 0) as int;
  double _eD(String key) => (equipStats[key] ?? 0).toDouble();

  final equipAtk = _eInt('atk');
  final equipDef = _eInt('def');
  final equipMdef = _eInt('mdef');
  final equipAgi = _eInt('agi');
  final equipMatk = _eInt('mag');
  final equipLuck = _eInt('luck');
  final equipDodge = _eInt('evd');
  final equipBlock = _eInt('blk');
  final equipArmorPen = _eInt('pen');
  final equipLifeSteal = _eInt('ls_pct'); // % de roubo de vida

  final equipXpPct = _eD('xp_pct');              // bônus % XP
  final equipGoldPct = _eD('gold_pct');          // bônus % ouro
  final equipManaRegenPct = _eD('mana_reg');     // regen de mana %
  final equipLifeRegenPct = _eD('hp_reg');       // regen de vida %

  // Crit vindo de itens (se você adicionar essas chaves depois)
  final equipCritRate = _eD('crit_rate');        // em %
  final equipCritDmg = _eD('crit_dmg');          // em %

  // --------------------------
  //   Aplica multiplicadores da classe/branch
  // --------------------------
  final atk =
      baseAtk * (1 + danoFisicoPct) + equipAtk;
  final def =
      baseDef * (1 + defesaPct) + equipDef;
  final mdef =
      baseMdef * (1 + defesaMagPct) + equipMdef;
  final agi =
      baseAgi * (1 + velocidadePct) + equipAgi;
  final matk =
      baseMatk * (1 + danoMagicoPct) + equipMatk;

  final dodge =
      baseDodge * (1 + esquivaPct) + equipDodge;
  final block =
      baseBlock + equipBlock;
  final luck =
      baseLuck + equipLuck;

  final armorPen =
      (armorPenPct * 100.0) + equipArmorPen.toDouble();

  final lifeSteal =
      equipLifeSteal.toDouble(); // % total, por enquanto só item

  // --------------------------
  //   Crítico (chance e dano)
  //   Soulslike: difícil passar de 50–60% sem build dedicada.
  // --------------------------
  double critRate =
      5.0 +                      // base global
      (luck * 0.25) +            // sorte ajuda, mas não explode
      (critPct * 100.0) +        // classe/branch
      equipCritRate;             // itens

  double critDamage =
      150.0 +                    // todo mundo tem 150% base
      (car * 0.2) +              // carisma adiciona um pouco
      equipCritDmg;              // itens

  // clamps para não virar carnaval
  critRate = critRate.clamp(3.0, 80.0);
  critDamage = critDamage.clamp(140.0, 320.0);

  // --------------------------
  //   Ganhos e regen (%)
  // --------------------------
  final xpGainPct =
      (xpGainPctClass * 100.0) +
      equipXpPct +
      (user.disciplineMultiplier * 5.0);

  final goldGainPct =
      (goldGainPctClass * 100.0) +
      equipGoldPct +
      (car * 0.5);

  final manaRegenPct =
      (manaRegenPctClass * 100.0) +
      equipManaRegenPct +
      (e * 0.4);

  final lifeRegenPct =
      (lifeRegenPctClass * 100.0) +
      equipLifeRegenPct +
      (c * 0.3);

  // --------------------------
  //   Poder total (ranking)
  //   Pesos pensados estilo soulslike:
  //   dano e defesa valem mais que luxo (ouro/xp).
  // --------------------------
  final powerTotal = [
    atk * 2.0,
    def * 1.8,
    mdef * 1.7,
    matk * 2.0,
    agi * 1.2,
    dodge * 1.0,
    block * 1.0,
    (armorPen * 0.6),
    (lifeSteal * 1.2),
    (critRate * 2.5),
    (critDamage * 0.6),
  ].fold<double>(0, (p, v) => p + v).round();

  return DerivedStats(
    attack: atk.round(),
    defense: def.round(),
    magicDefense: mdef.round(),
    agility: agi.round(),
    magicDamage: matk.round(),
    dodge: dodge.round(),
    block: block.round(),
    luck: luck.round(),
    lifeSteal: lifeSteal.round(),
    armorPenetration: armorPen.round(),
    critRate: critRate,
    critDamage: critDamage,
    xpGainPct: xpGainPct,
    goldGainPct: goldGainPct,
    manaRegenPct: manaRegenPct,
    lifeRegenPct: lifeRegenPct,
    powerTotal: powerTotal,
  );
}
