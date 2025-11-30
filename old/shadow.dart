import 'package:json_annotation/json_annotation.dart';
import '../../core/constants/enums.dart';

part 'shadow.g.dart';

/// Definição de um arquétipo de sombra (catálogo)
@JsonSerializable(explicitToJson: true)
class ShadowArchetype {
  final String id;                // ex: "disciplina_sombra"
  final String name;              // "Sombra da Disciplina"
  final String description;       // texto explicando o padrão

  /// Tipo base (disciplina, orgulho, medo...)
  final ShadowArchetypeType type;

  /// Tags úteis: ["procrastinacao","rotina","constancia"]
  final List<String> tags;

  /// Categorias que esse arquétipo impacta mais
  /// ex: ["mental","physical"]
  final List<String> focusCategories;

  /// Hábitos que normalmente alimentam essa sombra
  final List<String> typicalNegativeHabits;

  /// Hábitos que normalmente curam/integram
  final List<String> typicalPositiveHabits;

  /// Peso base (0–100): o quão forte esse arquétipo costuma ser
  final int baseWeight;

  const ShadowArchetype({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
    this.tags = const [],
    this.focusCategories = const [],
    this.typicalNegativeHabits = const [],
    this.typicalPositiveHabits = const [],
    this.baseWeight = 50,
  });

  factory ShadowArchetype.fromJson(Map<String, dynamic> json) =>
      _$ShadowArchetypeFromJson(json);

  Map<String, dynamic> toJson() => _$ShadowArchetypeToJson(this);
}

/// Perfil de sombra agregado por usuário
@JsonSerializable(explicitToJson: true)
class ShadowProfile {
  final String userId;

  /// Mapa arquétipo -> score (0–1000+)
  /// ex: { "disciplina_sombra": 320, "orgulho_sombra": 120 }
  final Map<String, int> archetypeScores;

  /// Score total (soma de tudo)
  final int totalShadowScore;

  /// Arquétipo dominante no momento
  final String? dominantArchetypeId;

  /// Nível de crise atual
  final ShadowCrisisLevel crisisLevel;

  /// Resiliência / capacidade de recuperação (0–100)
  final int resilienceScore;

  /// Contadores
  final int totalNegativeEvents;
  final int totalPositiveEvents;
  final int totalCrises;
  final int totalBreakthroughs;

  final DateTime? lastNegativeEventAt;
  final DateTime? lastPositiveEventAt;
  final DateTime? lastCrisisAt;
  final DateTime? lastBreakthroughAt;
  final DateTime updatedAt;

  /// Meta flexível (flags, notas, etc)
  final Map<String, dynamic>? meta;

  const ShadowProfile({
    required this.userId,
    this.archetypeScores = const {},
    this.totalShadowScore = 0,
    this.dominantArchetypeId,
    this.crisisLevel = ShadowCrisisLevel.none,
    this.resilienceScore = 50,
    this.totalNegativeEvents = 0,
    this.totalPositiveEvents = 0,
    this.totalCrises = 0,
    this.totalBreakthroughs = 0,
    this.lastNegativeEventAt,
    this.lastPositiveEventAt,
    this.lastCrisisAt,
    this.lastBreakthroughAt,
    required this.updatedAt,
    this.meta,
  });

  ShadowProfile copyWith({
    Map<String, int>? archetypeScores,
    int? totalShadowScore,
    String? dominantArchetypeId,
    ShadowCrisisLevel? crisisLevel,
    int? resilienceScore,
    int? totalNegativeEvents,
    int? totalPositiveEvents,
    int? totalCrises,
    int? totalBreakthroughs,
    DateTime? lastNegativeEventAt,
    DateTime? lastPositiveEventAt,
    DateTime? lastCrisisAt,
    DateTime? lastBreakthroughAt,
    DateTime? updatedAt,
    Map<String, dynamic>? meta,
  }) {
    return ShadowProfile(
      userId: userId,
      archetypeScores: archetypeScores ?? this.archetypeScores,
      totalShadowScore: totalShadowScore ?? this.totalShadowScore,
      dominantArchetypeId: dominantArchetypeId ?? this.dominantArchetypeId,
      crisisLevel: crisisLevel ?? this.crisisLevel,
      resilienceScore: resilienceScore ?? this.resilienceScore,
      totalNegativeEvents:
          totalNegativeEvents ?? this.totalNegativeEvents,
      totalPositiveEvents:
          totalPositiveEvents ?? this.totalPositiveEvents,
      totalCrises: totalCrises ?? this.totalCrises,
      totalBreakthroughs:
          totalBreakthroughs ?? this.totalBreakthroughs,
      lastNegativeEventAt:
          lastNegativeEventAt ?? this.lastNegativeEventAt,
      lastPositiveEventAt:
          lastPositiveEventAt ?? this.lastPositiveEventAt,
      lastCrisisAt: lastCrisisAt ?? this.lastCrisisAt,
      lastBreakthroughAt:
          lastBreakthroughAt ?? this.lastBreakthroughAt,
      updatedAt: updatedAt ?? this.updatedAt,
      meta: meta ?? this.meta,
    );
  }

  factory ShadowProfile.fromJson(Map<String, dynamic> json) =>
      _$ShadowProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ShadowProfileToJson(this);
}

/// Evento de sombra — tudo que altera pontuação
@JsonSerializable(explicitToJson: true)
class ShadowEvent {
  final String id;
  final String userId;
  final String archetypeId;

  final ShadowEventKind kind;
  final ShadowEventSourceType sourceType;

  /// ex: habitId, questInstanceId, "system_daily_decay"
  final String sourceId;

  /// delta aplicado (positivo aumenta sombra, negativo reduz)
  final int delta;

  /// Total após esse evento (no arquétipo específico)
  final int archetypeScoreAfter;

  /// Total global após o evento
  final int totalShadowScoreAfter;

  final DateTime createdAt;

  /// meta flexível (ex: "habit_name", "quest_title")
  final Map<String, dynamic>? meta;

  const ShadowEvent({
    required this.id,
    required this.userId,
    required this.archetypeId,
    required this.kind,
    required this.sourceType,
    required this.sourceId,
    required this.delta,
    required this.archetypeScoreAfter,
    required this.totalShadowScoreAfter,
    required this.createdAt,
    this.meta,
  });

  factory ShadowEvent.fromJson(Map<String, dynamic> json) =>
      _$ShadowEventFromJson(json);

  Map<String, dynamic> toJson() => _$ShadowEventToJson(this);
}
