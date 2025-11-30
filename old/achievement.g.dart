// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Achievement _$AchievementFromJson(Map<String, dynamic> json) => Achievement(
  id: json['id'] as String,
  category: json['category'] as String,
  name: json['name'] as String,
  progress: (json['progress'] as num).toInt(),
  goal: (json['goal'] as num).toInt(),
  gemsReward: (json['gemsReward'] as num).toInt(),
  unlockedAt: json['unlockedAt'] == null
      ? null
      : DateTime.parse(json['unlockedAt'] as String),
);

Map<String, dynamic> _$AchievementToJson(Achievement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'name': instance.name,
      'progress': instance.progress,
      'goal': instance.goal,
      'gemsReward': instance.gemsReward,
      'unlockedAt': instance.unlockedAt?.toIso8601String(),
    };
