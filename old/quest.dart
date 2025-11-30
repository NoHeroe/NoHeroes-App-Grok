import 'package:json_annotation/json_annotation.dart';
import '../../core/constants/enums.dart';

part 'quest.g.dart';

/// ===============================================================
/// STEP MODEL
/// ===============================================================
@JsonSerializable(explicitToJson: true)
class QuestStepModel {
  final String id;
  final String title;
  final String? description;
  final int orderIndex;
  final int targetProgress;
  final bool optional;
  final Map<String, dynamic>? meta;

  const QuestStepModel({
    required this.id,
    required this.title,
    this.description,
    this.orderIndex = 0,
    this.targetProgress = 1,
    this.optional = false,
    this.meta,
  });

  factory QuestStepModel.fromJson(Map<String, dynamic> json) =>
      _$QuestStepModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestStepModelToJson(this);
}

/// ===============================================================
/// TEMPLATE MODEL (modelo de domínio, NÃO é o do Drift)
/// ===============================================================
@JsonSerializable(explicitToJson: true)
class QuestTemplateModel {
  final String id;
  final String title;
  final String? subtitle;
  final String description;

  // ORIGEM
  final QuestOrigin origin;
  final String? createdByUserId;
  final bool isEditable;
  final bool isDeletable;
  final bool isUserScoped;

  // CLASSIFICAÇÃO
  final QuestType type;
  final List<QuestCategory> categories;
  final QuestDifficulty difficulty;
  final QuestRank? rank;
  final QuestRank? requiredPlayerRank;

  // REQUISITOS
  final int? requiredLevel;
  final List<String> requiredClassIds;
  final List<String> requiredFactionIds;
  final List<String> prerequisiteQuestIds;

  // RECOMPENSAS
  final int baseXpReward;
  final int vitalXpReward;
  final int penaltyXpOnFail;
  final int goldReward;
  final List<String> itemRewardIds;

  // RECOMPENSAS AVANÇADAS
  final Map<String, int>? attributeRewards;
  final double? itemDropChance;
  final List<String>? possibleItemDrops;

  // RECORRÊNCIA / DAILY
  final bool isDaily;
  final bool isRepeatable;
  final int? maxDailyCompletions;
  final DateTime? availableFrom;
  final DateTime? availableUntil;

  // COOP
  final bool isCoop;
  final int? minPartySize;
  final int? maxPartySize;

  // TRACKING
  final QuestTrackingType trackingType;
  final QuestMetricUnit trackingUnit;
  final int defaultTargetProgress;
  final bool autoCompleteFromApp;
  final String? autoCompleteEventKey;

  final QuestContentType linkedContentType;
  final String? linkedContentId;
  final Map<String, dynamic>? trackingMeta;

  // STEPS
  final List<QuestStepModel> steps;

  // META
  final Map<String, dynamic>? meta;

  // CUSTOM QUESTS
  final bool autoRewardBySystem;

  const QuestTemplateModel({
    required this.id,
    required this.title,
    this.subtitle,
    required this.description,

    required this.origin,
    this.createdByUserId,
    this.isEditable = false,
    this.isDeletable = false,
    this.isUserScoped = false,

    required this.type,
    this.categories = const [],
    this.difficulty = QuestDifficulty.normal,
    this.rank,
    this.requiredPlayerRank,
    this.requiredLevel,
    this.requiredClassIds = const [],
    this.requiredFactionIds = const [],
    this.prerequisiteQuestIds = const [],

    this.baseXpReward = 0,
    this.vitalXpReward = 0,
    this.penaltyXpOnFail = 0,
    this.goldReward = 0,
    this.itemRewardIds = const [],
    this.attributeRewards,
    this.itemDropChance,
    this.possibleItemDrops,

    this.isDaily = false,
    this.isRepeatable = true,
    this.maxDailyCompletions,
    this.availableFrom,
    this.availableUntil,

    this.isCoop = false,
    this.minPartySize,
    this.maxPartySize,

    this.trackingType = QuestTrackingType.manual,
    this.trackingUnit = QuestMetricUnit.none,
    this.defaultTargetProgress = 1,
    this.autoCompleteFromApp = false,
    this.autoCompleteEventKey,
    this.linkedContentType = QuestContentType.none,
    this.linkedContentId,
    this.trackingMeta,

    this.steps = const [],
    this.meta,
    this.autoRewardBySystem = false,
  });

  factory QuestTemplateModel.fromJson(Map<String, dynamic> json) =>
      _$QuestTemplateModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestTemplateModelToJson(this);
}

/// ===============================================================
/// INSTANCE MODEL (modelo de domínio, NÃO é o do Drift)
/// ===============================================================
@JsonSerializable(explicitToJson: true)
class QuestInstanceModel {
  final String id;
  final String userId;
  final String questId;

  final QuestStatus status;

  final bool isCustomUserQuest;
  final int? userCustomSlotIndex;
  final Map<String, dynamic>? userCustomConfig;

  final int currentProgress;
  final int targetProgress;

  final int? streakDayRef;

  final DateTime createdAt;
  final DateTime? startedAt;
  final DateTime? completedAt;
  final DateTime? failedAt;
  final DateTime? expiresAt;
  final DateTime? lastUpdatedAt;

  final int timesCompleted;

  final Map<String, int> stepProgress;
  final List<String> completedStepIds;

  final Map<String, dynamic>? resultMeta;

  const QuestInstanceModel({
    required this.id,
    required this.userId,
    required this.questId,
    this.status = QuestStatus.available,

    this.isCustomUserQuest = false,
    this.userCustomSlotIndex,
    this.userCustomConfig,

    this.currentProgress = 0,
    this.targetProgress = 1,

    this.streakDayRef,

    required this.createdAt,
    this.startedAt,
    this.completedAt,
    this.failedAt,
    this.expiresAt,
    this.lastUpdatedAt,

    this.timesCompleted = 0,

    this.stepProgress = const {},
    this.completedStepIds = const [],

    this.resultMeta,
  });

  factory QuestInstanceModel.fromJson(Map<String, dynamic> json) =>
      _$QuestInstanceModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$QuestInstanceModelToJson(this);

  QuestInstanceModel copyWith({
    QuestStatus? status,
    int? currentProgress,
    int? targetProgress,
    int? streakDayRef,
    DateTime? startedAt,
    DateTime? completedAt,
    DateTime? failedAt,
    DateTime? expiresAt,
    DateTime? lastUpdatedAt,
    int? timesCompleted,
    Map<String, int>? stepProgress,
    List<String>? completedStepIds,
    Map<String, dynamic>? resultMeta,
  }) {
    return QuestInstanceModel(
      id: id,
      userId: userId,
      questId: questId,
      status: status ?? this.status,

      isCustomUserQuest: isCustomUserQuest,
      userCustomSlotIndex: userCustomSlotIndex,
      userCustomConfig: userCustomConfig,

      currentProgress: currentProgress ?? this.currentProgress,
      targetProgress: targetProgress ?? this.targetProgress,
      streakDayRef: streakDayRef ?? this.streakDayRef,

      createdAt: createdAt,
      startedAt: startedAt ?? this.startedAt,
      completedAt: completedAt ?? this.completedAt,
      failedAt: failedAt ?? this.failedAt,
      expiresAt: expiresAt ?? this.expiresAt,
      lastUpdatedAt: lastUpdatedAt ?? this.lastUpdatedAt,

      timesCompleted: timesCompleted ?? this.timesCompleted,
      stepProgress: stepProgress ?? this.stepProgress,
      completedStepIds: completedStepIds ?? this.completedStepIds,

      resultMeta: resultMeta ?? this.resultMeta,
    );
  }
}
