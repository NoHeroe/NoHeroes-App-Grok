// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestStepModel _$QuestStepModelFromJson(Map<String, dynamic> json) =>
    QuestStepModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      orderIndex: (json['orderIndex'] as num?)?.toInt() ?? 0,
      targetProgress: (json['targetProgress'] as num?)?.toInt() ?? 1,
      optional: json['optional'] as bool? ?? false,
      meta: json['meta'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$QuestStepModelToJson(QuestStepModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'orderIndex': instance.orderIndex,
      'targetProgress': instance.targetProgress,
      'optional': instance.optional,
      'meta': instance.meta,
    };

QuestTemplateModel _$QuestTemplateModelFromJson(
  Map<String, dynamic> json,
) => QuestTemplateModel(
  id: json['id'] as String,
  title: json['title'] as String,
  subtitle: json['subtitle'] as String?,
  description: json['description'] as String,
  origin: $enumDecode(_$QuestOriginEnumMap, json['origin']),
  createdByUserId: json['createdByUserId'] as String?,
  isEditable: json['isEditable'] as bool? ?? false,
  isDeletable: json['isDeletable'] as bool? ?? false,
  isUserScoped: json['isUserScoped'] as bool? ?? false,
  type: $enumDecode(_$QuestTypeEnumMap, json['type']),
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$QuestCategoryEnumMap, e))
          .toList() ??
      const [],
  difficulty:
      $enumDecodeNullable(_$QuestDifficultyEnumMap, json['difficulty']) ??
      QuestDifficulty.normal,
  rank: $enumDecodeNullable(_$QuestRankEnumMap, json['rank']),
  requiredPlayerRank: $enumDecodeNullable(
    _$QuestRankEnumMap,
    json['requiredPlayerRank'],
  ),
  requiredLevel: (json['requiredLevel'] as num?)?.toInt(),
  requiredClassIds:
      (json['requiredClassIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  requiredFactionIds:
      (json['requiredFactionIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  prerequisiteQuestIds:
      (json['prerequisiteQuestIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  baseXpReward: (json['baseXpReward'] as num?)?.toInt() ?? 0,
  vitalXpReward: (json['vitalXpReward'] as num?)?.toInt() ?? 0,
  penaltyXpOnFail: (json['penaltyXpOnFail'] as num?)?.toInt() ?? 0,
  goldReward: (json['goldReward'] as num?)?.toInt() ?? 0,
  itemRewardIds:
      (json['itemRewardIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  attributeRewards: (json['attributeRewards'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toInt()),
  ),
  itemDropChance: (json['itemDropChance'] as num?)?.toDouble(),
  possibleItemDrops: (json['possibleItemDrops'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  isDaily: json['isDaily'] as bool? ?? false,
  isRepeatable: json['isRepeatable'] as bool? ?? true,
  maxDailyCompletions: (json['maxDailyCompletions'] as num?)?.toInt(),
  availableFrom: json['availableFrom'] == null
      ? null
      : DateTime.parse(json['availableFrom'] as String),
  availableUntil: json['availableUntil'] == null
      ? null
      : DateTime.parse(json['availableUntil'] as String),
  isCoop: json['isCoop'] as bool? ?? false,
  minPartySize: (json['minPartySize'] as num?)?.toInt(),
  maxPartySize: (json['maxPartySize'] as num?)?.toInt(),
  trackingType:
      $enumDecodeNullable(_$QuestTrackingTypeEnumMap, json['trackingType']) ??
      QuestTrackingType.manual,
  trackingUnit:
      $enumDecodeNullable(_$QuestMetricUnitEnumMap, json['trackingUnit']) ??
      QuestMetricUnit.none,
  defaultTargetProgress: (json['defaultTargetProgress'] as num?)?.toInt() ?? 1,
  autoCompleteFromApp: json['autoCompleteFromApp'] as bool? ?? false,
  autoCompleteEventKey: json['autoCompleteEventKey'] as String?,
  linkedContentType:
      $enumDecodeNullable(
        _$QuestContentTypeEnumMap,
        json['linkedContentType'],
      ) ??
      QuestContentType.none,
  linkedContentId: json['linkedContentId'] as String?,
  trackingMeta: json['trackingMeta'] as Map<String, dynamic>?,
  steps:
      (json['steps'] as List<dynamic>?)
          ?.map((e) => QuestStepModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  meta: json['meta'] as Map<String, dynamic>?,
  autoRewardBySystem: json['autoRewardBySystem'] as bool? ?? false,
);

Map<String, dynamic> _$QuestTemplateModelToJson(
  QuestTemplateModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'subtitle': instance.subtitle,
  'description': instance.description,
  'origin': _$QuestOriginEnumMap[instance.origin]!,
  'createdByUserId': instance.createdByUserId,
  'isEditable': instance.isEditable,
  'isDeletable': instance.isDeletable,
  'isUserScoped': instance.isUserScoped,
  'type': _$QuestTypeEnumMap[instance.type]!,
  'categories': instance.categories
      .map((e) => _$QuestCategoryEnumMap[e]!)
      .toList(),
  'difficulty': _$QuestDifficultyEnumMap[instance.difficulty]!,
  'rank': _$QuestRankEnumMap[instance.rank],
  'requiredPlayerRank': _$QuestRankEnumMap[instance.requiredPlayerRank],
  'requiredLevel': instance.requiredLevel,
  'requiredClassIds': instance.requiredClassIds,
  'requiredFactionIds': instance.requiredFactionIds,
  'prerequisiteQuestIds': instance.prerequisiteQuestIds,
  'baseXpReward': instance.baseXpReward,
  'vitalXpReward': instance.vitalXpReward,
  'penaltyXpOnFail': instance.penaltyXpOnFail,
  'goldReward': instance.goldReward,
  'itemRewardIds': instance.itemRewardIds,
  'attributeRewards': instance.attributeRewards,
  'itemDropChance': instance.itemDropChance,
  'possibleItemDrops': instance.possibleItemDrops,
  'isDaily': instance.isDaily,
  'isRepeatable': instance.isRepeatable,
  'maxDailyCompletions': instance.maxDailyCompletions,
  'availableFrom': instance.availableFrom?.toIso8601String(),
  'availableUntil': instance.availableUntil?.toIso8601String(),
  'isCoop': instance.isCoop,
  'minPartySize': instance.minPartySize,
  'maxPartySize': instance.maxPartySize,
  'trackingType': _$QuestTrackingTypeEnumMap[instance.trackingType]!,
  'trackingUnit': _$QuestMetricUnitEnumMap[instance.trackingUnit]!,
  'defaultTargetProgress': instance.defaultTargetProgress,
  'autoCompleteFromApp': instance.autoCompleteFromApp,
  'autoCompleteEventKey': instance.autoCompleteEventKey,
  'linkedContentType': _$QuestContentTypeEnumMap[instance.linkedContentType]!,
  'linkedContentId': instance.linkedContentId,
  'trackingMeta': instance.trackingMeta,
  'steps': instance.steps.map((e) => e.toJson()).toList(),
  'meta': instance.meta,
  'autoRewardBySystem': instance.autoRewardBySystem,
};

const _$QuestOriginEnumMap = {
  QuestOrigin.system: 'system',
  QuestOrigin.userCustom: 'userCustom',
};

const _$QuestTypeEnumMap = {
  QuestType.dailyXp: 'dailyXp',
  QuestType.shadow: 'shadow',
  QuestType.story: 'story',
  QuestType.training: 'training',
  QuestType.life: 'life',
  QuestType.boss: 'boss',
  QuestType.event: 'event',
  QuestType.coop: 'coop',
  QuestType.customUser: 'customUser',
};

const _$QuestCategoryEnumMap = {
  QuestCategory.mental: 'mental',
  QuestCategory.physical: 'physical',
  QuestCategory.spiritual: 'spiritual',
};

const _$QuestDifficultyEnumMap = {
  QuestDifficulty.veryEasy: 'veryEasy',
  QuestDifficulty.easy: 'easy',
  QuestDifficulty.normal: 'normal',
  QuestDifficulty.hard: 'hard',
  QuestDifficulty.insane: 'insane',
};

const _$QuestRankEnumMap = {
  QuestRank.E: 'E',
  QuestRank.D: 'D',
  QuestRank.C: 'C',
  QuestRank.B: 'B',
  QuestRank.A: 'A',
  QuestRank.S: 'S',
};

const _$QuestTrackingTypeEnumMap = {
  QuestTrackingType.manual: 'manual',
  QuestTrackingType.counter: 'counter',
  QuestTrackingType.timer: 'timer',
  QuestTrackingType.writing: 'writing',
  QuestTrackingType.reading: 'reading',
};

const _$QuestMetricUnitEnumMap = {
  QuestMetricUnit.none: 'none',
  QuestMetricUnit.reps: 'reps',
  QuestMetricUnit.minutes: 'minutes',
  QuestMetricUnit.seconds: 'seconds',
  QuestMetricUnit.lines: 'lines',
  QuestMetricUnit.words: 'words',
  QuestMetricUnit.pages: 'pages',
  QuestMetricUnit.chapters: 'chapters',
  QuestMetricUnit.sessions: 'sessions',
  QuestMetricUnit.percent: 'percent',
};

const _$QuestContentTypeEnumMap = {
  QuestContentType.none: 'none',
  QuestContentType.ebook: 'ebook',
  QuestContentType.manga: 'manga',
  QuestContentType.anime: 'anime',
  QuestContentType.article: 'article',
  QuestContentType.video: 'video',
  QuestContentType.audio: 'audio',
  QuestContentType.meditation: 'meditation',
  QuestContentType.practice: 'practice',
  QuestContentType.custom: 'custom',
};

QuestInstanceModel _$QuestInstanceModelFromJson(Map<String, dynamic> json) =>
    QuestInstanceModel(
      id: json['id'] as String,
      userId: json['userId'] as String,
      questId: json['questId'] as String,
      status:
          $enumDecodeNullable(_$QuestStatusEnumMap, json['status']) ??
          QuestStatus.available,
      isCustomUserQuest: json['isCustomUserQuest'] as bool? ?? false,
      userCustomSlotIndex: (json['userCustomSlotIndex'] as num?)?.toInt(),
      userCustomConfig: json['userCustomConfig'] as Map<String, dynamic>?,
      currentProgress: (json['currentProgress'] as num?)?.toInt() ?? 0,
      targetProgress: (json['targetProgress'] as num?)?.toInt() ?? 1,
      streakDayRef: (json['streakDayRef'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      failedAt: json['failedAt'] == null
          ? null
          : DateTime.parse(json['failedAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      lastUpdatedAt: json['lastUpdatedAt'] == null
          ? null
          : DateTime.parse(json['lastUpdatedAt'] as String),
      timesCompleted: (json['timesCompleted'] as num?)?.toInt() ?? 0,
      stepProgress:
          (json['stepProgress'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toInt()),
          ) ??
          const {},
      completedStepIds:
          (json['completedStepIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      resultMeta: json['resultMeta'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$QuestInstanceModelToJson(QuestInstanceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'questId': instance.questId,
      'status': _$QuestStatusEnumMap[instance.status]!,
      'isCustomUserQuest': instance.isCustomUserQuest,
      'userCustomSlotIndex': instance.userCustomSlotIndex,
      'userCustomConfig': instance.userCustomConfig,
      'currentProgress': instance.currentProgress,
      'targetProgress': instance.targetProgress,
      'streakDayRef': instance.streakDayRef,
      'createdAt': instance.createdAt.toIso8601String(),
      'startedAt': instance.startedAt?.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'failedAt': instance.failedAt?.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'lastUpdatedAt': instance.lastUpdatedAt?.toIso8601String(),
      'timesCompleted': instance.timesCompleted,
      'stepProgress': instance.stepProgress,
      'completedStepIds': instance.completedStepIds,
      'resultMeta': instance.resultMeta,
    };

const _$QuestStatusEnumMap = {
  QuestStatus.locked: 'locked',
  QuestStatus.available: 'available',
  QuestStatus.inProgress: 'inProgress',
  QuestStatus.completed: 'completed',
  QuestStatus.failed: 'failed',
  QuestStatus.expired: 'expired',
};
