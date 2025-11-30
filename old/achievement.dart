import 'package:json_annotation/json_annotation.dart';
part 'achievement.g.dart';

@JsonSerializable()
class Achievement {
  final String id;
  final String category;
  final String name;
  final int progress;
  final int goal;
  final int gemsReward;
  final DateTime? unlockedAt;

  const Achievement({
    required this.id,
    required this.category,
    required this.name,
    required this.progress,
    required this.goal,
    required this.gemsReward,
    this.unlockedAt,
  });

  bool get isUnlocked => unlockedAt != null;

  factory Achievement.fromJson(Map<String, dynamic> json) =>
      _$AchievementFromJson(json);
  Map<String, dynamic> toJson() => _$AchievementToJson(this);
}
