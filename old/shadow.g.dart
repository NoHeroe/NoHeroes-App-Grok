// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shadow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShadowArchetype _$ShadowArchetypeFromJson(Map<String, dynamic> json) =>
    ShadowArchetype(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$ShadowArchetypeTypeEnumMap, json['type']),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      focusCategories:
          (json['focusCategories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      typicalNegativeHabits:
          (json['typicalNegativeHabits'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      typicalPositiveHabits:
          (json['typicalPositiveHabits'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      baseWeight: (json['baseWeight'] as num?)?.toInt() ?? 50,
    );

Map<String, dynamic> _$ShadowArchetypeToJson(ShadowArchetype instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': _$ShadowArchetypeTypeEnumMap[instance.type]!,
      'tags': instance.tags,
      'focusCategories': instance.focusCategories,
      'typicalNegativeHabits': instance.typicalNegativeHabits,
      'typicalPositiveHabits': instance.typicalPositiveHabits,
      'baseWeight': instance.baseWeight,
    };

const _$ShadowArchetypeTypeEnumMap = {
  ShadowArchetypeType.disciplina: 'disciplina',
  ShadowArchetypeType.orgulho: 'orgulho',
  ShadowArchetypeType.medo: 'medo',
  ShadowArchetypeType.ira: 'ira',
  ShadowArchetypeType.fuga: 'fuga',
  ShadowArchetypeType.vaidade: 'vaidade',
  ShadowArchetypeType.apatia: 'apatia',
  ShadowArchetypeType.outro: 'outro',
};

ShadowProfile _$ShadowProfileFromJson(Map<String, dynamic> json) =>
    ShadowProfile(
      userId: json['userId'] as String,
      archetypeScores:
          (json['archetypeScores'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toInt()),
          ) ??
          const {},
      totalShadowScore: (json['totalShadowScore'] as num?)?.toInt() ?? 0,
      dominantArchetypeId: json['dominantArchetypeId'] as String?,
      crisisLevel:
          $enumDecodeNullable(
            _$ShadowCrisisLevelEnumMap,
            json['crisisLevel'],
          ) ??
          ShadowCrisisLevel.none,
      resilienceScore: (json['resilienceScore'] as num?)?.toInt() ?? 50,
      totalNegativeEvents: (json['totalNegativeEvents'] as num?)?.toInt() ?? 0,
      totalPositiveEvents: (json['totalPositiveEvents'] as num?)?.toInt() ?? 0,
      totalCrises: (json['totalCrises'] as num?)?.toInt() ?? 0,
      totalBreakthroughs: (json['totalBreakthroughs'] as num?)?.toInt() ?? 0,
      lastNegativeEventAt: json['lastNegativeEventAt'] == null
          ? null
          : DateTime.parse(json['lastNegativeEventAt'] as String),
      lastPositiveEventAt: json['lastPositiveEventAt'] == null
          ? null
          : DateTime.parse(json['lastPositiveEventAt'] as String),
      lastCrisisAt: json['lastCrisisAt'] == null
          ? null
          : DateTime.parse(json['lastCrisisAt'] as String),
      lastBreakthroughAt: json['lastBreakthroughAt'] == null
          ? null
          : DateTime.parse(json['lastBreakthroughAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      meta: json['meta'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ShadowProfileToJson(ShadowProfile instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'archetypeScores': instance.archetypeScores,
      'totalShadowScore': instance.totalShadowScore,
      'dominantArchetypeId': instance.dominantArchetypeId,
      'crisisLevel': _$ShadowCrisisLevelEnumMap[instance.crisisLevel]!,
      'resilienceScore': instance.resilienceScore,
      'totalNegativeEvents': instance.totalNegativeEvents,
      'totalPositiveEvents': instance.totalPositiveEvents,
      'totalCrises': instance.totalCrises,
      'totalBreakthroughs': instance.totalBreakthroughs,
      'lastNegativeEventAt': instance.lastNegativeEventAt?.toIso8601String(),
      'lastPositiveEventAt': instance.lastPositiveEventAt?.toIso8601String(),
      'lastCrisisAt': instance.lastCrisisAt?.toIso8601String(),
      'lastBreakthroughAt': instance.lastBreakthroughAt?.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'meta': instance.meta,
    };

const _$ShadowCrisisLevelEnumMap = {
  ShadowCrisisLevel.none: 'none',
  ShadowCrisisLevel.mild: 'mild',
  ShadowCrisisLevel.moderate: 'moderate',
  ShadowCrisisLevel.severe: 'severe',
};

ShadowEvent _$ShadowEventFromJson(Map<String, dynamic> json) => ShadowEvent(
  id: json['id'] as String,
  userId: json['userId'] as String,
  archetypeId: json['archetypeId'] as String,
  kind: $enumDecode(_$ShadowEventKindEnumMap, json['kind']),
  sourceType: $enumDecode(_$ShadowEventSourceTypeEnumMap, json['sourceType']),
  sourceId: json['sourceId'] as String,
  delta: (json['delta'] as num).toInt(),
  archetypeScoreAfter: (json['archetypeScoreAfter'] as num).toInt(),
  totalShadowScoreAfter: (json['totalShadowScoreAfter'] as num).toInt(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  meta: json['meta'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$ShadowEventToJson(ShadowEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'archetypeId': instance.archetypeId,
      'kind': _$ShadowEventKindEnumMap[instance.kind]!,
      'sourceType': _$ShadowEventSourceTypeEnumMap[instance.sourceType]!,
      'sourceId': instance.sourceId,
      'delta': instance.delta,
      'archetypeScoreAfter': instance.archetypeScoreAfter,
      'totalShadowScoreAfter': instance.totalShadowScoreAfter,
      'createdAt': instance.createdAt.toIso8601String(),
      'meta': instance.meta,
    };

const _$ShadowEventKindEnumMap = {
  ShadowEventKind.positive: 'positive',
  ShadowEventKind.negative: 'negative',
  ShadowEventKind.neutral: 'neutral',
  ShadowEventKind.crisis: 'crisis',
  ShadowEventKind.breakthrough: 'breakthrough',
};

const _$ShadowEventSourceTypeEnumMap = {
  ShadowEventSourceType.habit: 'habit',
  ShadowEventSourceType.quest: 'quest',
  ShadowEventSourceType.system: 'system',
  ShadowEventSourceType.manual: 'manual',
};
