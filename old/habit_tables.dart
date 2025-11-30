import 'package:drift/drift.dart';

/// ===============================================================
/// 🧩 TABLE: HabitDefinitions
/// Receita fixa de hábitos — catálogo
/// ===============================================================
class HabitDefinitions extends Table {
  TextColumn get id => text()(); // "habit_meditation"
  TextColumn get title => text()();
  TextColumn get description => text()();

  /// Categoria: mental / physical / spiritual
  TextColumn get category => text()();

  /// Archetype que alimenta ShadowSystem
  /// ex: "disciplina", "procrastinacao", "medo", "ira"
  TextColumn get habitArchetype => text()();

  /// TrackingType: manual, counter, timer, writing, reading
  TextColumn get trackingType => text()();

  /// QuestMetricUnit: reps, minutes, lines, pages...
  TextColumn get metricUnit => text()();

  /// Valor alvo padrão
  IntColumn get defaultTarget =>
      integer().withDefault(const Constant(1))();

  /// Recompensas
  IntColumn get baseXpReward =>
      integer().withDefault(const Constant(0))();

  IntColumn get vitalXpReward =>
      integer().withDefault(const Constant(0))();

  /// Penalidade de sombra
  IntColumn get shadowPenalty =>
      integer().withDefault(const Constant(0))();

  /// Se o hábito escala (progressão diária)
  BoolColumn get difficultyScaling =>
      boolean().withDefault(const Constant(true))();

  /// Qualquer meta extra: {"tier":2,"focus":"respiracao"}
  TextColumn get metaJson =>
      text().withDefault(const Constant('{}'))();

  @override
  Set<Column> get primaryKey => {id};
}

/// ===============================================================
/// 🧩 TABLE: HabitInstances
/// Instâncias diárias dos hábitos
/// ===============================================================
class HabitInstances extends Table {
  TextColumn get id => text()(); // UUID
  TextColumn get userId => text()(); // FK user
  TextColumn get habitId => text()(); // FK HabitDefinitions.id

  /// Dia chave no padrão 20250128
  IntColumn get dayKey => integer()();

  IntColumn get current =>
      integer().withDefault(const Constant(0))();

  IntColumn get target =>
      integer().withDefault(const Constant(1))();

  /// HabitStatus: pending, inProgress, completed, failed
  TextColumn get status =>
      text().withDefault(const Constant('pending'))();

  DateTimeColumn get createdAt =>
      dateTime().withDefault(currentDateAndTime)();

  DateTimeColumn get completedAt => dateTime().nullable()();
  DateTimeColumn get failedAt => dateTime().nullable()();
  DateTimeColumn get lastUpdatedAt => dateTime().nullable()();

  /// tracking extra (autoComplete, tempo, notas, etc)
  TextColumn get trackingMetaJson =>
      text().withDefault(const Constant('{}'))();

  @override
  Set<Column> get primaryKey => {id};
}
