// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HabitDefinition _$HabitDefinitionFromJson(Map<String, dynamic> json) =>
    HabitDefinition(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      category: $enumDecode(_$QuestCategoryEnumMap, json['category']),
      habitArchetype: json['habitArchetype'] as String,
      trackingType: $enumDecode(
        _$QuestTrackingTypeEnumMap,
        json['trackingType'],
      ),
      metricUnit: $enumDecode(_$QuestMetricUnitEnumMap, json['metricUnit']),
      defaultTarget: (json['defaultTarget'] as num).toInt(),
      baseXpReward: (json['baseXpReward'] as num).toInt(),
      vitalXpReward: (json['vitalXpReward'] as num).toInt(),
      shadowPenalty: (json['shadowPenalty'] as num).toInt(),
      difficultyScaling: json['difficultyScaling'] as bool? ?? true,
      meta: json['meta'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$HabitDefinitionToJson(HabitDefinition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'category': _$QuestCategoryEnumMap[instance.category]!,
      'habitArchetype': instance.habitArchetype,
      'trackingType': _$QuestTrackingTypeEnumMap[instance.trackingType]!,
      'metricUnit': _$QuestMetricUnitEnumMap[instance.metricUnit]!,
      'defaultTarget': instance.defaultTarget,
      'baseXpReward': instance.baseXpReward,
      'vitalXpReward': instance.vitalXpReward,
      'shadowPenalty': instance.shadowPenalty,
      'difficultyScaling': instance.difficultyScaling,
      'meta': instance.meta,
    };

const _$QuestCategoryEnumMap = {
  QuestCategory.mental: 'mental',
  QuestCategory.physical: 'physical',
  QuestCategory.spiritual: 'spiritual',
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

HabitInstance _$HabitInstanceFromJson(Map<String, dynamic> json) =>
    HabitInstance(
      id: json['id'] as String,
      userId: json['userId'] as String,
      habitId: json['habitId'] as String,
      dayKey: (json['dayKey'] as num).toInt(),
      current: (json['current'] as num).toInt(),
      target: (json['target'] as num).toInt(),
      status: $enumDecode(_$HabitStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      failedAt: json['failedAt'] == null
          ? null
          : DateTime.parse(json['failedAt'] as String),
      lastUpdatedAt: json['lastUpdatedAt'] == null
          ? null
          : DateTime.parse(json['lastUpdatedAt'] as String),
      trackingMeta: json['trackingMeta'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$HabitInstanceToJson(HabitInstance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'habitId': instance.habitId,
      'dayKey': instance.dayKey,
      'current': instance.current,
      'target': instance.target,
      'status': _$HabitStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'failedAt': instance.failedAt?.toIso8601String(),
      'lastUpdatedAt': instance.lastUpdatedAt?.toIso8601String(),
      'trackingMeta': instance.trackingMeta,
    };

const _$HabitStatusEnumMap = {
  HabitStatus.pending: 'pending',
  HabitStatus.inProgress: 'inProgress',
  HabitStatus.completed: 'completed',
  HabitStatus.failed: 'failed',
};
