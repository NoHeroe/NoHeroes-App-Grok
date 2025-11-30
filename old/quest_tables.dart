import 'package:drift/drift.dart';

/// ===============================
///  TABELA: QuestTemplates
///  Definição base da quest (catálogo)
/// ===============================
class QuestTemplates extends Table {
  // ------------ Identidade ------------
  TextColumn get id => text()(); // PK ex: "daily_pushups_10"
  TextColumn get title => text()();
  TextColumn get subtitle => text().nullable()();
  TextColumn get description => text()();

  // ------------ Origem / Custom ------------
  /// system | userCustom
  TextColumn get origin => text()();

  /// Preenche se for quest criada pelo usuário
  TextColumn get createdByUserId => text().nullable()();

  /// Pode ser editada no app?
  BoolColumn get isEditable => boolean().withDefault(const Constant(false))();

  /// Pode ser deletada?
  BoolColumn get isDeletable =>
      boolean().withDefault(const Constant(false))();

  /// Essa template existe só pro usuário que criou?
  BoolColumn get isUserScoped =>
      boolean().withDefault(const Constant(false))();

  // ------------ Classificação / requisitos ------------

  /// QuestType: dailyXp, shadow, story, training, life, boss, event, coop, customUser
  TextColumn get type => text()();

  /// Lista de categorias (mental / physical / spiritual) em JSON
  /// ex: ["mental","physical"]
  TextColumn get categoriesJson =>
      text().withDefault(const Constant('[]'))();

  /// QuestDifficulty: veryEasy, easy, normal, hard, insane
  TextColumn get difficulty =>
      text().withDefault(const Constant('normal'))();

  /// Rank da quest: E, D, C, B, A, S
  TextColumn get rank => text().nullable()();

  /// Rank mínimo do player
  TextColumn get requiredPlayerRank => text().nullable()();

  /// Level mínimo do player
  IntColumn get requiredLevel => integer().nullable()();

  /// Classes necessárias: ["guerreiro","ladino"]
  TextColumn get requiredClassIdsJson =>
      text().withDefault(const Constant('[]'))();

  /// Facções necessárias: ["legiao_negra"]
  TextColumn get requiredFactionIdsJson =>
      text().withDefault(const Constant('[]'))();

  /// Quests pré-requisito: ["shadow_intro_1", ...]
  TextColumn get prerequisiteQuestIdsJson =>
      text().withDefault(const Constant('[]'))();

  // ------------ Recompensas ------------

  IntColumn get baseXpReward =>
      integer().withDefault(const Constant(0))(); // XP geral
  IntColumn get vitalXpReward =>
      integer().withDefault(const Constant(0))(); // XP vitalismo
  IntColumn get penaltyXpOnFail =>
      integer().withDefault(const Constant(0))();
  IntColumn get goldReward =>
      integer().withDefault(const Constant(0))();

  /// Lista de itemIds fixos
  TextColumn get itemRewardIdsJson =>
      text().withDefault(const Constant('[]'))();

  /// Map de atributos: {"forca":1,"destreza":2}
  TextColumn get attributeRewardsJson =>
      text().withDefault(const Constant('{}'))();

  /// Chance de drop extra (0.0–1.0)
  RealColumn get itemDropChance => real().nullable()();

  /// Possíveis drops extras: ["item_espada_rara", "item_pocao"]
  TextColumn get possibleItemDropsJson =>
      text().withDefault(const Constant('[]'))();

  // ------------ Recorrência / janela ------------

  /// É daily?
  BoolColumn get isDaily =>
      boolean().withDefault(const Constant(false))();

  /// Pode repetir?
  BoolColumn get isRepeatable =>
      boolean().withDefault(const Constant(true))();

  /// Limite de completes por dia
  IntColumn get maxDailyCompletions => integer().nullable()();

  /// Janelas temporais (Event Quests)
  DateTimeColumn get availableFrom => dateTime().nullable()();
  DateTimeColumn get availableUntil => dateTime().nullable()();

  // ------------ Co-op ------------

  BoolColumn get isCoop =>
      boolean().withDefault(const Constant(false))();

  IntColumn get minPartySize => integer().nullable()();
  IntColumn get maxPartySize => integer().nullable()();

  // ------------ Tracking / auto-complete ------------

  /// QuestTrackingType: manual, counter, timer, writing, reading
  TextColumn get trackingType =>
      text().withDefault(const Constant('manual'))();

  /// QuestMetricUnit: none, reps, minutes, seconds, lines, words, pages, chapters, sessions, percent
  TextColumn get trackingUnit =>
      text().withDefault(const Constant('none'))();

  /// Progresso alvo padrão (ex: 10 linhas, 20 reps)
  IntColumn get defaultTargetProgress =>
      integer().withDefault(const Constant(1))();

  /// Se true, tenta auto-completar baseado em eventos internos
  BoolColumn get autoCompleteFromApp =>
      boolean().withDefault(const Constant(false))();

  /// Chave de evento interno: "journal_lines", "ebook_pages_read", etc.
  TextColumn get autoCompleteEventKey => text().nullable()();

  /// Tipo de conteúdo interno: ebook, manga, article, etc. (string do enum)
  TextColumn get linkedContentType =>
      text().withDefault(const Constant('none'))();

  /// Id do conteúdo interno
  TextColumn get linkedContentId => text().nullable()();

  /// Tracking meta: {"min_lines":10,"min_words":100}
  TextColumn get trackingMetaJson =>
      text().withDefault(const Constant('{}'))();

  // ------------ Steps / meta ------------

  /// Steps da quest (lista de QuestStep) em JSON
  TextColumn get stepsJson =>
      text().withDefault(const Constant('[]'))();

  /// Meta genérica (shadow_archetype, focus_tags, etc.)
  TextColumn get metaJson =>
      text().withDefault(const Constant('{}'))();

  /// Se true, rewards calculadas dinamicamente pelo sistema
  BoolColumn get autoRewardBySystem =>
      boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

/// ===============================
///  TABELA: QuestInstances
///  Instâncias de quest por usuário
/// ===============================
class QuestInstances extends Table {
  // -------- Identidade --------
  TextColumn get id => text()(); // UUID da instância
  TextColumn get userId => text()(); // ref User.id
  TextColumn get questId => text()(); // ref QuestTemplates.id (lógico)

  /// QuestStatus: locked, available, inProgress, completed, failed, expired
  TextColumn get status =>
      text().withDefault(const Constant('available'))();

  // -------- Custom user quest --------

  /// Se essa instância é de uma quest customizada pelo usuário
  BoolColumn get isCustomUserQuest =>
      boolean().withDefault(const Constant(false))();

  /// Índice de slot custom do usuário (para limitar 5 free, etc.)
  IntColumn get userCustomSlotIndex => integer().nullable()();

  /// Config extra da quest custom (nome original que o user digitou, etc.)
  TextColumn get userCustomConfigJson =>
      text().withDefault(const Constant('{}'))();

  // -------- Progresso principal --------

  IntColumn get currentProgress =>
      integer().withDefault(const Constant(0))();

  IntColumn get targetProgress =>
      integer().withDefault(const Constant(1))();

  /// Para daily: referência de dia (segue padrão int que você já usa, ex: 20251128)
  IntColumn get streakDayRef => integer().nullable()();

  // -------- Datas --------

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get startedAt => dateTime().nullable()();
  DateTimeColumn get completedAt => dateTime().nullable()();
  DateTimeColumn get failedAt => dateTime().nullable()();
  DateTimeColumn get expiresAt => dateTime().nullable()();
  DateTimeColumn get lastUpdatedAt => dateTime().nullable()();

  // -------- Estatística --------

  IntColumn get timesCompleted =>
      integer().withDefault(const Constant(0))();

  // -------- Steps / Resultado --------

  /// Progresso por step: {"step_1":1, "step_2":10}
  TextColumn get stepProgressJson =>
      text().withDefault(const Constant('{}'))();

  /// Steps concluídos: ["step_1","step_3"]
  TextColumn get completedStepIdsJson =>
      text().withDefault(const Constant('[]'))();

  /// Meta de resultado: diário, reflexão, etc.
  TextColumn get resultMetaJson =>
      text().withDefault(const Constant('{}'))();

  @override
  Set<Column> get primaryKey => {id};
}
