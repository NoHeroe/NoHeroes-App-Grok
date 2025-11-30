import 'dart:math';

import '../../core/constants/enums.dart';
import '../../infrastructure/repositories/quest_repository.dart';
import '../../infrastructure/repositories/auth_repo.dart';
import '../models/quest.dart';
import '../models/user.dart' as domain;

/// ===============================================================
/// ⚫ ShadowEngine
/// ===============================================================
///
/// Responsável por:
///   - Aplicar recompensa/punição específica de Shadow Quests
///   - Atualizar vitalXp, penaltyXp, disciplineMultiplier
///   - Gerenciar buffs/debuffs temporários ligados à sombra
///   - Reagir a eventos internos (relapse, gatilhos, etc.)
///
/// NÃO lida com UI.
/// Deve ser chamado pelo QuestService / usecases de quest.
/// ===============================================================
class ShadowEngine {
  final QuestRepository questRepo;
  final AuthRepo authRepo;

  ShadowEngine({
    required this.questRepo,
    required this.authRepo,
  });

  // -----------------------------------------------------------
  // 🔥 Deve ser chamado quando UMA quest é concluída
  // -----------------------------------------------------------
  Future<void> onQuestCompleted(QuestInstance instance) async {
    final template = await questRepo.getTemplateById(instance.questId);
    if (template == null) return;

    if (!_isShadowQuest(template)) return;

    final dbUser = await authRepo.currentUser;
    if (dbUser == null) return;

    final user = authRepo.toDomain(dbUser);

    final shadowWeight = _getShadowWeight(template);
    final newVitalXp =
        user.vitalXp + max(template.vitalXpReward, 1) * shadowWeight;

    // Sucesso em Shadow reduz penaltyXp
    final newPenaltyXp = max(0, user.penaltyXp - 5 * shadowWeight);

    // Recalcula disciplina com base em streak e penalty
    final newDiscipline = _recalculateDisciplineMultiplier(
      user: user,
      newPenaltyXp: newPenaltyXp,
    );

    // Remove debuffs de sombra antigos e/ou expira rápido
    final cleanedEffects = _cleanShadowEffects(user.temporalEffects);

    final updatedUser = _copyUserWithShadowChanges(
      user,
      vitalXp: newVitalXp,
      penaltyXp: newPenaltyXp,
      disciplineMultiplier: newDiscipline,
      temporalEffects: cleanedEffects,
    );

    await authRepo.saveCurrentUser(updatedUser);
  }

  // -----------------------------------------------------------
  // 🔥 Deve ser chamado quando UMA quest de sombra falha
  // -----------------------------------------------------------
  Future<void> onQuestFailed(QuestInstance instance) async {
    final template = await questRepo.getTemplateById(instance.questId);
    if (template == null) return;

    if (!_isShadowQuest(template)) return;

    final dbUser = await authRepo.currentUser;
    if (dbUser == null) return;

    final user = authRepo.toDomain(dbUser);
    final shadowWeight = _getShadowWeight(template);

    // Punição cresce com o peso da shadow quest
    final newPenaltyXp = user.penaltyXp + 10 * shadowWeight;

    // Debuff temporário: disciplina reduzida
    final List<domain.TemporalEffect> newEffects = [
      ...user.temporalEffects,
      domain.TemporalEffect(
        id: 'shadow_penalty_${DateTime.now().millisecondsSinceEpoch}',
        source: 'shadow',
        targetStat: 'disciplineMultiplier',
        magnitude: -0.05 * shadowWeight, // -5% por peso
        expiresAt: DateTime.now().add(const Duration(days: 1)),
      ),
    ];

    final newDiscipline = _recalculateDisciplineMultiplier(
      user: user,
      newPenaltyXp: newPenaltyXp,
      extraDebuff: _sumShadowDebuffs(newEffects),
    );

    final updatedUser = _copyUserWithShadowChanges(
      user,
      penaltyXp: newPenaltyXp,
      disciplineMultiplier: newDiscipline,
      temporalEffects: newEffects,
    );

    await authRepo.saveCurrentUser(updatedUser);
  }

  // -----------------------------------------------------------
  // 🔥 Eventos de sombra genéricos (relapse, vício, gatilho)
  // -----------------------------------------------------------
  ///
  /// Exemplo de uso:
  ///   shadowEngine.onShadowEvent("relapse_porn", weight: 3);
  ///
  Future<void> onShadowEvent(
    String eventKey, {
    int weight = 1,
  }) async {
    final dbUser = await authRepo.currentUser;
    if (dbUser == null) return;

    final user = authRepo.toDomain(dbUser);

    // Mapeamento simples por agora — pode sofisticar depois
    final normalizedKey = eventKey.toLowerCase();

    int penaltyDelta = 0;
    double debuffMagnitude = 0;

    if (normalizedKey.contains('relapse')) {
      penaltyDelta = 8 * weight;
      debuffMagnitude = -0.04 * weight;
    } else if (normalizedKey.contains('procrast')) {
      penaltyDelta = 5 * weight;
      debuffMagnitude = -0.03 * weight;
    } else if (normalizedKey.contains('rage') ||
        normalizedKey.contains('gasto') ||
        normalizedKey.contains('compuls')) {
      penaltyDelta = 6 * weight;
      debuffMagnitude = -0.035 * weight;
    } else {
      // fallback neutro leve
      penaltyDelta = 3 * weight;
      debuffMagnitude = -0.02 * weight;
    }

    final newPenaltyXp = user.penaltyXp + penaltyDelta;

    final List<domain.TemporalEffect> newEffects = [
      ...user.temporalEffects,
      domain.TemporalEffect(
        id: 'shadow_event_${normalizedKey}_${DateTime.now().millisecondsSinceEpoch}',
        source: 'shadow_event',
        targetStat: 'disciplineMultiplier',
        magnitude: debuffMagnitude,
        expiresAt: DateTime.now().add(const Duration(hours: 12)),
      ),
    ];

    final newDiscipline = _recalculateDisciplineMultiplier(
      user: user,
      newPenaltyXp: newPenaltyXp,
      extraDebuff: _sumShadowDebuffs(newEffects),
    );

    final updatedUser = _copyUserWithShadowChanges(
      user,
      penaltyXp: newPenaltyXp,
      disciplineMultiplier: newDiscipline,
      temporalEffects: newEffects,
    );

    await authRepo.saveCurrentUser(updatedUser);
  }

  // -----------------------------------------------------------
  // 🔍 Helpers de classificação
  // -----------------------------------------------------------
  bool _isShadowQuest(QuestTemplate template) {
    if (template.type == QuestType.shadow) return true;

    // fallback: meta["is_shadow"] == true
    final isShadowMeta = template.meta?['is_shadow'] == true;
    return isShadowMeta;
  }

  int _getShadowWeight(QuestTemplate template) {
    // peso padrão = dificuldade / rank, se não tiver meta explícita
    final metaWeight = template.meta?['shadow_weight'];
    if (metaWeight is int) return metaWeight.clamp(1, 5);

    int base = 1;

    switch (template.difficulty) {
      case QuestDifficulty.veryEasy:
        base = 1;
        break;
      case QuestDifficulty.easy:
        base = 1;
        break;
      case QuestDifficulty.normal:
        base = 2;
        break;
      case QuestDifficulty.hard:
        base = 3;
        break;
      case QuestDifficulty.insane:
        base = 4;
        break;
    }

    switch (template.rank) {
      case QuestRank.E:
      case QuestRank.D:
        base += 0;
        break;
      case QuestRank.C:
      case QuestRank.B:
        base += 1;
        break;
      case QuestRank.A:
      case QuestRank.S:
        base += 2;
        break;
      case null:
        break;
    }

    return base.clamp(1, 5);
  }

  // -----------------------------------------------------------
  // 🧮 Recalcular disciplina
  // -----------------------------------------------------------
  ///
  /// Base:
  ///   - Começa em 1.0
  ///   - +0.02 por 7 dias de streak (capado)
  ///   - -0.01 por 10 penaltyXp (capado)
  ///   - soma debuffs temporários de sombra
  ///   - clamp final entre 0.5 e 2.0
  ///
  double _recalculateDisciplineMultiplier({
    required domain.User user,
    required int newPenaltyXp,
    double extraDebuff = 0.0,
  }) {
    double value = 1.0;

    final streakBlocks = (user.streakDays / 7).floor();
    value += 0.02 * streakBlocks; // até ~0.2 em 70 dias

    final penaltyBlocks = (newPenaltyXp / 10).floor();
    value -= 0.01 * penaltyBlocks; // quanto mais penalty, menor

    // debuffs temporários da sombra
    final debuffFromEffects = _sumShadowDebuffs(user.temporalEffects);
    value += debuffFromEffects + extraDebuff;

    return value.clamp(0.5, 2.0);
  }

  double _sumShadowDebuffs(List<domain.TemporalEffect> effects) {
    final now = DateTime.now();
    double total = 0.0;
    for (final e in effects) {
      if (e.targetStat == 'disciplineMultiplier') {
        if (e.expiresAt == null || e.expiresAt!.isAfter(now)) {
          total += e.magnitude;
        }
      }
    }
    return total;
  }

  // -----------------------------------------------------------
  // 🧹 Limpa / reduz efeitos de sombra antigos
  // -----------------------------------------------------------
  List<domain.TemporalEffect> _cleanShadowEffects(
    List<domain.TemporalEffect> original,
  ) {
    final now = DateTime.now();
    return original.where((e) {
      if (e.source.startsWith('shadow')) {
        // mantém apenas os ainda válidos
        if (e.expiresAt == null) return true;
        return e.expiresAt!.isAfter(now);
      }
      return true;
    }).toList();
  }

  // -----------------------------------------------------------
  // 🧬 Helper para copiar User com alterações de sombra
  // -----------------------------------------------------------
  domain.User _copyUserWithShadowChanges(
    domain.User u, {
    int? vitalXp,
    int? penaltyXp,
    double? disciplineMultiplier,
    List<domain.TemporalEffect>? temporalEffects,
  }) {
    return domain.User(
      // Identidade
      id: u.id,
      nickname: u.nickname,
      email: u.email,
      bio: u.bio,
      avatarPath: u.avatarPath,
      gender: u.gender,
      height: u.height,
      weight: u.weight,
      rank: u.rank,
      classe: u.classe,
      faccao: u.faccao,
      estilo: u.estilo,
      createdAt: u.createdAt,
      birthDate: u.birthDate,

      // Núcleo
      level: u.level,
      xp: u.xp,
      gold: u.gold,
      streakDays: u.streakDays,
      disciplineMultiplier: disciplineMultiplier ?? u.disciplineMultiplier,

      // Avançado
      totalXp: u.totalXp,
      vitalXp: vitalXp ?? u.vitalXp,
      penaltyXp: penaltyXp ?? u.penaltyXp,
      questsCompleted: u.questsCompleted,
      questsFailed: u.questsFailed,
      questsAbandoned: u.questsAbandoned,
      classLevel: u.classLevel,
      classXp: u.classXp,
      branchLevel: u.branchLevel,
      branchXp: u.branchXp,

      // Classe / branch
      classeBaseId: u.classeBaseId,
      classeBranchId: u.classeBranchId,

      // Atributos base
      forca: u.forca,
      destreza: u.destreza,
      constituicao: u.constituicao,
      inteligencia: u.inteligencia,
      espirito: u.espirito,
      carisma: u.carisma,

      // Bônus
      bonusForca: u.bonusForca,
      bonusDestreza: u.bonusDestreza,
      bonusConstituicao: u.bonusConstituicao,
      bonusInteligencia: u.bonusInteligencia,
      bonusEspirito: u.bonusEspirito,
      bonusCarisma: u.bonusCarisma,

      // Totais
      totalForca: u.totalForca,
      totalDestreza: u.totalDestreza,
      totalConstituicao: u.totalConstituicao,
      totalInteligencia: u.totalInteligencia,
      totalEspirito: u.totalEspirito,
      totalCarisma: u.totalCarisma,

      // Buffs / efeitos
      passiveTraits: u.passiveTraits,
      activeBuffs: u.activeBuffs,
      activeDebuffs: u.activeDebuffs,
      temporalEffects: temporalEffects ?? u.temporalEffects,

      // Equip
      equippedSlots: u.equippedSlots,

      // Meta
      isTester: u.isTester,
      isBanned: u.isBanned,
    );
  }
}
