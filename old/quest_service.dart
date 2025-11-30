import 'dart:math';
import 'package:uuid/uuid.dart';
import 'package:event_bus/event_bus.dart';

import '../../infrastructure/repositories/quest_repository.dart';
import '../../infrastructure/repositories/auth_repo.dart';
import '../../infrastructure/repositories/inventory_repository.dart';

import '../models/quest.dart';
import '../models/user.dart';
import '../events/quest_events.dart';

/// ===============================================================
/// ⚔️ QuestService — Engine de Regras das Quests
/// ===============================================================
/// Responsável por:
///   - liberar quests
///   - criar instâncias
///   - criar quests personalizadas
///   - atualizar progresso
///   - completar / falhar
///   - aplicar recompensas
///   - integrar Shadow System via EventBus
///
/// Esse serviço NÃO cuida da UI.
/// ===============================================================
class QuestService {
  final QuestRepository repo;
  final AuthRepo auth;
  final InventoryRepository inventory;

  /// 🔥 NOVO: ponte com o ShadowSystem e outros sistemas
  final EventBus bus;

  QuestService({
    required this.repo,
    required this.auth,
    required this.inventory,
    required this.bus, // 🔥 obrigatório
  });

  // ==============================================================  
  //  🔥 UTILITÁRIOS BÁSICOS
  // ==============================================================

  DateTime _now() => DateTime.now();

  int _todayInt() {
    final n = _now();
    return n.year * 10000 + n.month * 100 + n.day;
  }

  String _uuid() => const Uuid().v4();

  // ==============================================================  
  //  🔥 VERIFICA SE QUEST ESTÁ LIBERADA PARA O USER
  // ==============================================================

  bool isQuestAvailableForUser(QuestTemplate q, User u) {
    // nível
    if (q.requiredLevel != null && u.level < q.requiredLevel!) {
      return false;
    }

    // rank
    if (q.requiredPlayerRank != null) {
      if (u.rank == null) return false;
      if (u.rank!.toUpperCase() != q.requiredPlayerRank!.name) return false;
    }

    // classe
    if (q.requiredClassIds.isNotEmpty) {
      if (!q.requiredClassIds.contains(u.classeBaseId)) {
        return false;
      }
    }

    // facção
    if (q.requiredFactionIds.isNotEmpty) {
      if (u.faccao == null) return false;
      if (!q.requiredFactionIds.contains(u.faccao)) return false;
    }

    // janela de evento
    if (q.availableFrom != null && _now().isBefore(q.availableFrom!)) {
      return false;
    }
    if (q.availableUntil != null && _now().isAfter(q.availableUntil!)) {
      return false;
    }

    return true;
  }

  // ==============================================================  
  //  🔥 CRIAR INSTÂNCIA
  // ==============================================================

  Future<QuestInstance?> createInstance(String questId, String userId) async {
    final templates = await repo.getAllTemplates();
    final template = templates.firstWhere(
      (t) => t.id == questId,
      orElse: () => throw Exception("QuestTemplate não encontrado: $questId"),
    );

    // validar usuário
    final dbUser = await auth.currentUser;
    if (dbUser == null) return null;
    final u = auth.toDomain(dbUser);

    if (!isQuestAvailableForUser(template, u)) {
      return null;
    }

    final inst = QuestInstance(
      id: _uuid(),
      userId: userId,
      questId: questId,
      status: QuestStatus.available,
      isCustomUserQuest: false,
      currentProgress: 0,
      targetProgress: template.defaultTargetProgress,
      streakDayRef: template.isDaily ? _todayInt() : null,
      createdAt: _now(),
    );

    await repo.insertInstance(inst);
    return inst;
  }

  // ==============================================================  
  //  🔥 CRIAR QUEST CUSTOMIZADA (LIMITE 5)
  // ==============================================================

  Future<QuestInstance?> createCustomQuest({
    required String userId,
    required String title,
    required String description,
    required int targetProgress,
  }) async {
    // limite
    final count = await repo.countUserCustomQuests(userId);
    if (count >= 5) return null;

    // template ad-hoc
    final templateId = "custom_${userId}_${_uuid()}";

    final template = QuestTemplate(
      id: templateId,
      title: title,
      subtitle: null,
      description: description,
      origin: QuestOrigin.userCustom,
      createdByUserId: userId,
      isEditable: true,
      isDeletable: true,
      isUserScoped: true,
      type: QuestType.customUser,
      categories: const [],
      difficulty: QuestDifficulty.normal,
      rank: null,
      requiredPlayerRank: null,
      requiredLevel: null,
      requiredClassIds: const [],
      requiredFactionIds: const [],
      prerequisiteQuestIds: const [],
      baseXpReward: 0,
      vitalXpReward: 0,
      penaltyXpOnFail: 0,
      goldReward: 0,
      itemRewardIds: const [],
      attributeRewards: const {},
      steps: const [],
      defaultTargetProgress: targetProgress,
      trackingType: QuestTrackingType.manual,
      trackingUnit: QuestMetricUnit.none,
      autoRewardBySystem: true,
    );

    await repo.insertTemplate(template);

    // instância
    final inst = QuestInstance(
      id: _uuid(),
      userId: userId,
      questId: templateId,
      status: QuestStatus.available,
      isCustomUserQuest: true,
      userCustomSlotIndex: count,
      userCustomConfig: {"title": title, "desc": description},
      currentProgress: 0,
      targetProgress: targetProgress,
      createdAt: _now(),
    );

    await repo.insertInstance(inst);
    return inst;
  }

  // ==============================================================  
  //  🔥 ATUALIZAR PROGRESSO
  // ==============================================================

  Future<QuestInstance> updateProgress(
      QuestInstance inst, int amount) async {
    int newValue = inst.currentProgress + amount;
    if (newValue < 0) newValue = 0;
    if (newValue > inst.targetProgress) newValue = inst.targetProgress;

    final updated = inst.copyWith(
      currentProgress: newValue,
      lastUpdatedAt: _now(),
      startedAt: inst.startedAt ?? _now(),
      status: newValue >= inst.targetProgress
          ? QuestStatus.completed
          : QuestStatus.inProgress,
    );

    await repo.updateInstance(updated);

    // COMPLETOU → dispara recompensa
    if (updated.status == QuestStatus.completed) {
      await completeQuest(updated);
    }

    return updated;
  }

  // ==============================================================  
  //  🔥 COMPLETAR QUEST
  // ==============================================================

  Future<void> completeQuest(QuestInstance inst) async {
    final templates = await repo.getAllTemplates();
    final template =
        templates.firstWhere((t) => t.id == inst.questId);

    final dbUser = await auth.currentUser;
    if (dbUser == null) return;
    var user = auth.toDomain(dbUser);

    // 1) XP
    user = user.copyWithTotals();
    final int xp = template.baseXpReward;
    final int vxp = template.vitalXpReward;

    int newXp = user.xp + xp;
    int newVital = user.vitalXp + vxp;
    int newTotalXp = user.totalXp + xp + vxp;

    // level up
    int levelUps = 0;
    int xpRequired = user.level * 100;

    while (newXp >= xpRequired) {
      newXp -= xpRequired;
      levelUps++;
      xpRequired = (user.level + levelUps) * 100;
    }

    // 2) gold
    final int newGold = user.gold + template.goldReward;

    // 3) atributos
    Map<String, int> attrs = template.attributeRewards ?? {};
    int f = user.forca + (attrs["forca"] ?? 0);
    int d = user.destreza + (attrs["destreza"] ?? 0);
    int c = user.constituicao + (attrs["constituicao"] ?? 0);
    int i = user.inteligencia + (attrs["inteligencia"] ?? 0);
    int e = user.espirito + (attrs["espirito"] ?? 0);
    int ca = user.carisma + (attrs["carisma"] ?? 0);

    // 4) DROPS
    if (template.possibleItemDrops != null &&
        template.itemDropChance != null) {
      final chance = template.itemDropChance!;
      if (Random().nextDouble() <= chance) {
        final dropList = template.possibleItemDrops!;
        if (dropList.isNotEmpty) {
          final dropped = dropList[Random().nextInt(dropList.length)];
          await inventory.addItem(dropped, quantity: 1);
        }
      }
    }

    for (final itemId in template.itemRewardIds) {
      await inventory.addItem(itemId, quantity: 1);
    }

    // 5) SALVAR USER
    final updatedUser = user.copyWith(
      xp: newXp,
      vitalXp: newVital,
      totalXp: newTotalXp,
      gold: newGold,
      level: user.level + levelUps,
      forca: f,
      destreza: d,
      constituicao: c,
      inteligencia: i,
      espirito: e,
      carisma: ca,
    );

    await auth.saveCurrentUser(updatedUser);

    // 6) MARCAR INSTÂNCIA
    final instDone = inst.copyWith(
      status: QuestStatus.completed,
      completedAt: _now(),
      lastUpdatedAt: _now(),
      timesCompleted: inst.timesCompleted + 1,
    );

    await repo.updateInstance(instDone);

    // 🔥 7) DISPARAR EVENTO PARA O SHADOW SYSTEM
    bus.fire(QuestCompletedEvent(instDone));
  }

  // ==============================================================  
  //  🔥 FALHAR QUEST
  // ==============================================================

  Future<void> failQuest(QuestInstance inst) async {
    final templates = await repo.getAllTemplates();
    final template =
        templates.firstWhere((t) => t.id == inst.questId);

    final dbUser = await auth.currentUser;
    if (dbUser == null) return;
    var user = auth.toDomain(dbUser);

    // penaltyXp
    int newPenalty = user.penaltyXp + template.penaltyXpOnFail;

    final updatedUser = user.copyWith(
      penaltyXp: newPenalty,
    );

    await auth.saveCurrentUser(updatedUser);

    // marcar instância
    final updated = inst.copyWith(
      status: QuestStatus.failed,
      failedAt: _now(),
      lastUpdatedAt: _now(),
    );

    await repo.updateInstance(updated);

    // 🔥 NOTIFICAR O SHADOW SYSTEM
    bus.fire(QuestFailedEvent(updated));
  }
}
