import 'package:drift/drift.dart';

/// Perfil de sombra agregado por usuário
class ShadowProfiles extends Table {
  TextColumn get userId => text()(); // PK

  /// Mapa arquétipo -> score em JSON
  /// ex: {"disciplina_sombra": 320}
  TextColumn get archetypeScoresJson =>
      text().withDefault(const Constant('{}'))();

  IntColumn get totalShadowScore =>
      integer().withDefault(const Constant(0))();

  TextColumn get dominantArchetypeId => text().nullable()();

  /// none, mild, moderate, severe
  TextColumn get crisisLevel =>
      text().withDefault(const Constant('none'))();

  /// 0–100
  IntColumn get resilienceScore =>
      integer().withDefault(const Constant(50))();

  IntColumn get totalNegativeEvents =>
      integer().withDefault(const Constant(0))();
  IntColumn get totalPositiveEvents =>
      integer().withDefault(const Constant(0))();
  IntColumn get totalCrises =>
      integer().withDefault(const Constant(0))();
  IntColumn get totalBreakthroughs =>
      integer().withDefault(const Constant(0))();

  DateTimeColumn get lastNegativeEventAt => dateTime().nullable()();
  DateTimeColumn get lastPositiveEventAt => dateTime().nullable()();
  DateTimeColumn get lastCrisisAt => dateTime().nullable()();
  DateTimeColumn get lastBreakthroughAt => dateTime().nullable()();
  DateTimeColumn get updatedAt =>
      dateTime().withDefault(currentDateAndTime)();

  TextColumn get metaJson =>
      text().withDefault(const Constant('{}'))();

  @override
  Set<Column> get primaryKey => {userId};
}

/// Log de eventos de sombra
class ShadowEvents extends Table {
  TextColumn get id => text()(); // UUID
  TextColumn get userId => text()();

  /// arquétipo alvo
  TextColumn get archetypeId => text()();

  /// ShadowEventKind: positive, negative, neutral, crisis, breakthrough
  TextColumn get kind => text()();

  /// ShadowEventSourceType: habit, quest, system, manual
  TextColumn get sourceType => text()();

  /// FK lógico: habitId, questInstanceId, etc
  TextColumn get sourceId => text()();

  /// delta aplicado (pode ser negativo para redução de sombra)
  IntColumn get delta => integer()();

  IntColumn get archetypeScoreAfter => integer()();
  IntColumn get totalShadowScoreAfter => integer()();

  DateTimeColumn get createdAt =>
      dateTime().withDefault(currentDateAndTime)();

  /// meta flexível
  TextColumn get metaJson =>
      text().withDefault(const Constant('{}'))();

  @override
  Set<Column> get primaryKey => {id};
}
