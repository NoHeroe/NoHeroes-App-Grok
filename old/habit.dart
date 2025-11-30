import 'package:json_annotation/json_annotation.dart';
import '../../core/constants/enums.dart'; // reaproveita QuestMetricUnit, QuestTrackingType

part 'habit.g.dart';

/// ===============================================================
/// 🧩 HabitDefinition — definição fixa de um hábito
/// ===============================================================
@JsonSerializable(explicitToJson: true)
class HabitDefinition {
  final String id;                       // ex: "habit_meditation"
  final String title;                    // ex: "Meditação"
  final String description;              // texto completo

  /// Categoria principal — física, mental, espiritual
  final QuestCategory category;

  /// Subtipo — usado para gerar Shadow triggers
  final String habitArchetype;           // ex: "disciplina", "controle", "procrastinacao"

  /// Como o hábito é medido
  final QuestTrackingType trackingType;  // manual, counter, timer, writing, reading

  /// Unidade
  final QuestMetricUnit metricUnit;      // minutes, reps, lines...

  /// Progresso alvo padrão
  final int defaultTarget;

  /// Quanto vale de XP ao completar
  final int baseXpReward;

  /// Quanto vale de Vitalismo ao completar
  final int vitalXpReward;

  /// Quanto de sombra ganha ao falhar
  final int shadowPenalty;

  /// XP por nível de dificuldade do hábito
  final bool difficultyScaling;

  /// Campo extra flexível
  final Map<String, dynamic>? meta;

  const HabitDefinition({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.habitArchetype,
    required this.trackingType,
    required this.metricUnit,
    required this.defaultTarget,
    required this.baseXpReward,
    required this.vitalXpReward,
    required this.shadowPenalty,
    this.difficultyScaling = true,
    this.meta,
  });

  factory HabitDefinition.fromJson(Map<String, dynamic> json) =>
      _$HabitDefinitionFromJson(json);

  Map<String, dynamic> toJson() => _$HabitDefinitionToJson(this);
}

/// ===============================================================
/// 🧩 HabitInstance — instância diária de um hábito
/// ===============================================================
@JsonSerializable(explicitToJson: true)
class HabitInstance {
  final String id;
  final String userId;
  final String habitId;                      // refere HabitDefinition.id

  /// Data chave no formato "20250128"
  final int dayKey;

  /// Progresso atual
  final int current;

  /// Progresso alvo do dia (pode ter escalonamento)
  final int target;

  /// Estado do hábito
  final HabitStatus status;

  /// Horas/datas úteis
  final DateTime createdAt;
  final DateTime? completedAt;
  final DateTime? failedAt;
  final DateTime? lastUpdatedAt;

  /// Campo extra para tracking interno
  final Map<String, dynamic>? trackingMeta;

  const HabitInstance({
    required this.id,
    required this.userId,
    required this.habitId,
    required this.dayKey,
    required this.current,
    required this.target,
    required this.status,
    required this.createdAt,
    this.completedAt,
    this.failedAt,
    this.lastUpdatedAt,
    this.trackingMeta,
  });

  factory HabitInstance.fromJson(Map<String, dynamic> json) =>
      _$HabitInstanceFromJson(json);

  Map<String, dynamic> toJson() => _$HabitInstanceToJson(this);

  HabitInstance copyWith({
    int? current,
    int? target,
    HabitStatus? status,
    DateTime? completedAt,
    DateTime? failedAt,
    DateTime? lastUpdatedAt,
    Map<String, dynamic>? trackingMeta,
  }) {
    return HabitInstance(
      id: id,
      userId: userId,
      habitId: habitId,
      dayKey: dayKey,
      current: current ?? this.current,
      target: target ?? this.target,
      status: status ?? this.status,
      createdAt: createdAt,
      completedAt: completedAt ?? this.completedAt,
      failedAt: failedAt ?? this.failedAt,
      lastUpdatedAt: lastUpdatedAt ?? this.lastUpdatedAt,
      trackingMeta: trackingMeta ?? this.trackingMeta,
    );
  }
}

/// ===============================================================
/// 🧩 HabitStatus — estado
/// ===============================================================
enum HabitStatus {
  pending,
  inProgress,
  completed,
  failed,
}
