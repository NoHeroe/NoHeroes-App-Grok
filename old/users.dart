import 'package:drift/drift.dart';

class Users extends Table {
  // -------------------------------------
  // IDENTIDADE / PERFIL
  // -------------------------------------

  // ID único (UUID)
  TextColumn get id => text()();

  // nome real (opcional)
  TextColumn get name => text().nullable()();

  TextColumn get nickname => text().withLength(min: 1, max: 50)();

  TextColumn get email => text().withLength(min: 3, max: 80)();

  // senha (criptografada futuramente)
  TextColumn get password =>
      text().withLength(min: 3, max: 100)();

  TextColumn get bio => text().nullable()();

  TextColumn get avatarPath => text().nullable()();

  // male | female
  TextColumn get gender =>
      text().withDefault(const Constant('male'))();

  // -------------------------------------
  // IDENTIDADE NO NOHEROES (EXIBIÇÃO)
  // -------------------------------------

  TextColumn get classe => text().nullable()();   // Exibição
  TextColumn get faccao => text().nullable()();   // Exibição

  TextColumn get estilo =>
      text().withDefault(const Constant('solo'))(); // solo, duo, team

  TextColumn get rank =>
      text().withDefault(const Constant('E'))();

  // -------------------------------------
  // CLASSE / RAMIFICAÇÃO (LÓGICA)
  // -------------------------------------

  // id da classe base ("guerreiro", "mago"...)
  TextColumn get classeBaseId =>
      text().withDefault(const Constant('guerreiro'))();

  // id da ramificação (null até desbloqueio)
  TextColumn get classeBranchId => text().nullable()();

  // -------------------------------------
  // DADOS FÍSICOS
  // -------------------------------------

  RealColumn get height => real().nullable()(); // cm
  RealColumn get weight => real().nullable()(); // kg
  IntColumn get birthDate => integer().nullable()(); // timestamp

  // -------------------------------------
  // PROGRESSÃO NÚCLEO
  // -------------------------------------

  IntColumn get level => integer().withDefault(const Constant(1))();
  IntColumn get xp => integer().withDefault(const Constant(0))();
  IntColumn get gold => integer().withDefault(const Constant(0))();

  // -------------------------------------
  // PROGRESSÃO AVANÇADA
  // -------------------------------------

  // XP total histórico
  IntColumn get totalXp => integer().withDefault(const Constant(0))();

  // Vitalismo
  IntColumn get vitalXp => integer().withDefault(const Constant(0))();

  // Penalidade acumulada
  IntColumn get penaltyXp => integer().withDefault(const Constant(0))();

  // Quests
  IntColumn get questsCompleted => integer().withDefault(const Constant(0))();
  IntColumn get questsFailed => integer().withDefault(const Constant(0))();
  IntColumn get questsAbandoned => integer().withDefault(const Constant(0))();

  // Progressão da classe base
  IntColumn get classLevel => integer().withDefault(const Constant(1))();
  IntColumn get classXp => integer().withDefault(const Constant(0))();

  // Progressão da ramificação
  IntColumn get branchLevel => integer().withDefault(const Constant(0))();
  IntColumn get branchXp => integer().withDefault(const Constant(0))();

  // -------------------------------------
  // DISCIPLINA / STREAK
  // -------------------------------------

  IntColumn get streakDays => integer().withDefault(const Constant(0))();

  RealColumn get disciplineMultiplier =>
      real().withDefault(const Constant(1.0))();

  // -------------------------------------
  // ATRIBUTOS BASE
  // -------------------------------------

  IntColumn get forca => integer().withDefault(const Constant(1))();
  IntColumn get destreza => integer().withDefault(const Constant(1))();
  IntColumn get constituicao => integer().withDefault(const Constant(1))();
  IntColumn get inteligencia => integer().withDefault(const Constant(1))();
  IntColumn get espirito => integer().withDefault(const Constant(1))();
  IntColumn get carisma => integer().withDefault(const Constant(1))();

  // -------------------------------------
  // ATRIBUTOS BÔNUS
  // -------------------------------------

  IntColumn get bonusForca => integer().withDefault(const Constant(0))();
  IntColumn get bonusDestreza => integer().withDefault(const Constant(0))();
  IntColumn get bonusConstituicao => integer().withDefault(const Constant(0))();
  IntColumn get bonusInteligencia => integer().withDefault(const Constant(0))();
  IntColumn get bonusEspirito => integer().withDefault(const Constant(0))();
  IntColumn get bonusCarisma => integer().withDefault(const Constant(0))();

  // -------------------------------------
  // ATRIBUTOS FINAIS (CACHE)
  // -------------------------------------

  IntColumn get totalForca => integer().withDefault(const Constant(1))();
  IntColumn get totalDestreza => integer().withDefault(const Constant(1))();
  IntColumn get totalConstituicao => integer().withDefault(const Constant(1))();
  IntColumn get totalInteligencia => integer().withDefault(const Constant(1))();
  IntColumn get totalEspirito => integer().withDefault(const Constant(1))();
  IntColumn get totalCarisma => integer().withDefault(const Constant(1))();

  // -------------------------------------
  // BUFFS / DEBUFFS / EFEITOS ATIVOS
  // -------------------------------------

  /// List<String> serializada em JSON
  TextColumn get passiveTraits =>
      text().withDefault(const Constant('[]'))(); // JSON list

  TextColumn get activeBuffs =>
      text().withDefault(const Constant('[]'))(); // JSON list

  TextColumn get activeDebuffs =>
      text().withDefault(const Constant('[]'))(); // JSON list

  /// Lista de TemporalEffect serializada em JSON
  TextColumn get temporalEffects =>
      text().withDefault(const Constant('[]'))();

  // -------------------------------------
  // EQUIPAMENTOS
  // -------------------------------------

  /// Map<String, String?> serializado em JSON
  TextColumn get equippedSlots =>
      text().withDefault(const Constant('{}'))();

  // -------------------------------------
  // FLAGS / META
  // -------------------------------------

  BoolColumn get isTester =>
      boolean().withDefault(const Constant(false))();

  BoolColumn get isBanned =>
      boolean().withDefault(const Constant(false))();

  // -------------------------------------
  // METADADOS
  // -------------------------------------

  DateTimeColumn get createdAt =>
      dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}
