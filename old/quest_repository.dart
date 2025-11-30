import 'dart:convert';
import 'package:drift/drift.dart';

import '../db/app_db.dart';
import '../../core/constants/enums.dart';
import '../../domain/models/quest.dart';

/// ==============================================================
/// QUEST REPOSITORY (CORRIGIDO)
/// ==============================================================
/// Intermedia:
///  - Domain Models -> Drift Tables
///  - Drift Rows -> Domain Models
/// ==============================================================

class QuestRepository {
  final AppDatabase db;
  QuestRepository(this.db);

  // =============================================================
  // 🔥 TEMPLATE: INSERT
  // =============================================================

  Future<void> insertTemplate(QuestTemplateModel t) async {
    await db.into(db.questTemplates).insert(
      QuestTemplatesCompanion.insert(
        id: t.id,
        title: t.title,
        subtitle: Value(t.subtitle),
        description: t.description,

        origin: t.origin.name,
        createdByUserId: Value(t.createdByUserId),
        isEditable: Value(t.isEditable),
        isDeletable: Value(t.isDeletable),
        isUserScoped: Value(t.isUserScoped),

        type: t.type.name,
        categoriesJson: Value(jsonEncode(
          t.categories.map((e) => e.name).toList(),
        )),
        difficulty: t.difficulty.name,
        rank: Value(t.rank?.name),
        requiredPlayerRank: Value(t.requiredPlayerRank?.name),

        requiredLevel: Value(t.requiredLevel),
        requiredClassIdsJson: Value(jsonEncode(t.requiredClassIds)),
        requiredFactionIdsJson: Value(jsonEncode(t.requiredFactionIds)),
        prerequisiteQuestIdsJson:
            Value(jsonEncode(t.prerequisiteQuestIds)),

        baseXpReward: t.baseXpReward,
        vitalXpReward: t.vitalXpReward,
        penaltyXpOnFail: t.penaltyXpOnFail,
        goldReward: t.goldReward,

        itemRewardIdsJson: Value(jsonEncode(t.itemRewardIds)),
        attributeRewardsJson: Value(jsonEncode(t.attributeRewards ?? {})),
        itemDropChance: Value(t.itemDropChance),
        possibleItemDropsJson:
            Value(jsonEncode(t.possibleItemDrops ?? [])),

        isDaily: Value(t.isDaily),
        isRepeatable: Value(t.isRepeatable),
        maxDailyCompletions: Value(t.maxDailyCompletions),

        availableFrom: Value(t.availableFrom),
        availableUntil: Value(t.availableUntil),

        isCoop: Value(t.isCoop),
        minPartySize: Value(t.minPartySize),
        maxPartySize: Value(t.maxPartySize),

        trackingType: t.trackingType.name,
        trackingUnit: t.trackingUnit.name,
        defaultTargetProgress: t.defaultTargetProgress,

        autoCompleteFromApp: Value(t.autoCompleteFromApp),
        autoCompleteEventKey: Value(t.autoCompleteEventKey),

        linkedContentType: t.linkedContentType.name,
        linkedContentId: Value(t.linkedContentId),
        trackingMetaJson: Value(jsonEncode(t.trackingMeta ?? {})),

        stepsJson:
            Value(jsonEncode(t.steps.map((s) => s.toJson()).toList())),
        metaJson: Value(jsonEncode(t.meta ?? {})),

        autoRewardBySystem: Value(t.autoRewardBySystem),
      ),
    );
  }

  // =============================================================
  // 🔍 TEMPLATE EXISTE?
  // =============================================================
  Future<bool> templateExists(String id) async {
    final row = await (db.select(db.questTemplates)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
    return row != null;
  }

  // =============================================================
  // 🔥 OBTER TODOS TEMPLATES
  // =============================================================
  Future<List<QuestTemplateModel>> getAllTemplates() async {
    final rows = await db.select(db.questTemplates).get();

    return rows.map((r) {
      return QuestTemplateModel(
        id: r.id,
        title: r.title,
        subtitle: r.subtitle,
        description: r.description,

        origin: QuestOrigin.values.byName(r.origin),
        createdByUserId: r.createdByUserId,
        isEditable: r.isEditable,
        isDeletable: r.isDeletable,
        isUserScoped: r.isUserScoped,

        type: QuestType.values.byName(r.type),
        categories: (jsonDecode(r.categoriesJson) as List)
            .map((e) => QuestCategory.values.byName(e))
            .toList(),

        difficulty: QuestDifficulty.values.byName(r.difficulty),
        rank: r.rank != null ? QuestRank.values.byName(r.rank!) : null,
        requiredPlayerRank: r.requiredPlayerRank != null
            ? QuestRank.values.byName(r.requiredPlayerRank!)
            : null,

        requiredLevel: r.requiredLevel,
        requiredClassIds:
            List<String>.from(jsonDecode(r.requiredClassIdsJson)),
        requiredFactionIds:
            List<String>.from(jsonDecode(r.requiredFactionIdsJson)),
        prerequisiteQuestIds:
            List<String>.from(jsonDecode(r.prerequisiteQuestIdsJson)),

        baseXpReward: r.baseXpReward,
        vitalXpReward: r.vitalXpReward,
        penaltyXpOnFail: r.penaltyXpOnFail,
        goldReward: r.goldReward,

        itemRewardIds:
            List<String>.from(jsonDecode(r.itemRewardIdsJson)),
        attributeRewards: Map<String, int>.from(
            jsonDecode(r.attributeRewardsJson)),
        itemDropChance: r.itemDropChance,
        possibleItemDrops:
            List<String>.from(jsonDecode(r.possibleItemDropsJson)),

        isDaily: r.isDaily,
        isRepeatable: r.isRepeatable,
        maxDailyCompletions: r.maxDailyCompletions,
        availableFrom: r.availableFrom,
        availableUntil: r.availableUntil,

        isCoop: r.isCoop,
        minPartySize: r.minPartySize,
        maxPartySize: r.maxPartySize,

        trackingType: QuestTrackingType.values.byName(r.trackingType),
        trackingUnit: QuestMetricUnit.values.byName(r.trackingUnit),
        defaultTargetProgress: r.defaultTargetProgress,

        autoCompleteFromApp: r.autoCompleteFromApp,
        autoCompleteEventKey: r.autoCompleteEventKey,

        linkedContentType:
            QuestContentType.values.byName(r.linkedContentType),
        linkedContentId: r.linkedContentId,
        trackingMeta: jsonDecode(r.trackingMetaJson),

        steps: (jsonDecode(r.stepsJson) as List)
            .map((e) => QuestStepModel.fromJson(e))
            .toList(),

        meta: jsonDecode(r.metaJson),
        autoRewardBySystem: r.autoRewardBySystem,
      );
    }).toList();
  }

  // =============================================================
  // 🔥 INSTÂNCIAS
  // =============================================================

  Future<void> insertInstance(QuestInstanceModel q) async {
    await db.into(db.questInstances).insert(
      QuestInstancesCompanion.insert(
        id: q.id,
        userId: q.userId,
        questId: q.questId,
        status: q.status.name,

        isCustomUserQuest: Value(q.isCustomUserQuest),
        userCustomSlotIndex: Value(q.userCustomSlotIndex),
        userCustomConfigJson:
            Value(jsonEncode(q.userCustomConfig ?? {})),

        currentProgress: Value(q.currentProgress),
        targetProgress: Value(q.targetProgress),
        streakDayRef: Value(q.streakDayRef),

        createdAt: q.createdAt,
        startedAt: Value(q.startedAt),
        completedAt: Value(q.completedAt),
        failedAt: Value(q.failedAt),
        expiresAt: Value(q.expiresAt),
        lastUpdatedAt: Value(q.lastUpdatedAt),

        timesCompleted: Value(q.timesCompleted),

        stepProgressJson: Value(jsonEncode(q.stepProgress)),
        completedStepIdsJson: Value(jsonEncode(q.completedStepIds)),
        resultMetaJson: Value(jsonEncode(q.resultMeta ?? {})),
      ),
    );
  }

  Future<List<QuestInstanceModel>> getUserInstances(String userId) async {
    final result = await (db.select(db.questInstances)
          ..where((tbl) => tbl.userId.equals(userId)))
        .get();

    return result.map((r) {
      return QuestInstanceModel(
        id: r.id,
        userId: r.userId,
        questId: r.questId,
        status: QuestStatus.values.byName(r.status),

        isCustomUserQuest: r.isCustomUserQuest,
        userCustomSlotIndex: r.userCustomSlotIndex,
        userCustomConfig:
            Map<String, dynamic>.from(jsonDecode(r.userCustomConfigJson)),

        currentProgress: r.currentProgress,
        targetProgress: r.targetProgress,
        streakDayRef: r.streakDayRef,

        createdAt: r.createdAt,
        startedAt: r.startedAt,
        completedAt: r.completedAt,
        failedAt: r.failedAt,
        expiresAt: r.expiresAt,
        lastUpdatedAt: r.lastUpdatedAt,

        timesCompleted: r.timesCompleted,

        stepProgress: Map<String, int>.from(jsonDecode(r.stepProgressJson)),
        completedStepIds:
            List<String>.from(jsonDecode(r.completedStepIdsJson)),

        resultMeta: r.resultMetaJson != null
            ? Map<String, dynamic>.from(jsonDecode(r.resultMetaJson))
            : null,
      );
    }).toList();
  }

  Future<void> updateInstance(QuestInstanceModel q) async {
    await (db.update(db.questInstances)
          ..where((tbl) => tbl.id.equals(q.id)))
        .write(
      QuestInstancesCompanion(
        status: Value(q.status.name),
        currentProgress: Value(q.currentProgress),
        targetProgress: Value(q.targetProgress),
        streakDayRef: Value(q.streakDayRef),

        startedAt: Value(q.startedAt),
        completedAt: Value(q.completedAt),
        failedAt: Value(q.failedAt),
        expiresAt: Value(q.expiresAt),
        lastUpdatedAt: Value(q.lastUpdatedAt),

        timesCompleted: Value(q.timesCompleted),
        stepProgressJson: Value(jsonEncode(q.stepProgress)),
        completedStepIdsJson: Value(jsonEncode(q.completedStepIds)),
        resultMetaJson: Value(jsonEncode(q.resultMeta ?? {})),
      ),
    );
  }

  Future<void> deleteInstance(String id) async {
    await (db.delete(db.questInstances)
          ..where((tbl) => tbl.id.equals(id)))
        .go();
  }

  // =============================================================
  // LIMITES DE CUSTOM QUESTS
  // =============================================================

  Future<int> countUserCustomQuests(String userId) async {
    final rows = await (db.select(db.questInstances)
          ..where((tbl) => tbl.userId.equals(userId))
          ..where((tbl) => tbl.isCustomUserQuest.equals(true)))
        .get();
    return rows.length;
  }
}
