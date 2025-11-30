// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// ignore_for_file: type=lint
class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nicknameMeta = const VerificationMeta(
    'nickname',
  );
  @override
  late final GeneratedColumn<String> nickname = GeneratedColumn<String>(
    'nickname',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 50,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 3,
      maxTextLength: 80,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _passwordMeta = const VerificationMeta(
    'password',
  );
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
    'password',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 3,
      maxTextLength: 100,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bioMeta = const VerificationMeta('bio');
  @override
  late final GeneratedColumn<String> bio = GeneratedColumn<String>(
    'bio',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _avatarPathMeta = const VerificationMeta(
    'avatarPath',
  );
  @override
  late final GeneratedColumn<String> avatarPath = GeneratedColumn<String>(
    'avatar_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
    'gender',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('male'),
  );
  static const VerificationMeta _classeMeta = const VerificationMeta('classe');
  @override
  late final GeneratedColumn<String> classe = GeneratedColumn<String>(
    'classe',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _faccaoMeta = const VerificationMeta('faccao');
  @override
  late final GeneratedColumn<String> faccao = GeneratedColumn<String>(
    'faccao',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _estiloMeta = const VerificationMeta('estilo');
  @override
  late final GeneratedColumn<String> estilo = GeneratedColumn<String>(
    'estilo',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('solo'),
  );
  static const VerificationMeta _rankMeta = const VerificationMeta('rank');
  @override
  late final GeneratedColumn<String> rank = GeneratedColumn<String>(
    'rank',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('E'),
  );
  static const VerificationMeta _classeBaseIdMeta = const VerificationMeta(
    'classeBaseId',
  );
  @override
  late final GeneratedColumn<String> classeBaseId = GeneratedColumn<String>(
    'classe_base_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('guerreiro'),
  );
  static const VerificationMeta _classeBranchIdMeta = const VerificationMeta(
    'classeBranchId',
  );
  @override
  late final GeneratedColumn<String> classeBranchId = GeneratedColumn<String>(
    'classe_branch_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<double> height = GeneratedColumn<double>(
    'height',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<double> weight = GeneratedColumn<double>(
    'weight',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _birthDateMeta = const VerificationMeta(
    'birthDate',
  );
  @override
  late final GeneratedColumn<int> birthDate = GeneratedColumn<int>(
    'birth_date',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<int> level = GeneratedColumn<int>(
    'level',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _xpMeta = const VerificationMeta('xp');
  @override
  late final GeneratedColumn<int> xp = GeneratedColumn<int>(
    'xp',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _goldMeta = const VerificationMeta('gold');
  @override
  late final GeneratedColumn<int> gold = GeneratedColumn<int>(
    'gold',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _totalXpMeta = const VerificationMeta(
    'totalXp',
  );
  @override
  late final GeneratedColumn<int> totalXp = GeneratedColumn<int>(
    'total_xp',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _vitalXpMeta = const VerificationMeta(
    'vitalXp',
  );
  @override
  late final GeneratedColumn<int> vitalXp = GeneratedColumn<int>(
    'vital_xp',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _penaltyXpMeta = const VerificationMeta(
    'penaltyXp',
  );
  @override
  late final GeneratedColumn<int> penaltyXp = GeneratedColumn<int>(
    'penalty_xp',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _questsCompletedMeta = const VerificationMeta(
    'questsCompleted',
  );
  @override
  late final GeneratedColumn<int> questsCompleted = GeneratedColumn<int>(
    'quests_completed',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _questsFailedMeta = const VerificationMeta(
    'questsFailed',
  );
  @override
  late final GeneratedColumn<int> questsFailed = GeneratedColumn<int>(
    'quests_failed',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _questsAbandonedMeta = const VerificationMeta(
    'questsAbandoned',
  );
  @override
  late final GeneratedColumn<int> questsAbandoned = GeneratedColumn<int>(
    'quests_abandoned',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _classLevelMeta = const VerificationMeta(
    'classLevel',
  );
  @override
  late final GeneratedColumn<int> classLevel = GeneratedColumn<int>(
    'class_level',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _classXpMeta = const VerificationMeta(
    'classXp',
  );
  @override
  late final GeneratedColumn<int> classXp = GeneratedColumn<int>(
    'class_xp',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _branchLevelMeta = const VerificationMeta(
    'branchLevel',
  );
  @override
  late final GeneratedColumn<int> branchLevel = GeneratedColumn<int>(
    'branch_level',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _branchXpMeta = const VerificationMeta(
    'branchXp',
  );
  @override
  late final GeneratedColumn<int> branchXp = GeneratedColumn<int>(
    'branch_xp',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _streakDaysMeta = const VerificationMeta(
    'streakDays',
  );
  @override
  late final GeneratedColumn<int> streakDays = GeneratedColumn<int>(
    'streak_days',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _disciplineMultiplierMeta =
      const VerificationMeta('disciplineMultiplier');
  @override
  late final GeneratedColumn<double> disciplineMultiplier =
      GeneratedColumn<double>(
        'discipline_multiplier',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: false,
        defaultValue: const Constant(1.0),
      );
  static const VerificationMeta _forcaMeta = const VerificationMeta('forca');
  @override
  late final GeneratedColumn<int> forca = GeneratedColumn<int>(
    'forca',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _destrezaMeta = const VerificationMeta(
    'destreza',
  );
  @override
  late final GeneratedColumn<int> destreza = GeneratedColumn<int>(
    'destreza',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _constituicaoMeta = const VerificationMeta(
    'constituicao',
  );
  @override
  late final GeneratedColumn<int> constituicao = GeneratedColumn<int>(
    'constituicao',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _inteligenciaMeta = const VerificationMeta(
    'inteligencia',
  );
  @override
  late final GeneratedColumn<int> inteligencia = GeneratedColumn<int>(
    'inteligencia',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _espiritoMeta = const VerificationMeta(
    'espirito',
  );
  @override
  late final GeneratedColumn<int> espirito = GeneratedColumn<int>(
    'espirito',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _carismaMeta = const VerificationMeta(
    'carisma',
  );
  @override
  late final GeneratedColumn<int> carisma = GeneratedColumn<int>(
    'carisma',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _bonusForcaMeta = const VerificationMeta(
    'bonusForca',
  );
  @override
  late final GeneratedColumn<int> bonusForca = GeneratedColumn<int>(
    'bonus_forca',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _bonusDestrezaMeta = const VerificationMeta(
    'bonusDestreza',
  );
  @override
  late final GeneratedColumn<int> bonusDestreza = GeneratedColumn<int>(
    'bonus_destreza',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _bonusConstituicaoMeta = const VerificationMeta(
    'bonusConstituicao',
  );
  @override
  late final GeneratedColumn<int> bonusConstituicao = GeneratedColumn<int>(
    'bonus_constituicao',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _bonusInteligenciaMeta = const VerificationMeta(
    'bonusInteligencia',
  );
  @override
  late final GeneratedColumn<int> bonusInteligencia = GeneratedColumn<int>(
    'bonus_inteligencia',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _bonusEspiritoMeta = const VerificationMeta(
    'bonusEspirito',
  );
  @override
  late final GeneratedColumn<int> bonusEspirito = GeneratedColumn<int>(
    'bonus_espirito',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _bonusCarismaMeta = const VerificationMeta(
    'bonusCarisma',
  );
  @override
  late final GeneratedColumn<int> bonusCarisma = GeneratedColumn<int>(
    'bonus_carisma',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _totalForcaMeta = const VerificationMeta(
    'totalForca',
  );
  @override
  late final GeneratedColumn<int> totalForca = GeneratedColumn<int>(
    'total_forca',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _totalDestrezaMeta = const VerificationMeta(
    'totalDestreza',
  );
  @override
  late final GeneratedColumn<int> totalDestreza = GeneratedColumn<int>(
    'total_destreza',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _totalConstituicaoMeta = const VerificationMeta(
    'totalConstituicao',
  );
  @override
  late final GeneratedColumn<int> totalConstituicao = GeneratedColumn<int>(
    'total_constituicao',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _totalInteligenciaMeta = const VerificationMeta(
    'totalInteligencia',
  );
  @override
  late final GeneratedColumn<int> totalInteligencia = GeneratedColumn<int>(
    'total_inteligencia',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _totalEspiritoMeta = const VerificationMeta(
    'totalEspirito',
  );
  @override
  late final GeneratedColumn<int> totalEspirito = GeneratedColumn<int>(
    'total_espirito',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _totalCarismaMeta = const VerificationMeta(
    'totalCarisma',
  );
  @override
  late final GeneratedColumn<int> totalCarisma = GeneratedColumn<int>(
    'total_carisma',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _passiveTraitsMeta = const VerificationMeta(
    'passiveTraits',
  );
  @override
  late final GeneratedColumn<String> passiveTraits = GeneratedColumn<String>(
    'passive_traits',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('[]'),
  );
  static const VerificationMeta _activeBuffsMeta = const VerificationMeta(
    'activeBuffs',
  );
  @override
  late final GeneratedColumn<String> activeBuffs = GeneratedColumn<String>(
    'active_buffs',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('[]'),
  );
  static const VerificationMeta _activeDebuffsMeta = const VerificationMeta(
    'activeDebuffs',
  );
  @override
  late final GeneratedColumn<String> activeDebuffs = GeneratedColumn<String>(
    'active_debuffs',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('[]'),
  );
  static const VerificationMeta _temporalEffectsMeta = const VerificationMeta(
    'temporalEffects',
  );
  @override
  late final GeneratedColumn<String> temporalEffects = GeneratedColumn<String>(
    'temporal_effects',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('[]'),
  );
  static const VerificationMeta _equippedSlotsMeta = const VerificationMeta(
    'equippedSlots',
  );
  @override
  late final GeneratedColumn<String> equippedSlots = GeneratedColumn<String>(
    'equipped_slots',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('{}'),
  );
  static const VerificationMeta _isTesterMeta = const VerificationMeta(
    'isTester',
  );
  @override
  late final GeneratedColumn<bool> isTester = GeneratedColumn<bool>(
    'is_tester',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_tester" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _isBannedMeta = const VerificationMeta(
    'isBanned',
  );
  @override
  late final GeneratedColumn<bool> isBanned = GeneratedColumn<bool>(
    'is_banned',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_banned" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    nickname,
    email,
    password,
    bio,
    avatarPath,
    gender,
    classe,
    faccao,
    estilo,
    rank,
    classeBaseId,
    classeBranchId,
    height,
    weight,
    birthDate,
    level,
    xp,
    gold,
    totalXp,
    vitalXp,
    penaltyXp,
    questsCompleted,
    questsFailed,
    questsAbandoned,
    classLevel,
    classXp,
    branchLevel,
    branchXp,
    streakDays,
    disciplineMultiplier,
    forca,
    destreza,
    constituicao,
    inteligencia,
    espirito,
    carisma,
    bonusForca,
    bonusDestreza,
    bonusConstituicao,
    bonusInteligencia,
    bonusEspirito,
    bonusCarisma,
    totalForca,
    totalDestreza,
    totalConstituicao,
    totalInteligencia,
    totalEspirito,
    totalCarisma,
    passiveTraits,
    activeBuffs,
    activeDebuffs,
    temporalEffects,
    equippedSlots,
    isTester,
    isBanned,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(
    Insertable<User> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    }
    if (data.containsKey('nickname')) {
      context.handle(
        _nicknameMeta,
        nickname.isAcceptableOrUnknown(data['nickname']!, _nicknameMeta),
      );
    } else if (isInserting) {
      context.missing(_nicknameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('password')) {
      context.handle(
        _passwordMeta,
        password.isAcceptableOrUnknown(data['password']!, _passwordMeta),
      );
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('bio')) {
      context.handle(
        _bioMeta,
        bio.isAcceptableOrUnknown(data['bio']!, _bioMeta),
      );
    }
    if (data.containsKey('avatar_path')) {
      context.handle(
        _avatarPathMeta,
        avatarPath.isAcceptableOrUnknown(data['avatar_path']!, _avatarPathMeta),
      );
    }
    if (data.containsKey('gender')) {
      context.handle(
        _genderMeta,
        gender.isAcceptableOrUnknown(data['gender']!, _genderMeta),
      );
    }
    if (data.containsKey('classe')) {
      context.handle(
        _classeMeta,
        classe.isAcceptableOrUnknown(data['classe']!, _classeMeta),
      );
    }
    if (data.containsKey('faccao')) {
      context.handle(
        _faccaoMeta,
        faccao.isAcceptableOrUnknown(data['faccao']!, _faccaoMeta),
      );
    }
    if (data.containsKey('estilo')) {
      context.handle(
        _estiloMeta,
        estilo.isAcceptableOrUnknown(data['estilo']!, _estiloMeta),
      );
    }
    if (data.containsKey('rank')) {
      context.handle(
        _rankMeta,
        rank.isAcceptableOrUnknown(data['rank']!, _rankMeta),
      );
    }
    if (data.containsKey('classe_base_id')) {
      context.handle(
        _classeBaseIdMeta,
        classeBaseId.isAcceptableOrUnknown(
          data['classe_base_id']!,
          _classeBaseIdMeta,
        ),
      );
    }
    if (data.containsKey('classe_branch_id')) {
      context.handle(
        _classeBranchIdMeta,
        classeBranchId.isAcceptableOrUnknown(
          data['classe_branch_id']!,
          _classeBranchIdMeta,
        ),
      );
    }
    if (data.containsKey('height')) {
      context.handle(
        _heightMeta,
        height.isAcceptableOrUnknown(data['height']!, _heightMeta),
      );
    }
    if (data.containsKey('weight')) {
      context.handle(
        _weightMeta,
        weight.isAcceptableOrUnknown(data['weight']!, _weightMeta),
      );
    }
    if (data.containsKey('birth_date')) {
      context.handle(
        _birthDateMeta,
        birthDate.isAcceptableOrUnknown(data['birth_date']!, _birthDateMeta),
      );
    }
    if (data.containsKey('level')) {
      context.handle(
        _levelMeta,
        level.isAcceptableOrUnknown(data['level']!, _levelMeta),
      );
    }
    if (data.containsKey('xp')) {
      context.handle(_xpMeta, xp.isAcceptableOrUnknown(data['xp']!, _xpMeta));
    }
    if (data.containsKey('gold')) {
      context.handle(
        _goldMeta,
        gold.isAcceptableOrUnknown(data['gold']!, _goldMeta),
      );
    }
    if (data.containsKey('total_xp')) {
      context.handle(
        _totalXpMeta,
        totalXp.isAcceptableOrUnknown(data['total_xp']!, _totalXpMeta),
      );
    }
    if (data.containsKey('vital_xp')) {
      context.handle(
        _vitalXpMeta,
        vitalXp.isAcceptableOrUnknown(data['vital_xp']!, _vitalXpMeta),
      );
    }
    if (data.containsKey('penalty_xp')) {
      context.handle(
        _penaltyXpMeta,
        penaltyXp.isAcceptableOrUnknown(data['penalty_xp']!, _penaltyXpMeta),
      );
    }
    if (data.containsKey('quests_completed')) {
      context.handle(
        _questsCompletedMeta,
        questsCompleted.isAcceptableOrUnknown(
          data['quests_completed']!,
          _questsCompletedMeta,
        ),
      );
    }
    if (data.containsKey('quests_failed')) {
      context.handle(
        _questsFailedMeta,
        questsFailed.isAcceptableOrUnknown(
          data['quests_failed']!,
          _questsFailedMeta,
        ),
      );
    }
    if (data.containsKey('quests_abandoned')) {
      context.handle(
        _questsAbandonedMeta,
        questsAbandoned.isAcceptableOrUnknown(
          data['quests_abandoned']!,
          _questsAbandonedMeta,
        ),
      );
    }
    if (data.containsKey('class_level')) {
      context.handle(
        _classLevelMeta,
        classLevel.isAcceptableOrUnknown(data['class_level']!, _classLevelMeta),
      );
    }
    if (data.containsKey('class_xp')) {
      context.handle(
        _classXpMeta,
        classXp.isAcceptableOrUnknown(data['class_xp']!, _classXpMeta),
      );
    }
    if (data.containsKey('branch_level')) {
      context.handle(
        _branchLevelMeta,
        branchLevel.isAcceptableOrUnknown(
          data['branch_level']!,
          _branchLevelMeta,
        ),
      );
    }
    if (data.containsKey('branch_xp')) {
      context.handle(
        _branchXpMeta,
        branchXp.isAcceptableOrUnknown(data['branch_xp']!, _branchXpMeta),
      );
    }
    if (data.containsKey('streak_days')) {
      context.handle(
        _streakDaysMeta,
        streakDays.isAcceptableOrUnknown(data['streak_days']!, _streakDaysMeta),
      );
    }
    if (data.containsKey('discipline_multiplier')) {
      context.handle(
        _disciplineMultiplierMeta,
        disciplineMultiplier.isAcceptableOrUnknown(
          data['discipline_multiplier']!,
          _disciplineMultiplierMeta,
        ),
      );
    }
    if (data.containsKey('forca')) {
      context.handle(
        _forcaMeta,
        forca.isAcceptableOrUnknown(data['forca']!, _forcaMeta),
      );
    }
    if (data.containsKey('destreza')) {
      context.handle(
        _destrezaMeta,
        destreza.isAcceptableOrUnknown(data['destreza']!, _destrezaMeta),
      );
    }
    if (data.containsKey('constituicao')) {
      context.handle(
        _constituicaoMeta,
        constituicao.isAcceptableOrUnknown(
          data['constituicao']!,
          _constituicaoMeta,
        ),
      );
    }
    if (data.containsKey('inteligencia')) {
      context.handle(
        _inteligenciaMeta,
        inteligencia.isAcceptableOrUnknown(
          data['inteligencia']!,
          _inteligenciaMeta,
        ),
      );
    }
    if (data.containsKey('espirito')) {
      context.handle(
        _espiritoMeta,
        espirito.isAcceptableOrUnknown(data['espirito']!, _espiritoMeta),
      );
    }
    if (data.containsKey('carisma')) {
      context.handle(
        _carismaMeta,
        carisma.isAcceptableOrUnknown(data['carisma']!, _carismaMeta),
      );
    }
    if (data.containsKey('bonus_forca')) {
      context.handle(
        _bonusForcaMeta,
        bonusForca.isAcceptableOrUnknown(data['bonus_forca']!, _bonusForcaMeta),
      );
    }
    if (data.containsKey('bonus_destreza')) {
      context.handle(
        _bonusDestrezaMeta,
        bonusDestreza.isAcceptableOrUnknown(
          data['bonus_destreza']!,
          _bonusDestrezaMeta,
        ),
      );
    }
    if (data.containsKey('bonus_constituicao')) {
      context.handle(
        _bonusConstituicaoMeta,
        bonusConstituicao.isAcceptableOrUnknown(
          data['bonus_constituicao']!,
          _bonusConstituicaoMeta,
        ),
      );
    }
    if (data.containsKey('bonus_inteligencia')) {
      context.handle(
        _bonusInteligenciaMeta,
        bonusInteligencia.isAcceptableOrUnknown(
          data['bonus_inteligencia']!,
          _bonusInteligenciaMeta,
        ),
      );
    }
    if (data.containsKey('bonus_espirito')) {
      context.handle(
        _bonusEspiritoMeta,
        bonusEspirito.isAcceptableOrUnknown(
          data['bonus_espirito']!,
          _bonusEspiritoMeta,
        ),
      );
    }
    if (data.containsKey('bonus_carisma')) {
      context.handle(
        _bonusCarismaMeta,
        bonusCarisma.isAcceptableOrUnknown(
          data['bonus_carisma']!,
          _bonusCarismaMeta,
        ),
      );
    }
    if (data.containsKey('total_forca')) {
      context.handle(
        _totalForcaMeta,
        totalForca.isAcceptableOrUnknown(data['total_forca']!, _totalForcaMeta),
      );
    }
    if (data.containsKey('total_destreza')) {
      context.handle(
        _totalDestrezaMeta,
        totalDestreza.isAcceptableOrUnknown(
          data['total_destreza']!,
          _totalDestrezaMeta,
        ),
      );
    }
    if (data.containsKey('total_constituicao')) {
      context.handle(
        _totalConstituicaoMeta,
        totalConstituicao.isAcceptableOrUnknown(
          data['total_constituicao']!,
          _totalConstituicaoMeta,
        ),
      );
    }
    if (data.containsKey('total_inteligencia')) {
      context.handle(
        _totalInteligenciaMeta,
        totalInteligencia.isAcceptableOrUnknown(
          data['total_inteligencia']!,
          _totalInteligenciaMeta,
        ),
      );
    }
    if (data.containsKey('total_espirito')) {
      context.handle(
        _totalEspiritoMeta,
        totalEspirito.isAcceptableOrUnknown(
          data['total_espirito']!,
          _totalEspiritoMeta,
        ),
      );
    }
    if (data.containsKey('total_carisma')) {
      context.handle(
        _totalCarismaMeta,
        totalCarisma.isAcceptableOrUnknown(
          data['total_carisma']!,
          _totalCarismaMeta,
        ),
      );
    }
    if (data.containsKey('passive_traits')) {
      context.handle(
        _passiveTraitsMeta,
        passiveTraits.isAcceptableOrUnknown(
          data['passive_traits']!,
          _passiveTraitsMeta,
        ),
      );
    }
    if (data.containsKey('active_buffs')) {
      context.handle(
        _activeBuffsMeta,
        activeBuffs.isAcceptableOrUnknown(
          data['active_buffs']!,
          _activeBuffsMeta,
        ),
      );
    }
    if (data.containsKey('active_debuffs')) {
      context.handle(
        _activeDebuffsMeta,
        activeDebuffs.isAcceptableOrUnknown(
          data['active_debuffs']!,
          _activeDebuffsMeta,
        ),
      );
    }
    if (data.containsKey('temporal_effects')) {
      context.handle(
        _temporalEffectsMeta,
        temporalEffects.isAcceptableOrUnknown(
          data['temporal_effects']!,
          _temporalEffectsMeta,
        ),
      );
    }
    if (data.containsKey('equipped_slots')) {
      context.handle(
        _equippedSlotsMeta,
        equippedSlots.isAcceptableOrUnknown(
          data['equipped_slots']!,
          _equippedSlotsMeta,
        ),
      );
    }
    if (data.containsKey('is_tester')) {
      context.handle(
        _isTesterMeta,
        isTester.isAcceptableOrUnknown(data['is_tester']!, _isTesterMeta),
      );
    }
    if (data.containsKey('is_banned')) {
      context.handle(
        _isBannedMeta,
        isBanned.isAcceptableOrUnknown(data['is_banned']!, _isBannedMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      ),
      nickname: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nickname'],
      )!,
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      )!,
      password: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}password'],
      )!,
      bio: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}bio'],
      ),
      avatarPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}avatar_path'],
      ),
      gender: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}gender'],
      )!,
      classe: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}classe'],
      ),
      faccao: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}faccao'],
      ),
      estilo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}estilo'],
      )!,
      rank: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}rank'],
      )!,
      classeBaseId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}classe_base_id'],
      )!,
      classeBranchId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}classe_branch_id'],
      ),
      height: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}height'],
      ),
      weight: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}weight'],
      ),
      birthDate: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}birth_date'],
      ),
      level: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}level'],
      )!,
      xp: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}xp'],
      )!,
      gold: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}gold'],
      )!,
      totalXp: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_xp'],
      )!,
      vitalXp: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}vital_xp'],
      )!,
      penaltyXp: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}penalty_xp'],
      )!,
      questsCompleted: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quests_completed'],
      )!,
      questsFailed: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quests_failed'],
      )!,
      questsAbandoned: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quests_abandoned'],
      )!,
      classLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}class_level'],
      )!,
      classXp: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}class_xp'],
      )!,
      branchLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}branch_level'],
      )!,
      branchXp: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}branch_xp'],
      )!,
      streakDays: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}streak_days'],
      )!,
      disciplineMultiplier: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}discipline_multiplier'],
      )!,
      forca: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}forca'],
      )!,
      destreza: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}destreza'],
      )!,
      constituicao: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}constituicao'],
      )!,
      inteligencia: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}inteligencia'],
      )!,
      espirito: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}espirito'],
      )!,
      carisma: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}carisma'],
      )!,
      bonusForca: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}bonus_forca'],
      )!,
      bonusDestreza: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}bonus_destreza'],
      )!,
      bonusConstituicao: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}bonus_constituicao'],
      )!,
      bonusInteligencia: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}bonus_inteligencia'],
      )!,
      bonusEspirito: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}bonus_espirito'],
      )!,
      bonusCarisma: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}bonus_carisma'],
      )!,
      totalForca: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_forca'],
      )!,
      totalDestreza: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_destreza'],
      )!,
      totalConstituicao: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_constituicao'],
      )!,
      totalInteligencia: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_inteligencia'],
      )!,
      totalEspirito: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_espirito'],
      )!,
      totalCarisma: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_carisma'],
      )!,
      passiveTraits: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}passive_traits'],
      )!,
      activeBuffs: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}active_buffs'],
      )!,
      activeDebuffs: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}active_debuffs'],
      )!,
      temporalEffects: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}temporal_effects'],
      )!,
      equippedSlots: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}equipped_slots'],
      )!,
      isTester: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_tester'],
      )!,
      isBanned: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_banned'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final String id;
  final String? name;
  final String nickname;
  final String email;
  final String password;
  final String? bio;
  final String? avatarPath;
  final String gender;
  final String? classe;
  final String? faccao;
  final String estilo;
  final String rank;
  final String classeBaseId;
  final String? classeBranchId;
  final double? height;
  final double? weight;
  final int? birthDate;
  final int level;
  final int xp;
  final int gold;
  final int totalXp;
  final int vitalXp;
  final int penaltyXp;
  final int questsCompleted;
  final int questsFailed;
  final int questsAbandoned;
  final int classLevel;
  final int classXp;
  final int branchLevel;
  final int branchXp;
  final int streakDays;
  final double disciplineMultiplier;
  final int forca;
  final int destreza;
  final int constituicao;
  final int inteligencia;
  final int espirito;
  final int carisma;
  final int bonusForca;
  final int bonusDestreza;
  final int bonusConstituicao;
  final int bonusInteligencia;
  final int bonusEspirito;
  final int bonusCarisma;
  final int totalForca;
  final int totalDestreza;
  final int totalConstituicao;
  final int totalInteligencia;
  final int totalEspirito;
  final int totalCarisma;

  /// List<String> serializada em JSON
  final String passiveTraits;
  final String activeBuffs;
  final String activeDebuffs;

  /// Lista de TemporalEffect serializada em JSON
  final String temporalEffects;

  /// Map<String, String?> serializado em JSON
  final String equippedSlots;
  final bool isTester;
  final bool isBanned;
  final DateTime createdAt;
  const User({
    required this.id,
    this.name,
    required this.nickname,
    required this.email,
    required this.password,
    this.bio,
    this.avatarPath,
    required this.gender,
    this.classe,
    this.faccao,
    required this.estilo,
    required this.rank,
    required this.classeBaseId,
    this.classeBranchId,
    this.height,
    this.weight,
    this.birthDate,
    required this.level,
    required this.xp,
    required this.gold,
    required this.totalXp,
    required this.vitalXp,
    required this.penaltyXp,
    required this.questsCompleted,
    required this.questsFailed,
    required this.questsAbandoned,
    required this.classLevel,
    required this.classXp,
    required this.branchLevel,
    required this.branchXp,
    required this.streakDays,
    required this.disciplineMultiplier,
    required this.forca,
    required this.destreza,
    required this.constituicao,
    required this.inteligencia,
    required this.espirito,
    required this.carisma,
    required this.bonusForca,
    required this.bonusDestreza,
    required this.bonusConstituicao,
    required this.bonusInteligencia,
    required this.bonusEspirito,
    required this.bonusCarisma,
    required this.totalForca,
    required this.totalDestreza,
    required this.totalConstituicao,
    required this.totalInteligencia,
    required this.totalEspirito,
    required this.totalCarisma,
    required this.passiveTraits,
    required this.activeBuffs,
    required this.activeDebuffs,
    required this.temporalEffects,
    required this.equippedSlots,
    required this.isTester,
    required this.isBanned,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    map['nickname'] = Variable<String>(nickname);
    map['email'] = Variable<String>(email);
    map['password'] = Variable<String>(password);
    if (!nullToAbsent || bio != null) {
      map['bio'] = Variable<String>(bio);
    }
    if (!nullToAbsent || avatarPath != null) {
      map['avatar_path'] = Variable<String>(avatarPath);
    }
    map['gender'] = Variable<String>(gender);
    if (!nullToAbsent || classe != null) {
      map['classe'] = Variable<String>(classe);
    }
    if (!nullToAbsent || faccao != null) {
      map['faccao'] = Variable<String>(faccao);
    }
    map['estilo'] = Variable<String>(estilo);
    map['rank'] = Variable<String>(rank);
    map['classe_base_id'] = Variable<String>(classeBaseId);
    if (!nullToAbsent || classeBranchId != null) {
      map['classe_branch_id'] = Variable<String>(classeBranchId);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<double>(height);
    }
    if (!nullToAbsent || weight != null) {
      map['weight'] = Variable<double>(weight);
    }
    if (!nullToAbsent || birthDate != null) {
      map['birth_date'] = Variable<int>(birthDate);
    }
    map['level'] = Variable<int>(level);
    map['xp'] = Variable<int>(xp);
    map['gold'] = Variable<int>(gold);
    map['total_xp'] = Variable<int>(totalXp);
    map['vital_xp'] = Variable<int>(vitalXp);
    map['penalty_xp'] = Variable<int>(penaltyXp);
    map['quests_completed'] = Variable<int>(questsCompleted);
    map['quests_failed'] = Variable<int>(questsFailed);
    map['quests_abandoned'] = Variable<int>(questsAbandoned);
    map['class_level'] = Variable<int>(classLevel);
    map['class_xp'] = Variable<int>(classXp);
    map['branch_level'] = Variable<int>(branchLevel);
    map['branch_xp'] = Variable<int>(branchXp);
    map['streak_days'] = Variable<int>(streakDays);
    map['discipline_multiplier'] = Variable<double>(disciplineMultiplier);
    map['forca'] = Variable<int>(forca);
    map['destreza'] = Variable<int>(destreza);
    map['constituicao'] = Variable<int>(constituicao);
    map['inteligencia'] = Variable<int>(inteligencia);
    map['espirito'] = Variable<int>(espirito);
    map['carisma'] = Variable<int>(carisma);
    map['bonus_forca'] = Variable<int>(bonusForca);
    map['bonus_destreza'] = Variable<int>(bonusDestreza);
    map['bonus_constituicao'] = Variable<int>(bonusConstituicao);
    map['bonus_inteligencia'] = Variable<int>(bonusInteligencia);
    map['bonus_espirito'] = Variable<int>(bonusEspirito);
    map['bonus_carisma'] = Variable<int>(bonusCarisma);
    map['total_forca'] = Variable<int>(totalForca);
    map['total_destreza'] = Variable<int>(totalDestreza);
    map['total_constituicao'] = Variable<int>(totalConstituicao);
    map['total_inteligencia'] = Variable<int>(totalInteligencia);
    map['total_espirito'] = Variable<int>(totalEspirito);
    map['total_carisma'] = Variable<int>(totalCarisma);
    map['passive_traits'] = Variable<String>(passiveTraits);
    map['active_buffs'] = Variable<String>(activeBuffs);
    map['active_debuffs'] = Variable<String>(activeDebuffs);
    map['temporal_effects'] = Variable<String>(temporalEffects);
    map['equipped_slots'] = Variable<String>(equippedSlots);
    map['is_tester'] = Variable<bool>(isTester);
    map['is_banned'] = Variable<bool>(isBanned);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      nickname: Value(nickname),
      email: Value(email),
      password: Value(password),
      bio: bio == null && nullToAbsent ? const Value.absent() : Value(bio),
      avatarPath: avatarPath == null && nullToAbsent
          ? const Value.absent()
          : Value(avatarPath),
      gender: Value(gender),
      classe: classe == null && nullToAbsent
          ? const Value.absent()
          : Value(classe),
      faccao: faccao == null && nullToAbsent
          ? const Value.absent()
          : Value(faccao),
      estilo: Value(estilo),
      rank: Value(rank),
      classeBaseId: Value(classeBaseId),
      classeBranchId: classeBranchId == null && nullToAbsent
          ? const Value.absent()
          : Value(classeBranchId),
      height: height == null && nullToAbsent
          ? const Value.absent()
          : Value(height),
      weight: weight == null && nullToAbsent
          ? const Value.absent()
          : Value(weight),
      birthDate: birthDate == null && nullToAbsent
          ? const Value.absent()
          : Value(birthDate),
      level: Value(level),
      xp: Value(xp),
      gold: Value(gold),
      totalXp: Value(totalXp),
      vitalXp: Value(vitalXp),
      penaltyXp: Value(penaltyXp),
      questsCompleted: Value(questsCompleted),
      questsFailed: Value(questsFailed),
      questsAbandoned: Value(questsAbandoned),
      classLevel: Value(classLevel),
      classXp: Value(classXp),
      branchLevel: Value(branchLevel),
      branchXp: Value(branchXp),
      streakDays: Value(streakDays),
      disciplineMultiplier: Value(disciplineMultiplier),
      forca: Value(forca),
      destreza: Value(destreza),
      constituicao: Value(constituicao),
      inteligencia: Value(inteligencia),
      espirito: Value(espirito),
      carisma: Value(carisma),
      bonusForca: Value(bonusForca),
      bonusDestreza: Value(bonusDestreza),
      bonusConstituicao: Value(bonusConstituicao),
      bonusInteligencia: Value(bonusInteligencia),
      bonusEspirito: Value(bonusEspirito),
      bonusCarisma: Value(bonusCarisma),
      totalForca: Value(totalForca),
      totalDestreza: Value(totalDestreza),
      totalConstituicao: Value(totalConstituicao),
      totalInteligencia: Value(totalInteligencia),
      totalEspirito: Value(totalEspirito),
      totalCarisma: Value(totalCarisma),
      passiveTraits: Value(passiveTraits),
      activeBuffs: Value(activeBuffs),
      activeDebuffs: Value(activeDebuffs),
      temporalEffects: Value(temporalEffects),
      equippedSlots: Value(equippedSlots),
      isTester: Value(isTester),
      isBanned: Value(isBanned),
      createdAt: Value(createdAt),
    );
  }

  factory User.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      nickname: serializer.fromJson<String>(json['nickname']),
      email: serializer.fromJson<String>(json['email']),
      password: serializer.fromJson<String>(json['password']),
      bio: serializer.fromJson<String?>(json['bio']),
      avatarPath: serializer.fromJson<String?>(json['avatarPath']),
      gender: serializer.fromJson<String>(json['gender']),
      classe: serializer.fromJson<String?>(json['classe']),
      faccao: serializer.fromJson<String?>(json['faccao']),
      estilo: serializer.fromJson<String>(json['estilo']),
      rank: serializer.fromJson<String>(json['rank']),
      classeBaseId: serializer.fromJson<String>(json['classeBaseId']),
      classeBranchId: serializer.fromJson<String?>(json['classeBranchId']),
      height: serializer.fromJson<double?>(json['height']),
      weight: serializer.fromJson<double?>(json['weight']),
      birthDate: serializer.fromJson<int?>(json['birthDate']),
      level: serializer.fromJson<int>(json['level']),
      xp: serializer.fromJson<int>(json['xp']),
      gold: serializer.fromJson<int>(json['gold']),
      totalXp: serializer.fromJson<int>(json['totalXp']),
      vitalXp: serializer.fromJson<int>(json['vitalXp']),
      penaltyXp: serializer.fromJson<int>(json['penaltyXp']),
      questsCompleted: serializer.fromJson<int>(json['questsCompleted']),
      questsFailed: serializer.fromJson<int>(json['questsFailed']),
      questsAbandoned: serializer.fromJson<int>(json['questsAbandoned']),
      classLevel: serializer.fromJson<int>(json['classLevel']),
      classXp: serializer.fromJson<int>(json['classXp']),
      branchLevel: serializer.fromJson<int>(json['branchLevel']),
      branchXp: serializer.fromJson<int>(json['branchXp']),
      streakDays: serializer.fromJson<int>(json['streakDays']),
      disciplineMultiplier: serializer.fromJson<double>(
        json['disciplineMultiplier'],
      ),
      forca: serializer.fromJson<int>(json['forca']),
      destreza: serializer.fromJson<int>(json['destreza']),
      constituicao: serializer.fromJson<int>(json['constituicao']),
      inteligencia: serializer.fromJson<int>(json['inteligencia']),
      espirito: serializer.fromJson<int>(json['espirito']),
      carisma: serializer.fromJson<int>(json['carisma']),
      bonusForca: serializer.fromJson<int>(json['bonusForca']),
      bonusDestreza: serializer.fromJson<int>(json['bonusDestreza']),
      bonusConstituicao: serializer.fromJson<int>(json['bonusConstituicao']),
      bonusInteligencia: serializer.fromJson<int>(json['bonusInteligencia']),
      bonusEspirito: serializer.fromJson<int>(json['bonusEspirito']),
      bonusCarisma: serializer.fromJson<int>(json['bonusCarisma']),
      totalForca: serializer.fromJson<int>(json['totalForca']),
      totalDestreza: serializer.fromJson<int>(json['totalDestreza']),
      totalConstituicao: serializer.fromJson<int>(json['totalConstituicao']),
      totalInteligencia: serializer.fromJson<int>(json['totalInteligencia']),
      totalEspirito: serializer.fromJson<int>(json['totalEspirito']),
      totalCarisma: serializer.fromJson<int>(json['totalCarisma']),
      passiveTraits: serializer.fromJson<String>(json['passiveTraits']),
      activeBuffs: serializer.fromJson<String>(json['activeBuffs']),
      activeDebuffs: serializer.fromJson<String>(json['activeDebuffs']),
      temporalEffects: serializer.fromJson<String>(json['temporalEffects']),
      equippedSlots: serializer.fromJson<String>(json['equippedSlots']),
      isTester: serializer.fromJson<bool>(json['isTester']),
      isBanned: serializer.fromJson<bool>(json['isBanned']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String?>(name),
      'nickname': serializer.toJson<String>(nickname),
      'email': serializer.toJson<String>(email),
      'password': serializer.toJson<String>(password),
      'bio': serializer.toJson<String?>(bio),
      'avatarPath': serializer.toJson<String?>(avatarPath),
      'gender': serializer.toJson<String>(gender),
      'classe': serializer.toJson<String?>(classe),
      'faccao': serializer.toJson<String?>(faccao),
      'estilo': serializer.toJson<String>(estilo),
      'rank': serializer.toJson<String>(rank),
      'classeBaseId': serializer.toJson<String>(classeBaseId),
      'classeBranchId': serializer.toJson<String?>(classeBranchId),
      'height': serializer.toJson<double?>(height),
      'weight': serializer.toJson<double?>(weight),
      'birthDate': serializer.toJson<int?>(birthDate),
      'level': serializer.toJson<int>(level),
      'xp': serializer.toJson<int>(xp),
      'gold': serializer.toJson<int>(gold),
      'totalXp': serializer.toJson<int>(totalXp),
      'vitalXp': serializer.toJson<int>(vitalXp),
      'penaltyXp': serializer.toJson<int>(penaltyXp),
      'questsCompleted': serializer.toJson<int>(questsCompleted),
      'questsFailed': serializer.toJson<int>(questsFailed),
      'questsAbandoned': serializer.toJson<int>(questsAbandoned),
      'classLevel': serializer.toJson<int>(classLevel),
      'classXp': serializer.toJson<int>(classXp),
      'branchLevel': serializer.toJson<int>(branchLevel),
      'branchXp': serializer.toJson<int>(branchXp),
      'streakDays': serializer.toJson<int>(streakDays),
      'disciplineMultiplier': serializer.toJson<double>(disciplineMultiplier),
      'forca': serializer.toJson<int>(forca),
      'destreza': serializer.toJson<int>(destreza),
      'constituicao': serializer.toJson<int>(constituicao),
      'inteligencia': serializer.toJson<int>(inteligencia),
      'espirito': serializer.toJson<int>(espirito),
      'carisma': serializer.toJson<int>(carisma),
      'bonusForca': serializer.toJson<int>(bonusForca),
      'bonusDestreza': serializer.toJson<int>(bonusDestreza),
      'bonusConstituicao': serializer.toJson<int>(bonusConstituicao),
      'bonusInteligencia': serializer.toJson<int>(bonusInteligencia),
      'bonusEspirito': serializer.toJson<int>(bonusEspirito),
      'bonusCarisma': serializer.toJson<int>(bonusCarisma),
      'totalForca': serializer.toJson<int>(totalForca),
      'totalDestreza': serializer.toJson<int>(totalDestreza),
      'totalConstituicao': serializer.toJson<int>(totalConstituicao),
      'totalInteligencia': serializer.toJson<int>(totalInteligencia),
      'totalEspirito': serializer.toJson<int>(totalEspirito),
      'totalCarisma': serializer.toJson<int>(totalCarisma),
      'passiveTraits': serializer.toJson<String>(passiveTraits),
      'activeBuffs': serializer.toJson<String>(activeBuffs),
      'activeDebuffs': serializer.toJson<String>(activeDebuffs),
      'temporalEffects': serializer.toJson<String>(temporalEffects),
      'equippedSlots': serializer.toJson<String>(equippedSlots),
      'isTester': serializer.toJson<bool>(isTester),
      'isBanned': serializer.toJson<bool>(isBanned),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  User copyWith({
    String? id,
    Value<String?> name = const Value.absent(),
    String? nickname,
    String? email,
    String? password,
    Value<String?> bio = const Value.absent(),
    Value<String?> avatarPath = const Value.absent(),
    String? gender,
    Value<String?> classe = const Value.absent(),
    Value<String?> faccao = const Value.absent(),
    String? estilo,
    String? rank,
    String? classeBaseId,
    Value<String?> classeBranchId = const Value.absent(),
    Value<double?> height = const Value.absent(),
    Value<double?> weight = const Value.absent(),
    Value<int?> birthDate = const Value.absent(),
    int? level,
    int? xp,
    int? gold,
    int? totalXp,
    int? vitalXp,
    int? penaltyXp,
    int? questsCompleted,
    int? questsFailed,
    int? questsAbandoned,
    int? classLevel,
    int? classXp,
    int? branchLevel,
    int? branchXp,
    int? streakDays,
    double? disciplineMultiplier,
    int? forca,
    int? destreza,
    int? constituicao,
    int? inteligencia,
    int? espirito,
    int? carisma,
    int? bonusForca,
    int? bonusDestreza,
    int? bonusConstituicao,
    int? bonusInteligencia,
    int? bonusEspirito,
    int? bonusCarisma,
    int? totalForca,
    int? totalDestreza,
    int? totalConstituicao,
    int? totalInteligencia,
    int? totalEspirito,
    int? totalCarisma,
    String? passiveTraits,
    String? activeBuffs,
    String? activeDebuffs,
    String? temporalEffects,
    String? equippedSlots,
    bool? isTester,
    bool? isBanned,
    DateTime? createdAt,
  }) => User(
    id: id ?? this.id,
    name: name.present ? name.value : this.name,
    nickname: nickname ?? this.nickname,
    email: email ?? this.email,
    password: password ?? this.password,
    bio: bio.present ? bio.value : this.bio,
    avatarPath: avatarPath.present ? avatarPath.value : this.avatarPath,
    gender: gender ?? this.gender,
    classe: classe.present ? classe.value : this.classe,
    faccao: faccao.present ? faccao.value : this.faccao,
    estilo: estilo ?? this.estilo,
    rank: rank ?? this.rank,
    classeBaseId: classeBaseId ?? this.classeBaseId,
    classeBranchId: classeBranchId.present
        ? classeBranchId.value
        : this.classeBranchId,
    height: height.present ? height.value : this.height,
    weight: weight.present ? weight.value : this.weight,
    birthDate: birthDate.present ? birthDate.value : this.birthDate,
    level: level ?? this.level,
    xp: xp ?? this.xp,
    gold: gold ?? this.gold,
    totalXp: totalXp ?? this.totalXp,
    vitalXp: vitalXp ?? this.vitalXp,
    penaltyXp: penaltyXp ?? this.penaltyXp,
    questsCompleted: questsCompleted ?? this.questsCompleted,
    questsFailed: questsFailed ?? this.questsFailed,
    questsAbandoned: questsAbandoned ?? this.questsAbandoned,
    classLevel: classLevel ?? this.classLevel,
    classXp: classXp ?? this.classXp,
    branchLevel: branchLevel ?? this.branchLevel,
    branchXp: branchXp ?? this.branchXp,
    streakDays: streakDays ?? this.streakDays,
    disciplineMultiplier: disciplineMultiplier ?? this.disciplineMultiplier,
    forca: forca ?? this.forca,
    destreza: destreza ?? this.destreza,
    constituicao: constituicao ?? this.constituicao,
    inteligencia: inteligencia ?? this.inteligencia,
    espirito: espirito ?? this.espirito,
    carisma: carisma ?? this.carisma,
    bonusForca: bonusForca ?? this.bonusForca,
    bonusDestreza: bonusDestreza ?? this.bonusDestreza,
    bonusConstituicao: bonusConstituicao ?? this.bonusConstituicao,
    bonusInteligencia: bonusInteligencia ?? this.bonusInteligencia,
    bonusEspirito: bonusEspirito ?? this.bonusEspirito,
    bonusCarisma: bonusCarisma ?? this.bonusCarisma,
    totalForca: totalForca ?? this.totalForca,
    totalDestreza: totalDestreza ?? this.totalDestreza,
    totalConstituicao: totalConstituicao ?? this.totalConstituicao,
    totalInteligencia: totalInteligencia ?? this.totalInteligencia,
    totalEspirito: totalEspirito ?? this.totalEspirito,
    totalCarisma: totalCarisma ?? this.totalCarisma,
    passiveTraits: passiveTraits ?? this.passiveTraits,
    activeBuffs: activeBuffs ?? this.activeBuffs,
    activeDebuffs: activeDebuffs ?? this.activeDebuffs,
    temporalEffects: temporalEffects ?? this.temporalEffects,
    equippedSlots: equippedSlots ?? this.equippedSlots,
    isTester: isTester ?? this.isTester,
    isBanned: isBanned ?? this.isBanned,
    createdAt: createdAt ?? this.createdAt,
  );
  User copyWithCompanion(UsersCompanion data) {
    return User(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      nickname: data.nickname.present ? data.nickname.value : this.nickname,
      email: data.email.present ? data.email.value : this.email,
      password: data.password.present ? data.password.value : this.password,
      bio: data.bio.present ? data.bio.value : this.bio,
      avatarPath: data.avatarPath.present
          ? data.avatarPath.value
          : this.avatarPath,
      gender: data.gender.present ? data.gender.value : this.gender,
      classe: data.classe.present ? data.classe.value : this.classe,
      faccao: data.faccao.present ? data.faccao.value : this.faccao,
      estilo: data.estilo.present ? data.estilo.value : this.estilo,
      rank: data.rank.present ? data.rank.value : this.rank,
      classeBaseId: data.classeBaseId.present
          ? data.classeBaseId.value
          : this.classeBaseId,
      classeBranchId: data.classeBranchId.present
          ? data.classeBranchId.value
          : this.classeBranchId,
      height: data.height.present ? data.height.value : this.height,
      weight: data.weight.present ? data.weight.value : this.weight,
      birthDate: data.birthDate.present ? data.birthDate.value : this.birthDate,
      level: data.level.present ? data.level.value : this.level,
      xp: data.xp.present ? data.xp.value : this.xp,
      gold: data.gold.present ? data.gold.value : this.gold,
      totalXp: data.totalXp.present ? data.totalXp.value : this.totalXp,
      vitalXp: data.vitalXp.present ? data.vitalXp.value : this.vitalXp,
      penaltyXp: data.penaltyXp.present ? data.penaltyXp.value : this.penaltyXp,
      questsCompleted: data.questsCompleted.present
          ? data.questsCompleted.value
          : this.questsCompleted,
      questsFailed: data.questsFailed.present
          ? data.questsFailed.value
          : this.questsFailed,
      questsAbandoned: data.questsAbandoned.present
          ? data.questsAbandoned.value
          : this.questsAbandoned,
      classLevel: data.classLevel.present
          ? data.classLevel.value
          : this.classLevel,
      classXp: data.classXp.present ? data.classXp.value : this.classXp,
      branchLevel: data.branchLevel.present
          ? data.branchLevel.value
          : this.branchLevel,
      branchXp: data.branchXp.present ? data.branchXp.value : this.branchXp,
      streakDays: data.streakDays.present
          ? data.streakDays.value
          : this.streakDays,
      disciplineMultiplier: data.disciplineMultiplier.present
          ? data.disciplineMultiplier.value
          : this.disciplineMultiplier,
      forca: data.forca.present ? data.forca.value : this.forca,
      destreza: data.destreza.present ? data.destreza.value : this.destreza,
      constituicao: data.constituicao.present
          ? data.constituicao.value
          : this.constituicao,
      inteligencia: data.inteligencia.present
          ? data.inteligencia.value
          : this.inteligencia,
      espirito: data.espirito.present ? data.espirito.value : this.espirito,
      carisma: data.carisma.present ? data.carisma.value : this.carisma,
      bonusForca: data.bonusForca.present
          ? data.bonusForca.value
          : this.bonusForca,
      bonusDestreza: data.bonusDestreza.present
          ? data.bonusDestreza.value
          : this.bonusDestreza,
      bonusConstituicao: data.bonusConstituicao.present
          ? data.bonusConstituicao.value
          : this.bonusConstituicao,
      bonusInteligencia: data.bonusInteligencia.present
          ? data.bonusInteligencia.value
          : this.bonusInteligencia,
      bonusEspirito: data.bonusEspirito.present
          ? data.bonusEspirito.value
          : this.bonusEspirito,
      bonusCarisma: data.bonusCarisma.present
          ? data.bonusCarisma.value
          : this.bonusCarisma,
      totalForca: data.totalForca.present
          ? data.totalForca.value
          : this.totalForca,
      totalDestreza: data.totalDestreza.present
          ? data.totalDestreza.value
          : this.totalDestreza,
      totalConstituicao: data.totalConstituicao.present
          ? data.totalConstituicao.value
          : this.totalConstituicao,
      totalInteligencia: data.totalInteligencia.present
          ? data.totalInteligencia.value
          : this.totalInteligencia,
      totalEspirito: data.totalEspirito.present
          ? data.totalEspirito.value
          : this.totalEspirito,
      totalCarisma: data.totalCarisma.present
          ? data.totalCarisma.value
          : this.totalCarisma,
      passiveTraits: data.passiveTraits.present
          ? data.passiveTraits.value
          : this.passiveTraits,
      activeBuffs: data.activeBuffs.present
          ? data.activeBuffs.value
          : this.activeBuffs,
      activeDebuffs: data.activeDebuffs.present
          ? data.activeDebuffs.value
          : this.activeDebuffs,
      temporalEffects: data.temporalEffects.present
          ? data.temporalEffects.value
          : this.temporalEffects,
      equippedSlots: data.equippedSlots.present
          ? data.equippedSlots.value
          : this.equippedSlots,
      isTester: data.isTester.present ? data.isTester.value : this.isTester,
      isBanned: data.isBanned.present ? data.isBanned.value : this.isBanned,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('nickname: $nickname, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('bio: $bio, ')
          ..write('avatarPath: $avatarPath, ')
          ..write('gender: $gender, ')
          ..write('classe: $classe, ')
          ..write('faccao: $faccao, ')
          ..write('estilo: $estilo, ')
          ..write('rank: $rank, ')
          ..write('classeBaseId: $classeBaseId, ')
          ..write('classeBranchId: $classeBranchId, ')
          ..write('height: $height, ')
          ..write('weight: $weight, ')
          ..write('birthDate: $birthDate, ')
          ..write('level: $level, ')
          ..write('xp: $xp, ')
          ..write('gold: $gold, ')
          ..write('totalXp: $totalXp, ')
          ..write('vitalXp: $vitalXp, ')
          ..write('penaltyXp: $penaltyXp, ')
          ..write('questsCompleted: $questsCompleted, ')
          ..write('questsFailed: $questsFailed, ')
          ..write('questsAbandoned: $questsAbandoned, ')
          ..write('classLevel: $classLevel, ')
          ..write('classXp: $classXp, ')
          ..write('branchLevel: $branchLevel, ')
          ..write('branchXp: $branchXp, ')
          ..write('streakDays: $streakDays, ')
          ..write('disciplineMultiplier: $disciplineMultiplier, ')
          ..write('forca: $forca, ')
          ..write('destreza: $destreza, ')
          ..write('constituicao: $constituicao, ')
          ..write('inteligencia: $inteligencia, ')
          ..write('espirito: $espirito, ')
          ..write('carisma: $carisma, ')
          ..write('bonusForca: $bonusForca, ')
          ..write('bonusDestreza: $bonusDestreza, ')
          ..write('bonusConstituicao: $bonusConstituicao, ')
          ..write('bonusInteligencia: $bonusInteligencia, ')
          ..write('bonusEspirito: $bonusEspirito, ')
          ..write('bonusCarisma: $bonusCarisma, ')
          ..write('totalForca: $totalForca, ')
          ..write('totalDestreza: $totalDestreza, ')
          ..write('totalConstituicao: $totalConstituicao, ')
          ..write('totalInteligencia: $totalInteligencia, ')
          ..write('totalEspirito: $totalEspirito, ')
          ..write('totalCarisma: $totalCarisma, ')
          ..write('passiveTraits: $passiveTraits, ')
          ..write('activeBuffs: $activeBuffs, ')
          ..write('activeDebuffs: $activeDebuffs, ')
          ..write('temporalEffects: $temporalEffects, ')
          ..write('equippedSlots: $equippedSlots, ')
          ..write('isTester: $isTester, ')
          ..write('isBanned: $isBanned, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    name,
    nickname,
    email,
    password,
    bio,
    avatarPath,
    gender,
    classe,
    faccao,
    estilo,
    rank,
    classeBaseId,
    classeBranchId,
    height,
    weight,
    birthDate,
    level,
    xp,
    gold,
    totalXp,
    vitalXp,
    penaltyXp,
    questsCompleted,
    questsFailed,
    questsAbandoned,
    classLevel,
    classXp,
    branchLevel,
    branchXp,
    streakDays,
    disciplineMultiplier,
    forca,
    destreza,
    constituicao,
    inteligencia,
    espirito,
    carisma,
    bonusForca,
    bonusDestreza,
    bonusConstituicao,
    bonusInteligencia,
    bonusEspirito,
    bonusCarisma,
    totalForca,
    totalDestreza,
    totalConstituicao,
    totalInteligencia,
    totalEspirito,
    totalCarisma,
    passiveTraits,
    activeBuffs,
    activeDebuffs,
    temporalEffects,
    equippedSlots,
    isTester,
    isBanned,
    createdAt,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.name == this.name &&
          other.nickname == this.nickname &&
          other.email == this.email &&
          other.password == this.password &&
          other.bio == this.bio &&
          other.avatarPath == this.avatarPath &&
          other.gender == this.gender &&
          other.classe == this.classe &&
          other.faccao == this.faccao &&
          other.estilo == this.estilo &&
          other.rank == this.rank &&
          other.classeBaseId == this.classeBaseId &&
          other.classeBranchId == this.classeBranchId &&
          other.height == this.height &&
          other.weight == this.weight &&
          other.birthDate == this.birthDate &&
          other.level == this.level &&
          other.xp == this.xp &&
          other.gold == this.gold &&
          other.totalXp == this.totalXp &&
          other.vitalXp == this.vitalXp &&
          other.penaltyXp == this.penaltyXp &&
          other.questsCompleted == this.questsCompleted &&
          other.questsFailed == this.questsFailed &&
          other.questsAbandoned == this.questsAbandoned &&
          other.classLevel == this.classLevel &&
          other.classXp == this.classXp &&
          other.branchLevel == this.branchLevel &&
          other.branchXp == this.branchXp &&
          other.streakDays == this.streakDays &&
          other.disciplineMultiplier == this.disciplineMultiplier &&
          other.forca == this.forca &&
          other.destreza == this.destreza &&
          other.constituicao == this.constituicao &&
          other.inteligencia == this.inteligencia &&
          other.espirito == this.espirito &&
          other.carisma == this.carisma &&
          other.bonusForca == this.bonusForca &&
          other.bonusDestreza == this.bonusDestreza &&
          other.bonusConstituicao == this.bonusConstituicao &&
          other.bonusInteligencia == this.bonusInteligencia &&
          other.bonusEspirito == this.bonusEspirito &&
          other.bonusCarisma == this.bonusCarisma &&
          other.totalForca == this.totalForca &&
          other.totalDestreza == this.totalDestreza &&
          other.totalConstituicao == this.totalConstituicao &&
          other.totalInteligencia == this.totalInteligencia &&
          other.totalEspirito == this.totalEspirito &&
          other.totalCarisma == this.totalCarisma &&
          other.passiveTraits == this.passiveTraits &&
          other.activeBuffs == this.activeBuffs &&
          other.activeDebuffs == this.activeDebuffs &&
          other.temporalEffects == this.temporalEffects &&
          other.equippedSlots == this.equippedSlots &&
          other.isTester == this.isTester &&
          other.isBanned == this.isBanned &&
          other.createdAt == this.createdAt);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> id;
  final Value<String?> name;
  final Value<String> nickname;
  final Value<String> email;
  final Value<String> password;
  final Value<String?> bio;
  final Value<String?> avatarPath;
  final Value<String> gender;
  final Value<String?> classe;
  final Value<String?> faccao;
  final Value<String> estilo;
  final Value<String> rank;
  final Value<String> classeBaseId;
  final Value<String?> classeBranchId;
  final Value<double?> height;
  final Value<double?> weight;
  final Value<int?> birthDate;
  final Value<int> level;
  final Value<int> xp;
  final Value<int> gold;
  final Value<int> totalXp;
  final Value<int> vitalXp;
  final Value<int> penaltyXp;
  final Value<int> questsCompleted;
  final Value<int> questsFailed;
  final Value<int> questsAbandoned;
  final Value<int> classLevel;
  final Value<int> classXp;
  final Value<int> branchLevel;
  final Value<int> branchXp;
  final Value<int> streakDays;
  final Value<double> disciplineMultiplier;
  final Value<int> forca;
  final Value<int> destreza;
  final Value<int> constituicao;
  final Value<int> inteligencia;
  final Value<int> espirito;
  final Value<int> carisma;
  final Value<int> bonusForca;
  final Value<int> bonusDestreza;
  final Value<int> bonusConstituicao;
  final Value<int> bonusInteligencia;
  final Value<int> bonusEspirito;
  final Value<int> bonusCarisma;
  final Value<int> totalForca;
  final Value<int> totalDestreza;
  final Value<int> totalConstituicao;
  final Value<int> totalInteligencia;
  final Value<int> totalEspirito;
  final Value<int> totalCarisma;
  final Value<String> passiveTraits;
  final Value<String> activeBuffs;
  final Value<String> activeDebuffs;
  final Value<String> temporalEffects;
  final Value<String> equippedSlots;
  final Value<bool> isTester;
  final Value<bool> isBanned;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.nickname = const Value.absent(),
    this.email = const Value.absent(),
    this.password = const Value.absent(),
    this.bio = const Value.absent(),
    this.avatarPath = const Value.absent(),
    this.gender = const Value.absent(),
    this.classe = const Value.absent(),
    this.faccao = const Value.absent(),
    this.estilo = const Value.absent(),
    this.rank = const Value.absent(),
    this.classeBaseId = const Value.absent(),
    this.classeBranchId = const Value.absent(),
    this.height = const Value.absent(),
    this.weight = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.level = const Value.absent(),
    this.xp = const Value.absent(),
    this.gold = const Value.absent(),
    this.totalXp = const Value.absent(),
    this.vitalXp = const Value.absent(),
    this.penaltyXp = const Value.absent(),
    this.questsCompleted = const Value.absent(),
    this.questsFailed = const Value.absent(),
    this.questsAbandoned = const Value.absent(),
    this.classLevel = const Value.absent(),
    this.classXp = const Value.absent(),
    this.branchLevel = const Value.absent(),
    this.branchXp = const Value.absent(),
    this.streakDays = const Value.absent(),
    this.disciplineMultiplier = const Value.absent(),
    this.forca = const Value.absent(),
    this.destreza = const Value.absent(),
    this.constituicao = const Value.absent(),
    this.inteligencia = const Value.absent(),
    this.espirito = const Value.absent(),
    this.carisma = const Value.absent(),
    this.bonusForca = const Value.absent(),
    this.bonusDestreza = const Value.absent(),
    this.bonusConstituicao = const Value.absent(),
    this.bonusInteligencia = const Value.absent(),
    this.bonusEspirito = const Value.absent(),
    this.bonusCarisma = const Value.absent(),
    this.totalForca = const Value.absent(),
    this.totalDestreza = const Value.absent(),
    this.totalConstituicao = const Value.absent(),
    this.totalInteligencia = const Value.absent(),
    this.totalEspirito = const Value.absent(),
    this.totalCarisma = const Value.absent(),
    this.passiveTraits = const Value.absent(),
    this.activeBuffs = const Value.absent(),
    this.activeDebuffs = const Value.absent(),
    this.temporalEffects = const Value.absent(),
    this.equippedSlots = const Value.absent(),
    this.isTester = const Value.absent(),
    this.isBanned = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UsersCompanion.insert({
    required String id,
    this.name = const Value.absent(),
    required String nickname,
    required String email,
    required String password,
    this.bio = const Value.absent(),
    this.avatarPath = const Value.absent(),
    this.gender = const Value.absent(),
    this.classe = const Value.absent(),
    this.faccao = const Value.absent(),
    this.estilo = const Value.absent(),
    this.rank = const Value.absent(),
    this.classeBaseId = const Value.absent(),
    this.classeBranchId = const Value.absent(),
    this.height = const Value.absent(),
    this.weight = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.level = const Value.absent(),
    this.xp = const Value.absent(),
    this.gold = const Value.absent(),
    this.totalXp = const Value.absent(),
    this.vitalXp = const Value.absent(),
    this.penaltyXp = const Value.absent(),
    this.questsCompleted = const Value.absent(),
    this.questsFailed = const Value.absent(),
    this.questsAbandoned = const Value.absent(),
    this.classLevel = const Value.absent(),
    this.classXp = const Value.absent(),
    this.branchLevel = const Value.absent(),
    this.branchXp = const Value.absent(),
    this.streakDays = const Value.absent(),
    this.disciplineMultiplier = const Value.absent(),
    this.forca = const Value.absent(),
    this.destreza = const Value.absent(),
    this.constituicao = const Value.absent(),
    this.inteligencia = const Value.absent(),
    this.espirito = const Value.absent(),
    this.carisma = const Value.absent(),
    this.bonusForca = const Value.absent(),
    this.bonusDestreza = const Value.absent(),
    this.bonusConstituicao = const Value.absent(),
    this.bonusInteligencia = const Value.absent(),
    this.bonusEspirito = const Value.absent(),
    this.bonusCarisma = const Value.absent(),
    this.totalForca = const Value.absent(),
    this.totalDestreza = const Value.absent(),
    this.totalConstituicao = const Value.absent(),
    this.totalInteligencia = const Value.absent(),
    this.totalEspirito = const Value.absent(),
    this.totalCarisma = const Value.absent(),
    this.passiveTraits = const Value.absent(),
    this.activeBuffs = const Value.absent(),
    this.activeDebuffs = const Value.absent(),
    this.temporalEffects = const Value.absent(),
    this.equippedSlots = const Value.absent(),
    this.isTester = const Value.absent(),
    this.isBanned = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       nickname = Value(nickname),
       email = Value(email),
       password = Value(password);
  static Insertable<User> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? nickname,
    Expression<String>? email,
    Expression<String>? password,
    Expression<String>? bio,
    Expression<String>? avatarPath,
    Expression<String>? gender,
    Expression<String>? classe,
    Expression<String>? faccao,
    Expression<String>? estilo,
    Expression<String>? rank,
    Expression<String>? classeBaseId,
    Expression<String>? classeBranchId,
    Expression<double>? height,
    Expression<double>? weight,
    Expression<int>? birthDate,
    Expression<int>? level,
    Expression<int>? xp,
    Expression<int>? gold,
    Expression<int>? totalXp,
    Expression<int>? vitalXp,
    Expression<int>? penaltyXp,
    Expression<int>? questsCompleted,
    Expression<int>? questsFailed,
    Expression<int>? questsAbandoned,
    Expression<int>? classLevel,
    Expression<int>? classXp,
    Expression<int>? branchLevel,
    Expression<int>? branchXp,
    Expression<int>? streakDays,
    Expression<double>? disciplineMultiplier,
    Expression<int>? forca,
    Expression<int>? destreza,
    Expression<int>? constituicao,
    Expression<int>? inteligencia,
    Expression<int>? espirito,
    Expression<int>? carisma,
    Expression<int>? bonusForca,
    Expression<int>? bonusDestreza,
    Expression<int>? bonusConstituicao,
    Expression<int>? bonusInteligencia,
    Expression<int>? bonusEspirito,
    Expression<int>? bonusCarisma,
    Expression<int>? totalForca,
    Expression<int>? totalDestreza,
    Expression<int>? totalConstituicao,
    Expression<int>? totalInteligencia,
    Expression<int>? totalEspirito,
    Expression<int>? totalCarisma,
    Expression<String>? passiveTraits,
    Expression<String>? activeBuffs,
    Expression<String>? activeDebuffs,
    Expression<String>? temporalEffects,
    Expression<String>? equippedSlots,
    Expression<bool>? isTester,
    Expression<bool>? isBanned,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (nickname != null) 'nickname': nickname,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (bio != null) 'bio': bio,
      if (avatarPath != null) 'avatar_path': avatarPath,
      if (gender != null) 'gender': gender,
      if (classe != null) 'classe': classe,
      if (faccao != null) 'faccao': faccao,
      if (estilo != null) 'estilo': estilo,
      if (rank != null) 'rank': rank,
      if (classeBaseId != null) 'classe_base_id': classeBaseId,
      if (classeBranchId != null) 'classe_branch_id': classeBranchId,
      if (height != null) 'height': height,
      if (weight != null) 'weight': weight,
      if (birthDate != null) 'birth_date': birthDate,
      if (level != null) 'level': level,
      if (xp != null) 'xp': xp,
      if (gold != null) 'gold': gold,
      if (totalXp != null) 'total_xp': totalXp,
      if (vitalXp != null) 'vital_xp': vitalXp,
      if (penaltyXp != null) 'penalty_xp': penaltyXp,
      if (questsCompleted != null) 'quests_completed': questsCompleted,
      if (questsFailed != null) 'quests_failed': questsFailed,
      if (questsAbandoned != null) 'quests_abandoned': questsAbandoned,
      if (classLevel != null) 'class_level': classLevel,
      if (classXp != null) 'class_xp': classXp,
      if (branchLevel != null) 'branch_level': branchLevel,
      if (branchXp != null) 'branch_xp': branchXp,
      if (streakDays != null) 'streak_days': streakDays,
      if (disciplineMultiplier != null)
        'discipline_multiplier': disciplineMultiplier,
      if (forca != null) 'forca': forca,
      if (destreza != null) 'destreza': destreza,
      if (constituicao != null) 'constituicao': constituicao,
      if (inteligencia != null) 'inteligencia': inteligencia,
      if (espirito != null) 'espirito': espirito,
      if (carisma != null) 'carisma': carisma,
      if (bonusForca != null) 'bonus_forca': bonusForca,
      if (bonusDestreza != null) 'bonus_destreza': bonusDestreza,
      if (bonusConstituicao != null) 'bonus_constituicao': bonusConstituicao,
      if (bonusInteligencia != null) 'bonus_inteligencia': bonusInteligencia,
      if (bonusEspirito != null) 'bonus_espirito': bonusEspirito,
      if (bonusCarisma != null) 'bonus_carisma': bonusCarisma,
      if (totalForca != null) 'total_forca': totalForca,
      if (totalDestreza != null) 'total_destreza': totalDestreza,
      if (totalConstituicao != null) 'total_constituicao': totalConstituicao,
      if (totalInteligencia != null) 'total_inteligencia': totalInteligencia,
      if (totalEspirito != null) 'total_espirito': totalEspirito,
      if (totalCarisma != null) 'total_carisma': totalCarisma,
      if (passiveTraits != null) 'passive_traits': passiveTraits,
      if (activeBuffs != null) 'active_buffs': activeBuffs,
      if (activeDebuffs != null) 'active_debuffs': activeDebuffs,
      if (temporalEffects != null) 'temporal_effects': temporalEffects,
      if (equippedSlots != null) 'equipped_slots': equippedSlots,
      if (isTester != null) 'is_tester': isTester,
      if (isBanned != null) 'is_banned': isBanned,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UsersCompanion copyWith({
    Value<String>? id,
    Value<String?>? name,
    Value<String>? nickname,
    Value<String>? email,
    Value<String>? password,
    Value<String?>? bio,
    Value<String?>? avatarPath,
    Value<String>? gender,
    Value<String?>? classe,
    Value<String?>? faccao,
    Value<String>? estilo,
    Value<String>? rank,
    Value<String>? classeBaseId,
    Value<String?>? classeBranchId,
    Value<double?>? height,
    Value<double?>? weight,
    Value<int?>? birthDate,
    Value<int>? level,
    Value<int>? xp,
    Value<int>? gold,
    Value<int>? totalXp,
    Value<int>? vitalXp,
    Value<int>? penaltyXp,
    Value<int>? questsCompleted,
    Value<int>? questsFailed,
    Value<int>? questsAbandoned,
    Value<int>? classLevel,
    Value<int>? classXp,
    Value<int>? branchLevel,
    Value<int>? branchXp,
    Value<int>? streakDays,
    Value<double>? disciplineMultiplier,
    Value<int>? forca,
    Value<int>? destreza,
    Value<int>? constituicao,
    Value<int>? inteligencia,
    Value<int>? espirito,
    Value<int>? carisma,
    Value<int>? bonusForca,
    Value<int>? bonusDestreza,
    Value<int>? bonusConstituicao,
    Value<int>? bonusInteligencia,
    Value<int>? bonusEspirito,
    Value<int>? bonusCarisma,
    Value<int>? totalForca,
    Value<int>? totalDestreza,
    Value<int>? totalConstituicao,
    Value<int>? totalInteligencia,
    Value<int>? totalEspirito,
    Value<int>? totalCarisma,
    Value<String>? passiveTraits,
    Value<String>? activeBuffs,
    Value<String>? activeDebuffs,
    Value<String>? temporalEffects,
    Value<String>? equippedSlots,
    Value<bool>? isTester,
    Value<bool>? isBanned,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return UsersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      nickname: nickname ?? this.nickname,
      email: email ?? this.email,
      password: password ?? this.password,
      bio: bio ?? this.bio,
      avatarPath: avatarPath ?? this.avatarPath,
      gender: gender ?? this.gender,
      classe: classe ?? this.classe,
      faccao: faccao ?? this.faccao,
      estilo: estilo ?? this.estilo,
      rank: rank ?? this.rank,
      classeBaseId: classeBaseId ?? this.classeBaseId,
      classeBranchId: classeBranchId ?? this.classeBranchId,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      birthDate: birthDate ?? this.birthDate,
      level: level ?? this.level,
      xp: xp ?? this.xp,
      gold: gold ?? this.gold,
      totalXp: totalXp ?? this.totalXp,
      vitalXp: vitalXp ?? this.vitalXp,
      penaltyXp: penaltyXp ?? this.penaltyXp,
      questsCompleted: questsCompleted ?? this.questsCompleted,
      questsFailed: questsFailed ?? this.questsFailed,
      questsAbandoned: questsAbandoned ?? this.questsAbandoned,
      classLevel: classLevel ?? this.classLevel,
      classXp: classXp ?? this.classXp,
      branchLevel: branchLevel ?? this.branchLevel,
      branchXp: branchXp ?? this.branchXp,
      streakDays: streakDays ?? this.streakDays,
      disciplineMultiplier: disciplineMultiplier ?? this.disciplineMultiplier,
      forca: forca ?? this.forca,
      destreza: destreza ?? this.destreza,
      constituicao: constituicao ?? this.constituicao,
      inteligencia: inteligencia ?? this.inteligencia,
      espirito: espirito ?? this.espirito,
      carisma: carisma ?? this.carisma,
      bonusForca: bonusForca ?? this.bonusForca,
      bonusDestreza: bonusDestreza ?? this.bonusDestreza,
      bonusConstituicao: bonusConstituicao ?? this.bonusConstituicao,
      bonusInteligencia: bonusInteligencia ?? this.bonusInteligencia,
      bonusEspirito: bonusEspirito ?? this.bonusEspirito,
      bonusCarisma: bonusCarisma ?? this.bonusCarisma,
      totalForca: totalForca ?? this.totalForca,
      totalDestreza: totalDestreza ?? this.totalDestreza,
      totalConstituicao: totalConstituicao ?? this.totalConstituicao,
      totalInteligencia: totalInteligencia ?? this.totalInteligencia,
      totalEspirito: totalEspirito ?? this.totalEspirito,
      totalCarisma: totalCarisma ?? this.totalCarisma,
      passiveTraits: passiveTraits ?? this.passiveTraits,
      activeBuffs: activeBuffs ?? this.activeBuffs,
      activeDebuffs: activeDebuffs ?? this.activeDebuffs,
      temporalEffects: temporalEffects ?? this.temporalEffects,
      equippedSlots: equippedSlots ?? this.equippedSlots,
      isTester: isTester ?? this.isTester,
      isBanned: isBanned ?? this.isBanned,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (nickname.present) {
      map['nickname'] = Variable<String>(nickname.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (bio.present) {
      map['bio'] = Variable<String>(bio.value);
    }
    if (avatarPath.present) {
      map['avatar_path'] = Variable<String>(avatarPath.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (classe.present) {
      map['classe'] = Variable<String>(classe.value);
    }
    if (faccao.present) {
      map['faccao'] = Variable<String>(faccao.value);
    }
    if (estilo.present) {
      map['estilo'] = Variable<String>(estilo.value);
    }
    if (rank.present) {
      map['rank'] = Variable<String>(rank.value);
    }
    if (classeBaseId.present) {
      map['classe_base_id'] = Variable<String>(classeBaseId.value);
    }
    if (classeBranchId.present) {
      map['classe_branch_id'] = Variable<String>(classeBranchId.value);
    }
    if (height.present) {
      map['height'] = Variable<double>(height.value);
    }
    if (weight.present) {
      map['weight'] = Variable<double>(weight.value);
    }
    if (birthDate.present) {
      map['birth_date'] = Variable<int>(birthDate.value);
    }
    if (level.present) {
      map['level'] = Variable<int>(level.value);
    }
    if (xp.present) {
      map['xp'] = Variable<int>(xp.value);
    }
    if (gold.present) {
      map['gold'] = Variable<int>(gold.value);
    }
    if (totalXp.present) {
      map['total_xp'] = Variable<int>(totalXp.value);
    }
    if (vitalXp.present) {
      map['vital_xp'] = Variable<int>(vitalXp.value);
    }
    if (penaltyXp.present) {
      map['penalty_xp'] = Variable<int>(penaltyXp.value);
    }
    if (questsCompleted.present) {
      map['quests_completed'] = Variable<int>(questsCompleted.value);
    }
    if (questsFailed.present) {
      map['quests_failed'] = Variable<int>(questsFailed.value);
    }
    if (questsAbandoned.present) {
      map['quests_abandoned'] = Variable<int>(questsAbandoned.value);
    }
    if (classLevel.present) {
      map['class_level'] = Variable<int>(classLevel.value);
    }
    if (classXp.present) {
      map['class_xp'] = Variable<int>(classXp.value);
    }
    if (branchLevel.present) {
      map['branch_level'] = Variable<int>(branchLevel.value);
    }
    if (branchXp.present) {
      map['branch_xp'] = Variable<int>(branchXp.value);
    }
    if (streakDays.present) {
      map['streak_days'] = Variable<int>(streakDays.value);
    }
    if (disciplineMultiplier.present) {
      map['discipline_multiplier'] = Variable<double>(
        disciplineMultiplier.value,
      );
    }
    if (forca.present) {
      map['forca'] = Variable<int>(forca.value);
    }
    if (destreza.present) {
      map['destreza'] = Variable<int>(destreza.value);
    }
    if (constituicao.present) {
      map['constituicao'] = Variable<int>(constituicao.value);
    }
    if (inteligencia.present) {
      map['inteligencia'] = Variable<int>(inteligencia.value);
    }
    if (espirito.present) {
      map['espirito'] = Variable<int>(espirito.value);
    }
    if (carisma.present) {
      map['carisma'] = Variable<int>(carisma.value);
    }
    if (bonusForca.present) {
      map['bonus_forca'] = Variable<int>(bonusForca.value);
    }
    if (bonusDestreza.present) {
      map['bonus_destreza'] = Variable<int>(bonusDestreza.value);
    }
    if (bonusConstituicao.present) {
      map['bonus_constituicao'] = Variable<int>(bonusConstituicao.value);
    }
    if (bonusInteligencia.present) {
      map['bonus_inteligencia'] = Variable<int>(bonusInteligencia.value);
    }
    if (bonusEspirito.present) {
      map['bonus_espirito'] = Variable<int>(bonusEspirito.value);
    }
    if (bonusCarisma.present) {
      map['bonus_carisma'] = Variable<int>(bonusCarisma.value);
    }
    if (totalForca.present) {
      map['total_forca'] = Variable<int>(totalForca.value);
    }
    if (totalDestreza.present) {
      map['total_destreza'] = Variable<int>(totalDestreza.value);
    }
    if (totalConstituicao.present) {
      map['total_constituicao'] = Variable<int>(totalConstituicao.value);
    }
    if (totalInteligencia.present) {
      map['total_inteligencia'] = Variable<int>(totalInteligencia.value);
    }
    if (totalEspirito.present) {
      map['total_espirito'] = Variable<int>(totalEspirito.value);
    }
    if (totalCarisma.present) {
      map['total_carisma'] = Variable<int>(totalCarisma.value);
    }
    if (passiveTraits.present) {
      map['passive_traits'] = Variable<String>(passiveTraits.value);
    }
    if (activeBuffs.present) {
      map['active_buffs'] = Variable<String>(activeBuffs.value);
    }
    if (activeDebuffs.present) {
      map['active_debuffs'] = Variable<String>(activeDebuffs.value);
    }
    if (temporalEffects.present) {
      map['temporal_effects'] = Variable<String>(temporalEffects.value);
    }
    if (equippedSlots.present) {
      map['equipped_slots'] = Variable<String>(equippedSlots.value);
    }
    if (isTester.present) {
      map['is_tester'] = Variable<bool>(isTester.value);
    }
    if (isBanned.present) {
      map['is_banned'] = Variable<bool>(isBanned.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('nickname: $nickname, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('bio: $bio, ')
          ..write('avatarPath: $avatarPath, ')
          ..write('gender: $gender, ')
          ..write('classe: $classe, ')
          ..write('faccao: $faccao, ')
          ..write('estilo: $estilo, ')
          ..write('rank: $rank, ')
          ..write('classeBaseId: $classeBaseId, ')
          ..write('classeBranchId: $classeBranchId, ')
          ..write('height: $height, ')
          ..write('weight: $weight, ')
          ..write('birthDate: $birthDate, ')
          ..write('level: $level, ')
          ..write('xp: $xp, ')
          ..write('gold: $gold, ')
          ..write('totalXp: $totalXp, ')
          ..write('vitalXp: $vitalXp, ')
          ..write('penaltyXp: $penaltyXp, ')
          ..write('questsCompleted: $questsCompleted, ')
          ..write('questsFailed: $questsFailed, ')
          ..write('questsAbandoned: $questsAbandoned, ')
          ..write('classLevel: $classLevel, ')
          ..write('classXp: $classXp, ')
          ..write('branchLevel: $branchLevel, ')
          ..write('branchXp: $branchXp, ')
          ..write('streakDays: $streakDays, ')
          ..write('disciplineMultiplier: $disciplineMultiplier, ')
          ..write('forca: $forca, ')
          ..write('destreza: $destreza, ')
          ..write('constituicao: $constituicao, ')
          ..write('inteligencia: $inteligencia, ')
          ..write('espirito: $espirito, ')
          ..write('carisma: $carisma, ')
          ..write('bonusForca: $bonusForca, ')
          ..write('bonusDestreza: $bonusDestreza, ')
          ..write('bonusConstituicao: $bonusConstituicao, ')
          ..write('bonusInteligencia: $bonusInteligencia, ')
          ..write('bonusEspirito: $bonusEspirito, ')
          ..write('bonusCarisma: $bonusCarisma, ')
          ..write('totalForca: $totalForca, ')
          ..write('totalDestreza: $totalDestreza, ')
          ..write('totalConstituicao: $totalConstituicao, ')
          ..write('totalInteligencia: $totalInteligencia, ')
          ..write('totalEspirito: $totalEspirito, ')
          ..write('totalCarisma: $totalCarisma, ')
          ..write('passiveTraits: $passiveTraits, ')
          ..write('activeBuffs: $activeBuffs, ')
          ..write('activeDebuffs: $activeDebuffs, ')
          ..write('temporalEffects: $temporalEffects, ')
          ..write('equippedSlots: $equippedSlots, ')
          ..write('isTester: $isTester, ')
          ..write('isBanned: $isBanned, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $QuestTemplatesTable extends QuestTemplates
    with TableInfo<$QuestTemplatesTable, QuestTemplate> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuestTemplatesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _subtitleMeta = const VerificationMeta(
    'subtitle',
  );
  @override
  late final GeneratedColumn<String> subtitle = GeneratedColumn<String>(
    'subtitle',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _originMeta = const VerificationMeta('origin');
  @override
  late final GeneratedColumn<String> origin = GeneratedColumn<String>(
    'origin',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdByUserIdMeta = const VerificationMeta(
    'createdByUserId',
  );
  @override
  late final GeneratedColumn<String> createdByUserId = GeneratedColumn<String>(
    'created_by_user_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isEditableMeta = const VerificationMeta(
    'isEditable',
  );
  @override
  late final GeneratedColumn<bool> isEditable = GeneratedColumn<bool>(
    'is_editable',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_editable" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _isDeletableMeta = const VerificationMeta(
    'isDeletable',
  );
  @override
  late final GeneratedColumn<bool> isDeletable = GeneratedColumn<bool>(
    'is_deletable',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_deletable" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _isUserScopedMeta = const VerificationMeta(
    'isUserScoped',
  );
  @override
  late final GeneratedColumn<bool> isUserScoped = GeneratedColumn<bool>(
    'is_user_scoped',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_user_scoped" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoriesJsonMeta = const VerificationMeta(
    'categoriesJson',
  );
  @override
  late final GeneratedColumn<String> categoriesJson = GeneratedColumn<String>(
    'categories_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('[]'),
  );
  static const VerificationMeta _difficultyMeta = const VerificationMeta(
    'difficulty',
  );
  @override
  late final GeneratedColumn<String> difficulty = GeneratedColumn<String>(
    'difficulty',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('normal'),
  );
  static const VerificationMeta _rankMeta = const VerificationMeta('rank');
  @override
  late final GeneratedColumn<String> rank = GeneratedColumn<String>(
    'rank',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _requiredPlayerRankMeta =
      const VerificationMeta('requiredPlayerRank');
  @override
  late final GeneratedColumn<String> requiredPlayerRank =
      GeneratedColumn<String>(
        'required_player_rank',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _requiredLevelMeta = const VerificationMeta(
    'requiredLevel',
  );
  @override
  late final GeneratedColumn<int> requiredLevel = GeneratedColumn<int>(
    'required_level',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _requiredClassIdsJsonMeta =
      const VerificationMeta('requiredClassIdsJson');
  @override
  late final GeneratedColumn<String> requiredClassIdsJson =
      GeneratedColumn<String>(
        'required_class_ids_json',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('[]'),
      );
  static const VerificationMeta _requiredFactionIdsJsonMeta =
      const VerificationMeta('requiredFactionIdsJson');
  @override
  late final GeneratedColumn<String> requiredFactionIdsJson =
      GeneratedColumn<String>(
        'required_faction_ids_json',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('[]'),
      );
  static const VerificationMeta _prerequisiteQuestIdsJsonMeta =
      const VerificationMeta('prerequisiteQuestIdsJson');
  @override
  late final GeneratedColumn<String> prerequisiteQuestIdsJson =
      GeneratedColumn<String>(
        'prerequisite_quest_ids_json',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('[]'),
      );
  static const VerificationMeta _baseXpRewardMeta = const VerificationMeta(
    'baseXpReward',
  );
  @override
  late final GeneratedColumn<int> baseXpReward = GeneratedColumn<int>(
    'base_xp_reward',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _vitalXpRewardMeta = const VerificationMeta(
    'vitalXpReward',
  );
  @override
  late final GeneratedColumn<int> vitalXpReward = GeneratedColumn<int>(
    'vital_xp_reward',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _penaltyXpOnFailMeta = const VerificationMeta(
    'penaltyXpOnFail',
  );
  @override
  late final GeneratedColumn<int> penaltyXpOnFail = GeneratedColumn<int>(
    'penalty_xp_on_fail',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _goldRewardMeta = const VerificationMeta(
    'goldReward',
  );
  @override
  late final GeneratedColumn<int> goldReward = GeneratedColumn<int>(
    'gold_reward',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _itemRewardIdsJsonMeta = const VerificationMeta(
    'itemRewardIdsJson',
  );
  @override
  late final GeneratedColumn<String> itemRewardIdsJson =
      GeneratedColumn<String>(
        'item_reward_ids_json',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('[]'),
      );
  static const VerificationMeta _attributeRewardsJsonMeta =
      const VerificationMeta('attributeRewardsJson');
  @override
  late final GeneratedColumn<String> attributeRewardsJson =
      GeneratedColumn<String>(
        'attribute_rewards_json',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('{}'),
      );
  static const VerificationMeta _itemDropChanceMeta = const VerificationMeta(
    'itemDropChance',
  );
  @override
  late final GeneratedColumn<double> itemDropChance = GeneratedColumn<double>(
    'item_drop_chance',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _possibleItemDropsJsonMeta =
      const VerificationMeta('possibleItemDropsJson');
  @override
  late final GeneratedColumn<String> possibleItemDropsJson =
      GeneratedColumn<String>(
        'possible_item_drops_json',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('[]'),
      );
  static const VerificationMeta _isDailyMeta = const VerificationMeta(
    'isDaily',
  );
  @override
  late final GeneratedColumn<bool> isDaily = GeneratedColumn<bool>(
    'is_daily',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_daily" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _isRepeatableMeta = const VerificationMeta(
    'isRepeatable',
  );
  @override
  late final GeneratedColumn<bool> isRepeatable = GeneratedColumn<bool>(
    'is_repeatable',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_repeatable" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _maxDailyCompletionsMeta =
      const VerificationMeta('maxDailyCompletions');
  @override
  late final GeneratedColumn<int> maxDailyCompletions = GeneratedColumn<int>(
    'max_daily_completions',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _availableFromMeta = const VerificationMeta(
    'availableFrom',
  );
  @override
  late final GeneratedColumn<DateTime> availableFrom =
      GeneratedColumn<DateTime>(
        'available_from',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _availableUntilMeta = const VerificationMeta(
    'availableUntil',
  );
  @override
  late final GeneratedColumn<DateTime> availableUntil =
      GeneratedColumn<DateTime>(
        'available_until',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _isCoopMeta = const VerificationMeta('isCoop');
  @override
  late final GeneratedColumn<bool> isCoop = GeneratedColumn<bool>(
    'is_coop',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_coop" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _minPartySizeMeta = const VerificationMeta(
    'minPartySize',
  );
  @override
  late final GeneratedColumn<int> minPartySize = GeneratedColumn<int>(
    'min_party_size',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _maxPartySizeMeta = const VerificationMeta(
    'maxPartySize',
  );
  @override
  late final GeneratedColumn<int> maxPartySize = GeneratedColumn<int>(
    'max_party_size',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _trackingTypeMeta = const VerificationMeta(
    'trackingType',
  );
  @override
  late final GeneratedColumn<String> trackingType = GeneratedColumn<String>(
    'tracking_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('manual'),
  );
  static const VerificationMeta _trackingUnitMeta = const VerificationMeta(
    'trackingUnit',
  );
  @override
  late final GeneratedColumn<String> trackingUnit = GeneratedColumn<String>(
    'tracking_unit',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('none'),
  );
  static const VerificationMeta _defaultTargetProgressMeta =
      const VerificationMeta('defaultTargetProgress');
  @override
  late final GeneratedColumn<int> defaultTargetProgress = GeneratedColumn<int>(
    'default_target_progress',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _autoCompleteFromAppMeta =
      const VerificationMeta('autoCompleteFromApp');
  @override
  late final GeneratedColumn<bool> autoCompleteFromApp = GeneratedColumn<bool>(
    'auto_complete_from_app',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("auto_complete_from_app" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _autoCompleteEventKeyMeta =
      const VerificationMeta('autoCompleteEventKey');
  @override
  late final GeneratedColumn<String> autoCompleteEventKey =
      GeneratedColumn<String>(
        'auto_complete_event_key',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _linkedContentTypeMeta = const VerificationMeta(
    'linkedContentType',
  );
  @override
  late final GeneratedColumn<String> linkedContentType =
      GeneratedColumn<String>(
        'linked_content_type',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('none'),
      );
  static const VerificationMeta _linkedContentIdMeta = const VerificationMeta(
    'linkedContentId',
  );
  @override
  late final GeneratedColumn<String> linkedContentId = GeneratedColumn<String>(
    'linked_content_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _trackingMetaJsonMeta = const VerificationMeta(
    'trackingMetaJson',
  );
  @override
  late final GeneratedColumn<String> trackingMetaJson = GeneratedColumn<String>(
    'tracking_meta_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('{}'),
  );
  static const VerificationMeta _stepsJsonMeta = const VerificationMeta(
    'stepsJson',
  );
  @override
  late final GeneratedColumn<String> stepsJson = GeneratedColumn<String>(
    'steps_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('[]'),
  );
  static const VerificationMeta _metaJsonMeta = const VerificationMeta(
    'metaJson',
  );
  @override
  late final GeneratedColumn<String> metaJson = GeneratedColumn<String>(
    'meta_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('{}'),
  );
  static const VerificationMeta _autoRewardBySystemMeta =
      const VerificationMeta('autoRewardBySystem');
  @override
  late final GeneratedColumn<bool> autoRewardBySystem = GeneratedColumn<bool>(
    'auto_reward_by_system',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("auto_reward_by_system" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    subtitle,
    description,
    origin,
    createdByUserId,
    isEditable,
    isDeletable,
    isUserScoped,
    type,
    categoriesJson,
    difficulty,
    rank,
    requiredPlayerRank,
    requiredLevel,
    requiredClassIdsJson,
    requiredFactionIdsJson,
    prerequisiteQuestIdsJson,
    baseXpReward,
    vitalXpReward,
    penaltyXpOnFail,
    goldReward,
    itemRewardIdsJson,
    attributeRewardsJson,
    itemDropChance,
    possibleItemDropsJson,
    isDaily,
    isRepeatable,
    maxDailyCompletions,
    availableFrom,
    availableUntil,
    isCoop,
    minPartySize,
    maxPartySize,
    trackingType,
    trackingUnit,
    defaultTargetProgress,
    autoCompleteFromApp,
    autoCompleteEventKey,
    linkedContentType,
    linkedContentId,
    trackingMetaJson,
    stepsJson,
    metaJson,
    autoRewardBySystem,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'quest_templates';
  @override
  VerificationContext validateIntegrity(
    Insertable<QuestTemplate> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('subtitle')) {
      context.handle(
        _subtitleMeta,
        subtitle.isAcceptableOrUnknown(data['subtitle']!, _subtitleMeta),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('origin')) {
      context.handle(
        _originMeta,
        origin.isAcceptableOrUnknown(data['origin']!, _originMeta),
      );
    } else if (isInserting) {
      context.missing(_originMeta);
    }
    if (data.containsKey('created_by_user_id')) {
      context.handle(
        _createdByUserIdMeta,
        createdByUserId.isAcceptableOrUnknown(
          data['created_by_user_id']!,
          _createdByUserIdMeta,
        ),
      );
    }
    if (data.containsKey('is_editable')) {
      context.handle(
        _isEditableMeta,
        isEditable.isAcceptableOrUnknown(data['is_editable']!, _isEditableMeta),
      );
    }
    if (data.containsKey('is_deletable')) {
      context.handle(
        _isDeletableMeta,
        isDeletable.isAcceptableOrUnknown(
          data['is_deletable']!,
          _isDeletableMeta,
        ),
      );
    }
    if (data.containsKey('is_user_scoped')) {
      context.handle(
        _isUserScopedMeta,
        isUserScoped.isAcceptableOrUnknown(
          data['is_user_scoped']!,
          _isUserScopedMeta,
        ),
      );
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('categories_json')) {
      context.handle(
        _categoriesJsonMeta,
        categoriesJson.isAcceptableOrUnknown(
          data['categories_json']!,
          _categoriesJsonMeta,
        ),
      );
    }
    if (data.containsKey('difficulty')) {
      context.handle(
        _difficultyMeta,
        difficulty.isAcceptableOrUnknown(data['difficulty']!, _difficultyMeta),
      );
    }
    if (data.containsKey('rank')) {
      context.handle(
        _rankMeta,
        rank.isAcceptableOrUnknown(data['rank']!, _rankMeta),
      );
    }
    if (data.containsKey('required_player_rank')) {
      context.handle(
        _requiredPlayerRankMeta,
        requiredPlayerRank.isAcceptableOrUnknown(
          data['required_player_rank']!,
          _requiredPlayerRankMeta,
        ),
      );
    }
    if (data.containsKey('required_level')) {
      context.handle(
        _requiredLevelMeta,
        requiredLevel.isAcceptableOrUnknown(
          data['required_level']!,
          _requiredLevelMeta,
        ),
      );
    }
    if (data.containsKey('required_class_ids_json')) {
      context.handle(
        _requiredClassIdsJsonMeta,
        requiredClassIdsJson.isAcceptableOrUnknown(
          data['required_class_ids_json']!,
          _requiredClassIdsJsonMeta,
        ),
      );
    }
    if (data.containsKey('required_faction_ids_json')) {
      context.handle(
        _requiredFactionIdsJsonMeta,
        requiredFactionIdsJson.isAcceptableOrUnknown(
          data['required_faction_ids_json']!,
          _requiredFactionIdsJsonMeta,
        ),
      );
    }
    if (data.containsKey('prerequisite_quest_ids_json')) {
      context.handle(
        _prerequisiteQuestIdsJsonMeta,
        prerequisiteQuestIdsJson.isAcceptableOrUnknown(
          data['prerequisite_quest_ids_json']!,
          _prerequisiteQuestIdsJsonMeta,
        ),
      );
    }
    if (data.containsKey('base_xp_reward')) {
      context.handle(
        _baseXpRewardMeta,
        baseXpReward.isAcceptableOrUnknown(
          data['base_xp_reward']!,
          _baseXpRewardMeta,
        ),
      );
    }
    if (data.containsKey('vital_xp_reward')) {
      context.handle(
        _vitalXpRewardMeta,
        vitalXpReward.isAcceptableOrUnknown(
          data['vital_xp_reward']!,
          _vitalXpRewardMeta,
        ),
      );
    }
    if (data.containsKey('penalty_xp_on_fail')) {
      context.handle(
        _penaltyXpOnFailMeta,
        penaltyXpOnFail.isAcceptableOrUnknown(
          data['penalty_xp_on_fail']!,
          _penaltyXpOnFailMeta,
        ),
      );
    }
    if (data.containsKey('gold_reward')) {
      context.handle(
        _goldRewardMeta,
        goldReward.isAcceptableOrUnknown(data['gold_reward']!, _goldRewardMeta),
      );
    }
    if (data.containsKey('item_reward_ids_json')) {
      context.handle(
        _itemRewardIdsJsonMeta,
        itemRewardIdsJson.isAcceptableOrUnknown(
          data['item_reward_ids_json']!,
          _itemRewardIdsJsonMeta,
        ),
      );
    }
    if (data.containsKey('attribute_rewards_json')) {
      context.handle(
        _attributeRewardsJsonMeta,
        attributeRewardsJson.isAcceptableOrUnknown(
          data['attribute_rewards_json']!,
          _attributeRewardsJsonMeta,
        ),
      );
    }
    if (data.containsKey('item_drop_chance')) {
      context.handle(
        _itemDropChanceMeta,
        itemDropChance.isAcceptableOrUnknown(
          data['item_drop_chance']!,
          _itemDropChanceMeta,
        ),
      );
    }
    if (data.containsKey('possible_item_drops_json')) {
      context.handle(
        _possibleItemDropsJsonMeta,
        possibleItemDropsJson.isAcceptableOrUnknown(
          data['possible_item_drops_json']!,
          _possibleItemDropsJsonMeta,
        ),
      );
    }
    if (data.containsKey('is_daily')) {
      context.handle(
        _isDailyMeta,
        isDaily.isAcceptableOrUnknown(data['is_daily']!, _isDailyMeta),
      );
    }
    if (data.containsKey('is_repeatable')) {
      context.handle(
        _isRepeatableMeta,
        isRepeatable.isAcceptableOrUnknown(
          data['is_repeatable']!,
          _isRepeatableMeta,
        ),
      );
    }
    if (data.containsKey('max_daily_completions')) {
      context.handle(
        _maxDailyCompletionsMeta,
        maxDailyCompletions.isAcceptableOrUnknown(
          data['max_daily_completions']!,
          _maxDailyCompletionsMeta,
        ),
      );
    }
    if (data.containsKey('available_from')) {
      context.handle(
        _availableFromMeta,
        availableFrom.isAcceptableOrUnknown(
          data['available_from']!,
          _availableFromMeta,
        ),
      );
    }
    if (data.containsKey('available_until')) {
      context.handle(
        _availableUntilMeta,
        availableUntil.isAcceptableOrUnknown(
          data['available_until']!,
          _availableUntilMeta,
        ),
      );
    }
    if (data.containsKey('is_coop')) {
      context.handle(
        _isCoopMeta,
        isCoop.isAcceptableOrUnknown(data['is_coop']!, _isCoopMeta),
      );
    }
    if (data.containsKey('min_party_size')) {
      context.handle(
        _minPartySizeMeta,
        minPartySize.isAcceptableOrUnknown(
          data['min_party_size']!,
          _minPartySizeMeta,
        ),
      );
    }
    if (data.containsKey('max_party_size')) {
      context.handle(
        _maxPartySizeMeta,
        maxPartySize.isAcceptableOrUnknown(
          data['max_party_size']!,
          _maxPartySizeMeta,
        ),
      );
    }
    if (data.containsKey('tracking_type')) {
      context.handle(
        _trackingTypeMeta,
        trackingType.isAcceptableOrUnknown(
          data['tracking_type']!,
          _trackingTypeMeta,
        ),
      );
    }
    if (data.containsKey('tracking_unit')) {
      context.handle(
        _trackingUnitMeta,
        trackingUnit.isAcceptableOrUnknown(
          data['tracking_unit']!,
          _trackingUnitMeta,
        ),
      );
    }
    if (data.containsKey('default_target_progress')) {
      context.handle(
        _defaultTargetProgressMeta,
        defaultTargetProgress.isAcceptableOrUnknown(
          data['default_target_progress']!,
          _defaultTargetProgressMeta,
        ),
      );
    }
    if (data.containsKey('auto_complete_from_app')) {
      context.handle(
        _autoCompleteFromAppMeta,
        autoCompleteFromApp.isAcceptableOrUnknown(
          data['auto_complete_from_app']!,
          _autoCompleteFromAppMeta,
        ),
      );
    }
    if (data.containsKey('auto_complete_event_key')) {
      context.handle(
        _autoCompleteEventKeyMeta,
        autoCompleteEventKey.isAcceptableOrUnknown(
          data['auto_complete_event_key']!,
          _autoCompleteEventKeyMeta,
        ),
      );
    }
    if (data.containsKey('linked_content_type')) {
      context.handle(
        _linkedContentTypeMeta,
        linkedContentType.isAcceptableOrUnknown(
          data['linked_content_type']!,
          _linkedContentTypeMeta,
        ),
      );
    }
    if (data.containsKey('linked_content_id')) {
      context.handle(
        _linkedContentIdMeta,
        linkedContentId.isAcceptableOrUnknown(
          data['linked_content_id']!,
          _linkedContentIdMeta,
        ),
      );
    }
    if (data.containsKey('tracking_meta_json')) {
      context.handle(
        _trackingMetaJsonMeta,
        trackingMetaJson.isAcceptableOrUnknown(
          data['tracking_meta_json']!,
          _trackingMetaJsonMeta,
        ),
      );
    }
    if (data.containsKey('steps_json')) {
      context.handle(
        _stepsJsonMeta,
        stepsJson.isAcceptableOrUnknown(data['steps_json']!, _stepsJsonMeta),
      );
    }
    if (data.containsKey('meta_json')) {
      context.handle(
        _metaJsonMeta,
        metaJson.isAcceptableOrUnknown(data['meta_json']!, _metaJsonMeta),
      );
    }
    if (data.containsKey('auto_reward_by_system')) {
      context.handle(
        _autoRewardBySystemMeta,
        autoRewardBySystem.isAcceptableOrUnknown(
          data['auto_reward_by_system']!,
          _autoRewardBySystemMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QuestTemplate map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QuestTemplate(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      subtitle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}subtitle'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      origin: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}origin'],
      )!,
      createdByUserId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_by_user_id'],
      ),
      isEditable: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_editable'],
      )!,
      isDeletable: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_deletable'],
      )!,
      isUserScoped: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_user_scoped'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      categoriesJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}categories_json'],
      )!,
      difficulty: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}difficulty'],
      )!,
      rank: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}rank'],
      ),
      requiredPlayerRank: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}required_player_rank'],
      ),
      requiredLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}required_level'],
      ),
      requiredClassIdsJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}required_class_ids_json'],
      )!,
      requiredFactionIdsJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}required_faction_ids_json'],
      )!,
      prerequisiteQuestIdsJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}prerequisite_quest_ids_json'],
      )!,
      baseXpReward: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}base_xp_reward'],
      )!,
      vitalXpReward: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}vital_xp_reward'],
      )!,
      penaltyXpOnFail: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}penalty_xp_on_fail'],
      )!,
      goldReward: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}gold_reward'],
      )!,
      itemRewardIdsJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}item_reward_ids_json'],
      )!,
      attributeRewardsJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}attribute_rewards_json'],
      )!,
      itemDropChance: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}item_drop_chance'],
      ),
      possibleItemDropsJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}possible_item_drops_json'],
      )!,
      isDaily: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_daily'],
      )!,
      isRepeatable: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_repeatable'],
      )!,
      maxDailyCompletions: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}max_daily_completions'],
      ),
      availableFrom: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}available_from'],
      ),
      availableUntil: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}available_until'],
      ),
      isCoop: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_coop'],
      )!,
      minPartySize: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}min_party_size'],
      ),
      maxPartySize: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}max_party_size'],
      ),
      trackingType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tracking_type'],
      )!,
      trackingUnit: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tracking_unit'],
      )!,
      defaultTargetProgress: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}default_target_progress'],
      )!,
      autoCompleteFromApp: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}auto_complete_from_app'],
      )!,
      autoCompleteEventKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}auto_complete_event_key'],
      ),
      linkedContentType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}linked_content_type'],
      )!,
      linkedContentId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}linked_content_id'],
      ),
      trackingMetaJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tracking_meta_json'],
      )!,
      stepsJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}steps_json'],
      )!,
      metaJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}meta_json'],
      )!,
      autoRewardBySystem: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}auto_reward_by_system'],
      )!,
    );
  }

  @override
  $QuestTemplatesTable createAlias(String alias) {
    return $QuestTemplatesTable(attachedDatabase, alias);
  }
}

class QuestTemplate extends DataClass implements Insertable<QuestTemplate> {
  final String id;
  final String title;
  final String? subtitle;
  final String description;

  /// system | userCustom
  final String origin;

  /// Preenche se for quest criada pelo usuário
  final String? createdByUserId;

  /// Pode ser editada no app?
  final bool isEditable;

  /// Pode ser deletada?
  final bool isDeletable;

  /// Essa template existe só pro usuário que criou?
  final bool isUserScoped;

  /// QuestType: dailyXp, shadow, story, training, life, boss, event, coop, customUser
  final String type;

  /// Lista de categorias (mental / physical / spiritual) em JSON
  /// ex: ["mental","physical"]
  final String categoriesJson;

  /// QuestDifficulty: veryEasy, easy, normal, hard, insane
  final String difficulty;

  /// Rank da quest: E, D, C, B, A, S
  final String? rank;

  /// Rank mínimo do player
  final String? requiredPlayerRank;

  /// Level mínimo do player
  final int? requiredLevel;

  /// Classes necessárias: ["guerreiro","ladino"]
  final String requiredClassIdsJson;

  /// Facções necessárias: ["legiao_negra"]
  final String requiredFactionIdsJson;

  /// Quests pré-requisito: ["shadow_intro_1", ...]
  final String prerequisiteQuestIdsJson;
  final int baseXpReward;
  final int vitalXpReward;
  final int penaltyXpOnFail;
  final int goldReward;

  /// Lista de itemIds fixos
  final String itemRewardIdsJson;

  /// Map de atributos: {"forca":1,"destreza":2}
  final String attributeRewardsJson;

  /// Chance de drop extra (0.0–1.0)
  final double? itemDropChance;

  /// Possíveis drops extras: ["item_espada_rara", "item_pocao"]
  final String possibleItemDropsJson;

  /// É daily?
  final bool isDaily;

  /// Pode repetir?
  final bool isRepeatable;

  /// Limite de completes por dia
  final int? maxDailyCompletions;

  /// Janelas temporais (Event Quests)
  final DateTime? availableFrom;
  final DateTime? availableUntil;
  final bool isCoop;
  final int? minPartySize;
  final int? maxPartySize;

  /// QuestTrackingType: manual, counter, timer, writing, reading
  final String trackingType;

  /// QuestMetricUnit: none, reps, minutes, seconds, lines, words, pages, chapters, sessions, percent
  final String trackingUnit;

  /// Progresso alvo padrão (ex: 10 linhas, 20 reps)
  final int defaultTargetProgress;

  /// Se true, tenta auto-completar baseado em eventos internos
  final bool autoCompleteFromApp;

  /// Chave de evento interno: "journal_lines", "ebook_pages_read", etc.
  final String? autoCompleteEventKey;

  /// Tipo de conteúdo interno: ebook, manga, article, etc. (string do enum)
  final String linkedContentType;

  /// Id do conteúdo interno
  final String? linkedContentId;

  /// Tracking meta: {"min_lines":10,"min_words":100}
  final String trackingMetaJson;

  /// Steps da quest (lista de QuestStep) em JSON
  final String stepsJson;

  /// Meta genérica (shadow_archetype, focus_tags, etc.)
  final String metaJson;

  /// Se true, rewards calculadas dinamicamente pelo sistema
  final bool autoRewardBySystem;
  const QuestTemplate({
    required this.id,
    required this.title,
    this.subtitle,
    required this.description,
    required this.origin,
    this.createdByUserId,
    required this.isEditable,
    required this.isDeletable,
    required this.isUserScoped,
    required this.type,
    required this.categoriesJson,
    required this.difficulty,
    this.rank,
    this.requiredPlayerRank,
    this.requiredLevel,
    required this.requiredClassIdsJson,
    required this.requiredFactionIdsJson,
    required this.prerequisiteQuestIdsJson,
    required this.baseXpReward,
    required this.vitalXpReward,
    required this.penaltyXpOnFail,
    required this.goldReward,
    required this.itemRewardIdsJson,
    required this.attributeRewardsJson,
    this.itemDropChance,
    required this.possibleItemDropsJson,
    required this.isDaily,
    required this.isRepeatable,
    this.maxDailyCompletions,
    this.availableFrom,
    this.availableUntil,
    required this.isCoop,
    this.minPartySize,
    this.maxPartySize,
    required this.trackingType,
    required this.trackingUnit,
    required this.defaultTargetProgress,
    required this.autoCompleteFromApp,
    this.autoCompleteEventKey,
    required this.linkedContentType,
    this.linkedContentId,
    required this.trackingMetaJson,
    required this.stepsJson,
    required this.metaJson,
    required this.autoRewardBySystem,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || subtitle != null) {
      map['subtitle'] = Variable<String>(subtitle);
    }
    map['description'] = Variable<String>(description);
    map['origin'] = Variable<String>(origin);
    if (!nullToAbsent || createdByUserId != null) {
      map['created_by_user_id'] = Variable<String>(createdByUserId);
    }
    map['is_editable'] = Variable<bool>(isEditable);
    map['is_deletable'] = Variable<bool>(isDeletable);
    map['is_user_scoped'] = Variable<bool>(isUserScoped);
    map['type'] = Variable<String>(type);
    map['categories_json'] = Variable<String>(categoriesJson);
    map['difficulty'] = Variable<String>(difficulty);
    if (!nullToAbsent || rank != null) {
      map['rank'] = Variable<String>(rank);
    }
    if (!nullToAbsent || requiredPlayerRank != null) {
      map['required_player_rank'] = Variable<String>(requiredPlayerRank);
    }
    if (!nullToAbsent || requiredLevel != null) {
      map['required_level'] = Variable<int>(requiredLevel);
    }
    map['required_class_ids_json'] = Variable<String>(requiredClassIdsJson);
    map['required_faction_ids_json'] = Variable<String>(requiredFactionIdsJson);
    map['prerequisite_quest_ids_json'] = Variable<String>(
      prerequisiteQuestIdsJson,
    );
    map['base_xp_reward'] = Variable<int>(baseXpReward);
    map['vital_xp_reward'] = Variable<int>(vitalXpReward);
    map['penalty_xp_on_fail'] = Variable<int>(penaltyXpOnFail);
    map['gold_reward'] = Variable<int>(goldReward);
    map['item_reward_ids_json'] = Variable<String>(itemRewardIdsJson);
    map['attribute_rewards_json'] = Variable<String>(attributeRewardsJson);
    if (!nullToAbsent || itemDropChance != null) {
      map['item_drop_chance'] = Variable<double>(itemDropChance);
    }
    map['possible_item_drops_json'] = Variable<String>(possibleItemDropsJson);
    map['is_daily'] = Variable<bool>(isDaily);
    map['is_repeatable'] = Variable<bool>(isRepeatable);
    if (!nullToAbsent || maxDailyCompletions != null) {
      map['max_daily_completions'] = Variable<int>(maxDailyCompletions);
    }
    if (!nullToAbsent || availableFrom != null) {
      map['available_from'] = Variable<DateTime>(availableFrom);
    }
    if (!nullToAbsent || availableUntil != null) {
      map['available_until'] = Variable<DateTime>(availableUntil);
    }
    map['is_coop'] = Variable<bool>(isCoop);
    if (!nullToAbsent || minPartySize != null) {
      map['min_party_size'] = Variable<int>(minPartySize);
    }
    if (!nullToAbsent || maxPartySize != null) {
      map['max_party_size'] = Variable<int>(maxPartySize);
    }
    map['tracking_type'] = Variable<String>(trackingType);
    map['tracking_unit'] = Variable<String>(trackingUnit);
    map['default_target_progress'] = Variable<int>(defaultTargetProgress);
    map['auto_complete_from_app'] = Variable<bool>(autoCompleteFromApp);
    if (!nullToAbsent || autoCompleteEventKey != null) {
      map['auto_complete_event_key'] = Variable<String>(autoCompleteEventKey);
    }
    map['linked_content_type'] = Variable<String>(linkedContentType);
    if (!nullToAbsent || linkedContentId != null) {
      map['linked_content_id'] = Variable<String>(linkedContentId);
    }
    map['tracking_meta_json'] = Variable<String>(trackingMetaJson);
    map['steps_json'] = Variable<String>(stepsJson);
    map['meta_json'] = Variable<String>(metaJson);
    map['auto_reward_by_system'] = Variable<bool>(autoRewardBySystem);
    return map;
  }

  QuestTemplatesCompanion toCompanion(bool nullToAbsent) {
    return QuestTemplatesCompanion(
      id: Value(id),
      title: Value(title),
      subtitle: subtitle == null && nullToAbsent
          ? const Value.absent()
          : Value(subtitle),
      description: Value(description),
      origin: Value(origin),
      createdByUserId: createdByUserId == null && nullToAbsent
          ? const Value.absent()
          : Value(createdByUserId),
      isEditable: Value(isEditable),
      isDeletable: Value(isDeletable),
      isUserScoped: Value(isUserScoped),
      type: Value(type),
      categoriesJson: Value(categoriesJson),
      difficulty: Value(difficulty),
      rank: rank == null && nullToAbsent ? const Value.absent() : Value(rank),
      requiredPlayerRank: requiredPlayerRank == null && nullToAbsent
          ? const Value.absent()
          : Value(requiredPlayerRank),
      requiredLevel: requiredLevel == null && nullToAbsent
          ? const Value.absent()
          : Value(requiredLevel),
      requiredClassIdsJson: Value(requiredClassIdsJson),
      requiredFactionIdsJson: Value(requiredFactionIdsJson),
      prerequisiteQuestIdsJson: Value(prerequisiteQuestIdsJson),
      baseXpReward: Value(baseXpReward),
      vitalXpReward: Value(vitalXpReward),
      penaltyXpOnFail: Value(penaltyXpOnFail),
      goldReward: Value(goldReward),
      itemRewardIdsJson: Value(itemRewardIdsJson),
      attributeRewardsJson: Value(attributeRewardsJson),
      itemDropChance: itemDropChance == null && nullToAbsent
          ? const Value.absent()
          : Value(itemDropChance),
      possibleItemDropsJson: Value(possibleItemDropsJson),
      isDaily: Value(isDaily),
      isRepeatable: Value(isRepeatable),
      maxDailyCompletions: maxDailyCompletions == null && nullToAbsent
          ? const Value.absent()
          : Value(maxDailyCompletions),
      availableFrom: availableFrom == null && nullToAbsent
          ? const Value.absent()
          : Value(availableFrom),
      availableUntil: availableUntil == null && nullToAbsent
          ? const Value.absent()
          : Value(availableUntil),
      isCoop: Value(isCoop),
      minPartySize: minPartySize == null && nullToAbsent
          ? const Value.absent()
          : Value(minPartySize),
      maxPartySize: maxPartySize == null && nullToAbsent
          ? const Value.absent()
          : Value(maxPartySize),
      trackingType: Value(trackingType),
      trackingUnit: Value(trackingUnit),
      defaultTargetProgress: Value(defaultTargetProgress),
      autoCompleteFromApp: Value(autoCompleteFromApp),
      autoCompleteEventKey: autoCompleteEventKey == null && nullToAbsent
          ? const Value.absent()
          : Value(autoCompleteEventKey),
      linkedContentType: Value(linkedContentType),
      linkedContentId: linkedContentId == null && nullToAbsent
          ? const Value.absent()
          : Value(linkedContentId),
      trackingMetaJson: Value(trackingMetaJson),
      stepsJson: Value(stepsJson),
      metaJson: Value(metaJson),
      autoRewardBySystem: Value(autoRewardBySystem),
    );
  }

  factory QuestTemplate.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QuestTemplate(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      subtitle: serializer.fromJson<String?>(json['subtitle']),
      description: serializer.fromJson<String>(json['description']),
      origin: serializer.fromJson<String>(json['origin']),
      createdByUserId: serializer.fromJson<String?>(json['createdByUserId']),
      isEditable: serializer.fromJson<bool>(json['isEditable']),
      isDeletable: serializer.fromJson<bool>(json['isDeletable']),
      isUserScoped: serializer.fromJson<bool>(json['isUserScoped']),
      type: serializer.fromJson<String>(json['type']),
      categoriesJson: serializer.fromJson<String>(json['categoriesJson']),
      difficulty: serializer.fromJson<String>(json['difficulty']),
      rank: serializer.fromJson<String?>(json['rank']),
      requiredPlayerRank: serializer.fromJson<String?>(
        json['requiredPlayerRank'],
      ),
      requiredLevel: serializer.fromJson<int?>(json['requiredLevel']),
      requiredClassIdsJson: serializer.fromJson<String>(
        json['requiredClassIdsJson'],
      ),
      requiredFactionIdsJson: serializer.fromJson<String>(
        json['requiredFactionIdsJson'],
      ),
      prerequisiteQuestIdsJson: serializer.fromJson<String>(
        json['prerequisiteQuestIdsJson'],
      ),
      baseXpReward: serializer.fromJson<int>(json['baseXpReward']),
      vitalXpReward: serializer.fromJson<int>(json['vitalXpReward']),
      penaltyXpOnFail: serializer.fromJson<int>(json['penaltyXpOnFail']),
      goldReward: serializer.fromJson<int>(json['goldReward']),
      itemRewardIdsJson: serializer.fromJson<String>(json['itemRewardIdsJson']),
      attributeRewardsJson: serializer.fromJson<String>(
        json['attributeRewardsJson'],
      ),
      itemDropChance: serializer.fromJson<double?>(json['itemDropChance']),
      possibleItemDropsJson: serializer.fromJson<String>(
        json['possibleItemDropsJson'],
      ),
      isDaily: serializer.fromJson<bool>(json['isDaily']),
      isRepeatable: serializer.fromJson<bool>(json['isRepeatable']),
      maxDailyCompletions: serializer.fromJson<int?>(
        json['maxDailyCompletions'],
      ),
      availableFrom: serializer.fromJson<DateTime?>(json['availableFrom']),
      availableUntil: serializer.fromJson<DateTime?>(json['availableUntil']),
      isCoop: serializer.fromJson<bool>(json['isCoop']),
      minPartySize: serializer.fromJson<int?>(json['minPartySize']),
      maxPartySize: serializer.fromJson<int?>(json['maxPartySize']),
      trackingType: serializer.fromJson<String>(json['trackingType']),
      trackingUnit: serializer.fromJson<String>(json['trackingUnit']),
      defaultTargetProgress: serializer.fromJson<int>(
        json['defaultTargetProgress'],
      ),
      autoCompleteFromApp: serializer.fromJson<bool>(
        json['autoCompleteFromApp'],
      ),
      autoCompleteEventKey: serializer.fromJson<String?>(
        json['autoCompleteEventKey'],
      ),
      linkedContentType: serializer.fromJson<String>(json['linkedContentType']),
      linkedContentId: serializer.fromJson<String?>(json['linkedContentId']),
      trackingMetaJson: serializer.fromJson<String>(json['trackingMetaJson']),
      stepsJson: serializer.fromJson<String>(json['stepsJson']),
      metaJson: serializer.fromJson<String>(json['metaJson']),
      autoRewardBySystem: serializer.fromJson<bool>(json['autoRewardBySystem']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'subtitle': serializer.toJson<String?>(subtitle),
      'description': serializer.toJson<String>(description),
      'origin': serializer.toJson<String>(origin),
      'createdByUserId': serializer.toJson<String?>(createdByUserId),
      'isEditable': serializer.toJson<bool>(isEditable),
      'isDeletable': serializer.toJson<bool>(isDeletable),
      'isUserScoped': serializer.toJson<bool>(isUserScoped),
      'type': serializer.toJson<String>(type),
      'categoriesJson': serializer.toJson<String>(categoriesJson),
      'difficulty': serializer.toJson<String>(difficulty),
      'rank': serializer.toJson<String?>(rank),
      'requiredPlayerRank': serializer.toJson<String?>(requiredPlayerRank),
      'requiredLevel': serializer.toJson<int?>(requiredLevel),
      'requiredClassIdsJson': serializer.toJson<String>(requiredClassIdsJson),
      'requiredFactionIdsJson': serializer.toJson<String>(
        requiredFactionIdsJson,
      ),
      'prerequisiteQuestIdsJson': serializer.toJson<String>(
        prerequisiteQuestIdsJson,
      ),
      'baseXpReward': serializer.toJson<int>(baseXpReward),
      'vitalXpReward': serializer.toJson<int>(vitalXpReward),
      'penaltyXpOnFail': serializer.toJson<int>(penaltyXpOnFail),
      'goldReward': serializer.toJson<int>(goldReward),
      'itemRewardIdsJson': serializer.toJson<String>(itemRewardIdsJson),
      'attributeRewardsJson': serializer.toJson<String>(attributeRewardsJson),
      'itemDropChance': serializer.toJson<double?>(itemDropChance),
      'possibleItemDropsJson': serializer.toJson<String>(possibleItemDropsJson),
      'isDaily': serializer.toJson<bool>(isDaily),
      'isRepeatable': serializer.toJson<bool>(isRepeatable),
      'maxDailyCompletions': serializer.toJson<int?>(maxDailyCompletions),
      'availableFrom': serializer.toJson<DateTime?>(availableFrom),
      'availableUntil': serializer.toJson<DateTime?>(availableUntil),
      'isCoop': serializer.toJson<bool>(isCoop),
      'minPartySize': serializer.toJson<int?>(minPartySize),
      'maxPartySize': serializer.toJson<int?>(maxPartySize),
      'trackingType': serializer.toJson<String>(trackingType),
      'trackingUnit': serializer.toJson<String>(trackingUnit),
      'defaultTargetProgress': serializer.toJson<int>(defaultTargetProgress),
      'autoCompleteFromApp': serializer.toJson<bool>(autoCompleteFromApp),
      'autoCompleteEventKey': serializer.toJson<String?>(autoCompleteEventKey),
      'linkedContentType': serializer.toJson<String>(linkedContentType),
      'linkedContentId': serializer.toJson<String?>(linkedContentId),
      'trackingMetaJson': serializer.toJson<String>(trackingMetaJson),
      'stepsJson': serializer.toJson<String>(stepsJson),
      'metaJson': serializer.toJson<String>(metaJson),
      'autoRewardBySystem': serializer.toJson<bool>(autoRewardBySystem),
    };
  }

  QuestTemplate copyWith({
    String? id,
    String? title,
    Value<String?> subtitle = const Value.absent(),
    String? description,
    String? origin,
    Value<String?> createdByUserId = const Value.absent(),
    bool? isEditable,
    bool? isDeletable,
    bool? isUserScoped,
    String? type,
    String? categoriesJson,
    String? difficulty,
    Value<String?> rank = const Value.absent(),
    Value<String?> requiredPlayerRank = const Value.absent(),
    Value<int?> requiredLevel = const Value.absent(),
    String? requiredClassIdsJson,
    String? requiredFactionIdsJson,
    String? prerequisiteQuestIdsJson,
    int? baseXpReward,
    int? vitalXpReward,
    int? penaltyXpOnFail,
    int? goldReward,
    String? itemRewardIdsJson,
    String? attributeRewardsJson,
    Value<double?> itemDropChance = const Value.absent(),
    String? possibleItemDropsJson,
    bool? isDaily,
    bool? isRepeatable,
    Value<int?> maxDailyCompletions = const Value.absent(),
    Value<DateTime?> availableFrom = const Value.absent(),
    Value<DateTime?> availableUntil = const Value.absent(),
    bool? isCoop,
    Value<int?> minPartySize = const Value.absent(),
    Value<int?> maxPartySize = const Value.absent(),
    String? trackingType,
    String? trackingUnit,
    int? defaultTargetProgress,
    bool? autoCompleteFromApp,
    Value<String?> autoCompleteEventKey = const Value.absent(),
    String? linkedContentType,
    Value<String?> linkedContentId = const Value.absent(),
    String? trackingMetaJson,
    String? stepsJson,
    String? metaJson,
    bool? autoRewardBySystem,
  }) => QuestTemplate(
    id: id ?? this.id,
    title: title ?? this.title,
    subtitle: subtitle.present ? subtitle.value : this.subtitle,
    description: description ?? this.description,
    origin: origin ?? this.origin,
    createdByUserId: createdByUserId.present
        ? createdByUserId.value
        : this.createdByUserId,
    isEditable: isEditable ?? this.isEditable,
    isDeletable: isDeletable ?? this.isDeletable,
    isUserScoped: isUserScoped ?? this.isUserScoped,
    type: type ?? this.type,
    categoriesJson: categoriesJson ?? this.categoriesJson,
    difficulty: difficulty ?? this.difficulty,
    rank: rank.present ? rank.value : this.rank,
    requiredPlayerRank: requiredPlayerRank.present
        ? requiredPlayerRank.value
        : this.requiredPlayerRank,
    requiredLevel: requiredLevel.present
        ? requiredLevel.value
        : this.requiredLevel,
    requiredClassIdsJson: requiredClassIdsJson ?? this.requiredClassIdsJson,
    requiredFactionIdsJson:
        requiredFactionIdsJson ?? this.requiredFactionIdsJson,
    prerequisiteQuestIdsJson:
        prerequisiteQuestIdsJson ?? this.prerequisiteQuestIdsJson,
    baseXpReward: baseXpReward ?? this.baseXpReward,
    vitalXpReward: vitalXpReward ?? this.vitalXpReward,
    penaltyXpOnFail: penaltyXpOnFail ?? this.penaltyXpOnFail,
    goldReward: goldReward ?? this.goldReward,
    itemRewardIdsJson: itemRewardIdsJson ?? this.itemRewardIdsJson,
    attributeRewardsJson: attributeRewardsJson ?? this.attributeRewardsJson,
    itemDropChance: itemDropChance.present
        ? itemDropChance.value
        : this.itemDropChance,
    possibleItemDropsJson: possibleItemDropsJson ?? this.possibleItemDropsJson,
    isDaily: isDaily ?? this.isDaily,
    isRepeatable: isRepeatable ?? this.isRepeatable,
    maxDailyCompletions: maxDailyCompletions.present
        ? maxDailyCompletions.value
        : this.maxDailyCompletions,
    availableFrom: availableFrom.present
        ? availableFrom.value
        : this.availableFrom,
    availableUntil: availableUntil.present
        ? availableUntil.value
        : this.availableUntil,
    isCoop: isCoop ?? this.isCoop,
    minPartySize: minPartySize.present ? minPartySize.value : this.minPartySize,
    maxPartySize: maxPartySize.present ? maxPartySize.value : this.maxPartySize,
    trackingType: trackingType ?? this.trackingType,
    trackingUnit: trackingUnit ?? this.trackingUnit,
    defaultTargetProgress: defaultTargetProgress ?? this.defaultTargetProgress,
    autoCompleteFromApp: autoCompleteFromApp ?? this.autoCompleteFromApp,
    autoCompleteEventKey: autoCompleteEventKey.present
        ? autoCompleteEventKey.value
        : this.autoCompleteEventKey,
    linkedContentType: linkedContentType ?? this.linkedContentType,
    linkedContentId: linkedContentId.present
        ? linkedContentId.value
        : this.linkedContentId,
    trackingMetaJson: trackingMetaJson ?? this.trackingMetaJson,
    stepsJson: stepsJson ?? this.stepsJson,
    metaJson: metaJson ?? this.metaJson,
    autoRewardBySystem: autoRewardBySystem ?? this.autoRewardBySystem,
  );
  QuestTemplate copyWithCompanion(QuestTemplatesCompanion data) {
    return QuestTemplate(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      subtitle: data.subtitle.present ? data.subtitle.value : this.subtitle,
      description: data.description.present
          ? data.description.value
          : this.description,
      origin: data.origin.present ? data.origin.value : this.origin,
      createdByUserId: data.createdByUserId.present
          ? data.createdByUserId.value
          : this.createdByUserId,
      isEditable: data.isEditable.present
          ? data.isEditable.value
          : this.isEditable,
      isDeletable: data.isDeletable.present
          ? data.isDeletable.value
          : this.isDeletable,
      isUserScoped: data.isUserScoped.present
          ? data.isUserScoped.value
          : this.isUserScoped,
      type: data.type.present ? data.type.value : this.type,
      categoriesJson: data.categoriesJson.present
          ? data.categoriesJson.value
          : this.categoriesJson,
      difficulty: data.difficulty.present
          ? data.difficulty.value
          : this.difficulty,
      rank: data.rank.present ? data.rank.value : this.rank,
      requiredPlayerRank: data.requiredPlayerRank.present
          ? data.requiredPlayerRank.value
          : this.requiredPlayerRank,
      requiredLevel: data.requiredLevel.present
          ? data.requiredLevel.value
          : this.requiredLevel,
      requiredClassIdsJson: data.requiredClassIdsJson.present
          ? data.requiredClassIdsJson.value
          : this.requiredClassIdsJson,
      requiredFactionIdsJson: data.requiredFactionIdsJson.present
          ? data.requiredFactionIdsJson.value
          : this.requiredFactionIdsJson,
      prerequisiteQuestIdsJson: data.prerequisiteQuestIdsJson.present
          ? data.prerequisiteQuestIdsJson.value
          : this.prerequisiteQuestIdsJson,
      baseXpReward: data.baseXpReward.present
          ? data.baseXpReward.value
          : this.baseXpReward,
      vitalXpReward: data.vitalXpReward.present
          ? data.vitalXpReward.value
          : this.vitalXpReward,
      penaltyXpOnFail: data.penaltyXpOnFail.present
          ? data.penaltyXpOnFail.value
          : this.penaltyXpOnFail,
      goldReward: data.goldReward.present
          ? data.goldReward.value
          : this.goldReward,
      itemRewardIdsJson: data.itemRewardIdsJson.present
          ? data.itemRewardIdsJson.value
          : this.itemRewardIdsJson,
      attributeRewardsJson: data.attributeRewardsJson.present
          ? data.attributeRewardsJson.value
          : this.attributeRewardsJson,
      itemDropChance: data.itemDropChance.present
          ? data.itemDropChance.value
          : this.itemDropChance,
      possibleItemDropsJson: data.possibleItemDropsJson.present
          ? data.possibleItemDropsJson.value
          : this.possibleItemDropsJson,
      isDaily: data.isDaily.present ? data.isDaily.value : this.isDaily,
      isRepeatable: data.isRepeatable.present
          ? data.isRepeatable.value
          : this.isRepeatable,
      maxDailyCompletions: data.maxDailyCompletions.present
          ? data.maxDailyCompletions.value
          : this.maxDailyCompletions,
      availableFrom: data.availableFrom.present
          ? data.availableFrom.value
          : this.availableFrom,
      availableUntil: data.availableUntil.present
          ? data.availableUntil.value
          : this.availableUntil,
      isCoop: data.isCoop.present ? data.isCoop.value : this.isCoop,
      minPartySize: data.minPartySize.present
          ? data.minPartySize.value
          : this.minPartySize,
      maxPartySize: data.maxPartySize.present
          ? data.maxPartySize.value
          : this.maxPartySize,
      trackingType: data.trackingType.present
          ? data.trackingType.value
          : this.trackingType,
      trackingUnit: data.trackingUnit.present
          ? data.trackingUnit.value
          : this.trackingUnit,
      defaultTargetProgress: data.defaultTargetProgress.present
          ? data.defaultTargetProgress.value
          : this.defaultTargetProgress,
      autoCompleteFromApp: data.autoCompleteFromApp.present
          ? data.autoCompleteFromApp.value
          : this.autoCompleteFromApp,
      autoCompleteEventKey: data.autoCompleteEventKey.present
          ? data.autoCompleteEventKey.value
          : this.autoCompleteEventKey,
      linkedContentType: data.linkedContentType.present
          ? data.linkedContentType.value
          : this.linkedContentType,
      linkedContentId: data.linkedContentId.present
          ? data.linkedContentId.value
          : this.linkedContentId,
      trackingMetaJson: data.trackingMetaJson.present
          ? data.trackingMetaJson.value
          : this.trackingMetaJson,
      stepsJson: data.stepsJson.present ? data.stepsJson.value : this.stepsJson,
      metaJson: data.metaJson.present ? data.metaJson.value : this.metaJson,
      autoRewardBySystem: data.autoRewardBySystem.present
          ? data.autoRewardBySystem.value
          : this.autoRewardBySystem,
    );
  }

  @override
  String toString() {
    return (StringBuffer('QuestTemplate(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('subtitle: $subtitle, ')
          ..write('description: $description, ')
          ..write('origin: $origin, ')
          ..write('createdByUserId: $createdByUserId, ')
          ..write('isEditable: $isEditable, ')
          ..write('isDeletable: $isDeletable, ')
          ..write('isUserScoped: $isUserScoped, ')
          ..write('type: $type, ')
          ..write('categoriesJson: $categoriesJson, ')
          ..write('difficulty: $difficulty, ')
          ..write('rank: $rank, ')
          ..write('requiredPlayerRank: $requiredPlayerRank, ')
          ..write('requiredLevel: $requiredLevel, ')
          ..write('requiredClassIdsJson: $requiredClassIdsJson, ')
          ..write('requiredFactionIdsJson: $requiredFactionIdsJson, ')
          ..write('prerequisiteQuestIdsJson: $prerequisiteQuestIdsJson, ')
          ..write('baseXpReward: $baseXpReward, ')
          ..write('vitalXpReward: $vitalXpReward, ')
          ..write('penaltyXpOnFail: $penaltyXpOnFail, ')
          ..write('goldReward: $goldReward, ')
          ..write('itemRewardIdsJson: $itemRewardIdsJson, ')
          ..write('attributeRewardsJson: $attributeRewardsJson, ')
          ..write('itemDropChance: $itemDropChance, ')
          ..write('possibleItemDropsJson: $possibleItemDropsJson, ')
          ..write('isDaily: $isDaily, ')
          ..write('isRepeatable: $isRepeatable, ')
          ..write('maxDailyCompletions: $maxDailyCompletions, ')
          ..write('availableFrom: $availableFrom, ')
          ..write('availableUntil: $availableUntil, ')
          ..write('isCoop: $isCoop, ')
          ..write('minPartySize: $minPartySize, ')
          ..write('maxPartySize: $maxPartySize, ')
          ..write('trackingType: $trackingType, ')
          ..write('trackingUnit: $trackingUnit, ')
          ..write('defaultTargetProgress: $defaultTargetProgress, ')
          ..write('autoCompleteFromApp: $autoCompleteFromApp, ')
          ..write('autoCompleteEventKey: $autoCompleteEventKey, ')
          ..write('linkedContentType: $linkedContentType, ')
          ..write('linkedContentId: $linkedContentId, ')
          ..write('trackingMetaJson: $trackingMetaJson, ')
          ..write('stepsJson: $stepsJson, ')
          ..write('metaJson: $metaJson, ')
          ..write('autoRewardBySystem: $autoRewardBySystem')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    title,
    subtitle,
    description,
    origin,
    createdByUserId,
    isEditable,
    isDeletable,
    isUserScoped,
    type,
    categoriesJson,
    difficulty,
    rank,
    requiredPlayerRank,
    requiredLevel,
    requiredClassIdsJson,
    requiredFactionIdsJson,
    prerequisiteQuestIdsJson,
    baseXpReward,
    vitalXpReward,
    penaltyXpOnFail,
    goldReward,
    itemRewardIdsJson,
    attributeRewardsJson,
    itemDropChance,
    possibleItemDropsJson,
    isDaily,
    isRepeatable,
    maxDailyCompletions,
    availableFrom,
    availableUntil,
    isCoop,
    minPartySize,
    maxPartySize,
    trackingType,
    trackingUnit,
    defaultTargetProgress,
    autoCompleteFromApp,
    autoCompleteEventKey,
    linkedContentType,
    linkedContentId,
    trackingMetaJson,
    stepsJson,
    metaJson,
    autoRewardBySystem,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QuestTemplate &&
          other.id == this.id &&
          other.title == this.title &&
          other.subtitle == this.subtitle &&
          other.description == this.description &&
          other.origin == this.origin &&
          other.createdByUserId == this.createdByUserId &&
          other.isEditable == this.isEditable &&
          other.isDeletable == this.isDeletable &&
          other.isUserScoped == this.isUserScoped &&
          other.type == this.type &&
          other.categoriesJson == this.categoriesJson &&
          other.difficulty == this.difficulty &&
          other.rank == this.rank &&
          other.requiredPlayerRank == this.requiredPlayerRank &&
          other.requiredLevel == this.requiredLevel &&
          other.requiredClassIdsJson == this.requiredClassIdsJson &&
          other.requiredFactionIdsJson == this.requiredFactionIdsJson &&
          other.prerequisiteQuestIdsJson == this.prerequisiteQuestIdsJson &&
          other.baseXpReward == this.baseXpReward &&
          other.vitalXpReward == this.vitalXpReward &&
          other.penaltyXpOnFail == this.penaltyXpOnFail &&
          other.goldReward == this.goldReward &&
          other.itemRewardIdsJson == this.itemRewardIdsJson &&
          other.attributeRewardsJson == this.attributeRewardsJson &&
          other.itemDropChance == this.itemDropChance &&
          other.possibleItemDropsJson == this.possibleItemDropsJson &&
          other.isDaily == this.isDaily &&
          other.isRepeatable == this.isRepeatable &&
          other.maxDailyCompletions == this.maxDailyCompletions &&
          other.availableFrom == this.availableFrom &&
          other.availableUntil == this.availableUntil &&
          other.isCoop == this.isCoop &&
          other.minPartySize == this.minPartySize &&
          other.maxPartySize == this.maxPartySize &&
          other.trackingType == this.trackingType &&
          other.trackingUnit == this.trackingUnit &&
          other.defaultTargetProgress == this.defaultTargetProgress &&
          other.autoCompleteFromApp == this.autoCompleteFromApp &&
          other.autoCompleteEventKey == this.autoCompleteEventKey &&
          other.linkedContentType == this.linkedContentType &&
          other.linkedContentId == this.linkedContentId &&
          other.trackingMetaJson == this.trackingMetaJson &&
          other.stepsJson == this.stepsJson &&
          other.metaJson == this.metaJson &&
          other.autoRewardBySystem == this.autoRewardBySystem);
}

class QuestTemplatesCompanion extends UpdateCompanion<QuestTemplate> {
  final Value<String> id;
  final Value<String> title;
  final Value<String?> subtitle;
  final Value<String> description;
  final Value<String> origin;
  final Value<String?> createdByUserId;
  final Value<bool> isEditable;
  final Value<bool> isDeletable;
  final Value<bool> isUserScoped;
  final Value<String> type;
  final Value<String> categoriesJson;
  final Value<String> difficulty;
  final Value<String?> rank;
  final Value<String?> requiredPlayerRank;
  final Value<int?> requiredLevel;
  final Value<String> requiredClassIdsJson;
  final Value<String> requiredFactionIdsJson;
  final Value<String> prerequisiteQuestIdsJson;
  final Value<int> baseXpReward;
  final Value<int> vitalXpReward;
  final Value<int> penaltyXpOnFail;
  final Value<int> goldReward;
  final Value<String> itemRewardIdsJson;
  final Value<String> attributeRewardsJson;
  final Value<double?> itemDropChance;
  final Value<String> possibleItemDropsJson;
  final Value<bool> isDaily;
  final Value<bool> isRepeatable;
  final Value<int?> maxDailyCompletions;
  final Value<DateTime?> availableFrom;
  final Value<DateTime?> availableUntil;
  final Value<bool> isCoop;
  final Value<int?> minPartySize;
  final Value<int?> maxPartySize;
  final Value<String> trackingType;
  final Value<String> trackingUnit;
  final Value<int> defaultTargetProgress;
  final Value<bool> autoCompleteFromApp;
  final Value<String?> autoCompleteEventKey;
  final Value<String> linkedContentType;
  final Value<String?> linkedContentId;
  final Value<String> trackingMetaJson;
  final Value<String> stepsJson;
  final Value<String> metaJson;
  final Value<bool> autoRewardBySystem;
  final Value<int> rowid;
  const QuestTemplatesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.subtitle = const Value.absent(),
    this.description = const Value.absent(),
    this.origin = const Value.absent(),
    this.createdByUserId = const Value.absent(),
    this.isEditable = const Value.absent(),
    this.isDeletable = const Value.absent(),
    this.isUserScoped = const Value.absent(),
    this.type = const Value.absent(),
    this.categoriesJson = const Value.absent(),
    this.difficulty = const Value.absent(),
    this.rank = const Value.absent(),
    this.requiredPlayerRank = const Value.absent(),
    this.requiredLevel = const Value.absent(),
    this.requiredClassIdsJson = const Value.absent(),
    this.requiredFactionIdsJson = const Value.absent(),
    this.prerequisiteQuestIdsJson = const Value.absent(),
    this.baseXpReward = const Value.absent(),
    this.vitalXpReward = const Value.absent(),
    this.penaltyXpOnFail = const Value.absent(),
    this.goldReward = const Value.absent(),
    this.itemRewardIdsJson = const Value.absent(),
    this.attributeRewardsJson = const Value.absent(),
    this.itemDropChance = const Value.absent(),
    this.possibleItemDropsJson = const Value.absent(),
    this.isDaily = const Value.absent(),
    this.isRepeatable = const Value.absent(),
    this.maxDailyCompletions = const Value.absent(),
    this.availableFrom = const Value.absent(),
    this.availableUntil = const Value.absent(),
    this.isCoop = const Value.absent(),
    this.minPartySize = const Value.absent(),
    this.maxPartySize = const Value.absent(),
    this.trackingType = const Value.absent(),
    this.trackingUnit = const Value.absent(),
    this.defaultTargetProgress = const Value.absent(),
    this.autoCompleteFromApp = const Value.absent(),
    this.autoCompleteEventKey = const Value.absent(),
    this.linkedContentType = const Value.absent(),
    this.linkedContentId = const Value.absent(),
    this.trackingMetaJson = const Value.absent(),
    this.stepsJson = const Value.absent(),
    this.metaJson = const Value.absent(),
    this.autoRewardBySystem = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  QuestTemplatesCompanion.insert({
    required String id,
    required String title,
    this.subtitle = const Value.absent(),
    required String description,
    required String origin,
    this.createdByUserId = const Value.absent(),
    this.isEditable = const Value.absent(),
    this.isDeletable = const Value.absent(),
    this.isUserScoped = const Value.absent(),
    required String type,
    this.categoriesJson = const Value.absent(),
    this.difficulty = const Value.absent(),
    this.rank = const Value.absent(),
    this.requiredPlayerRank = const Value.absent(),
    this.requiredLevel = const Value.absent(),
    this.requiredClassIdsJson = const Value.absent(),
    this.requiredFactionIdsJson = const Value.absent(),
    this.prerequisiteQuestIdsJson = const Value.absent(),
    this.baseXpReward = const Value.absent(),
    this.vitalXpReward = const Value.absent(),
    this.penaltyXpOnFail = const Value.absent(),
    this.goldReward = const Value.absent(),
    this.itemRewardIdsJson = const Value.absent(),
    this.attributeRewardsJson = const Value.absent(),
    this.itemDropChance = const Value.absent(),
    this.possibleItemDropsJson = const Value.absent(),
    this.isDaily = const Value.absent(),
    this.isRepeatable = const Value.absent(),
    this.maxDailyCompletions = const Value.absent(),
    this.availableFrom = const Value.absent(),
    this.availableUntil = const Value.absent(),
    this.isCoop = const Value.absent(),
    this.minPartySize = const Value.absent(),
    this.maxPartySize = const Value.absent(),
    this.trackingType = const Value.absent(),
    this.trackingUnit = const Value.absent(),
    this.defaultTargetProgress = const Value.absent(),
    this.autoCompleteFromApp = const Value.absent(),
    this.autoCompleteEventKey = const Value.absent(),
    this.linkedContentType = const Value.absent(),
    this.linkedContentId = const Value.absent(),
    this.trackingMetaJson = const Value.absent(),
    this.stepsJson = const Value.absent(),
    this.metaJson = const Value.absent(),
    this.autoRewardBySystem = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       description = Value(description),
       origin = Value(origin),
       type = Value(type);
  static Insertable<QuestTemplate> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? subtitle,
    Expression<String>? description,
    Expression<String>? origin,
    Expression<String>? createdByUserId,
    Expression<bool>? isEditable,
    Expression<bool>? isDeletable,
    Expression<bool>? isUserScoped,
    Expression<String>? type,
    Expression<String>? categoriesJson,
    Expression<String>? difficulty,
    Expression<String>? rank,
    Expression<String>? requiredPlayerRank,
    Expression<int>? requiredLevel,
    Expression<String>? requiredClassIdsJson,
    Expression<String>? requiredFactionIdsJson,
    Expression<String>? prerequisiteQuestIdsJson,
    Expression<int>? baseXpReward,
    Expression<int>? vitalXpReward,
    Expression<int>? penaltyXpOnFail,
    Expression<int>? goldReward,
    Expression<String>? itemRewardIdsJson,
    Expression<String>? attributeRewardsJson,
    Expression<double>? itemDropChance,
    Expression<String>? possibleItemDropsJson,
    Expression<bool>? isDaily,
    Expression<bool>? isRepeatable,
    Expression<int>? maxDailyCompletions,
    Expression<DateTime>? availableFrom,
    Expression<DateTime>? availableUntil,
    Expression<bool>? isCoop,
    Expression<int>? minPartySize,
    Expression<int>? maxPartySize,
    Expression<String>? trackingType,
    Expression<String>? trackingUnit,
    Expression<int>? defaultTargetProgress,
    Expression<bool>? autoCompleteFromApp,
    Expression<String>? autoCompleteEventKey,
    Expression<String>? linkedContentType,
    Expression<String>? linkedContentId,
    Expression<String>? trackingMetaJson,
    Expression<String>? stepsJson,
    Expression<String>? metaJson,
    Expression<bool>? autoRewardBySystem,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (subtitle != null) 'subtitle': subtitle,
      if (description != null) 'description': description,
      if (origin != null) 'origin': origin,
      if (createdByUserId != null) 'created_by_user_id': createdByUserId,
      if (isEditable != null) 'is_editable': isEditable,
      if (isDeletable != null) 'is_deletable': isDeletable,
      if (isUserScoped != null) 'is_user_scoped': isUserScoped,
      if (type != null) 'type': type,
      if (categoriesJson != null) 'categories_json': categoriesJson,
      if (difficulty != null) 'difficulty': difficulty,
      if (rank != null) 'rank': rank,
      if (requiredPlayerRank != null)
        'required_player_rank': requiredPlayerRank,
      if (requiredLevel != null) 'required_level': requiredLevel,
      if (requiredClassIdsJson != null)
        'required_class_ids_json': requiredClassIdsJson,
      if (requiredFactionIdsJson != null)
        'required_faction_ids_json': requiredFactionIdsJson,
      if (prerequisiteQuestIdsJson != null)
        'prerequisite_quest_ids_json': prerequisiteQuestIdsJson,
      if (baseXpReward != null) 'base_xp_reward': baseXpReward,
      if (vitalXpReward != null) 'vital_xp_reward': vitalXpReward,
      if (penaltyXpOnFail != null) 'penalty_xp_on_fail': penaltyXpOnFail,
      if (goldReward != null) 'gold_reward': goldReward,
      if (itemRewardIdsJson != null) 'item_reward_ids_json': itemRewardIdsJson,
      if (attributeRewardsJson != null)
        'attribute_rewards_json': attributeRewardsJson,
      if (itemDropChance != null) 'item_drop_chance': itemDropChance,
      if (possibleItemDropsJson != null)
        'possible_item_drops_json': possibleItemDropsJson,
      if (isDaily != null) 'is_daily': isDaily,
      if (isRepeatable != null) 'is_repeatable': isRepeatable,
      if (maxDailyCompletions != null)
        'max_daily_completions': maxDailyCompletions,
      if (availableFrom != null) 'available_from': availableFrom,
      if (availableUntil != null) 'available_until': availableUntil,
      if (isCoop != null) 'is_coop': isCoop,
      if (minPartySize != null) 'min_party_size': minPartySize,
      if (maxPartySize != null) 'max_party_size': maxPartySize,
      if (trackingType != null) 'tracking_type': trackingType,
      if (trackingUnit != null) 'tracking_unit': trackingUnit,
      if (defaultTargetProgress != null)
        'default_target_progress': defaultTargetProgress,
      if (autoCompleteFromApp != null)
        'auto_complete_from_app': autoCompleteFromApp,
      if (autoCompleteEventKey != null)
        'auto_complete_event_key': autoCompleteEventKey,
      if (linkedContentType != null) 'linked_content_type': linkedContentType,
      if (linkedContentId != null) 'linked_content_id': linkedContentId,
      if (trackingMetaJson != null) 'tracking_meta_json': trackingMetaJson,
      if (stepsJson != null) 'steps_json': stepsJson,
      if (metaJson != null) 'meta_json': metaJson,
      if (autoRewardBySystem != null)
        'auto_reward_by_system': autoRewardBySystem,
      if (rowid != null) 'rowid': rowid,
    });
  }

  QuestTemplatesCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<String?>? subtitle,
    Value<String>? description,
    Value<String>? origin,
    Value<String?>? createdByUserId,
    Value<bool>? isEditable,
    Value<bool>? isDeletable,
    Value<bool>? isUserScoped,
    Value<String>? type,
    Value<String>? categoriesJson,
    Value<String>? difficulty,
    Value<String?>? rank,
    Value<String?>? requiredPlayerRank,
    Value<int?>? requiredLevel,
    Value<String>? requiredClassIdsJson,
    Value<String>? requiredFactionIdsJson,
    Value<String>? prerequisiteQuestIdsJson,
    Value<int>? baseXpReward,
    Value<int>? vitalXpReward,
    Value<int>? penaltyXpOnFail,
    Value<int>? goldReward,
    Value<String>? itemRewardIdsJson,
    Value<String>? attributeRewardsJson,
    Value<double?>? itemDropChance,
    Value<String>? possibleItemDropsJson,
    Value<bool>? isDaily,
    Value<bool>? isRepeatable,
    Value<int?>? maxDailyCompletions,
    Value<DateTime?>? availableFrom,
    Value<DateTime?>? availableUntil,
    Value<bool>? isCoop,
    Value<int?>? minPartySize,
    Value<int?>? maxPartySize,
    Value<String>? trackingType,
    Value<String>? trackingUnit,
    Value<int>? defaultTargetProgress,
    Value<bool>? autoCompleteFromApp,
    Value<String?>? autoCompleteEventKey,
    Value<String>? linkedContentType,
    Value<String?>? linkedContentId,
    Value<String>? trackingMetaJson,
    Value<String>? stepsJson,
    Value<String>? metaJson,
    Value<bool>? autoRewardBySystem,
    Value<int>? rowid,
  }) {
    return QuestTemplatesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      description: description ?? this.description,
      origin: origin ?? this.origin,
      createdByUserId: createdByUserId ?? this.createdByUserId,
      isEditable: isEditable ?? this.isEditable,
      isDeletable: isDeletable ?? this.isDeletable,
      isUserScoped: isUserScoped ?? this.isUserScoped,
      type: type ?? this.type,
      categoriesJson: categoriesJson ?? this.categoriesJson,
      difficulty: difficulty ?? this.difficulty,
      rank: rank ?? this.rank,
      requiredPlayerRank: requiredPlayerRank ?? this.requiredPlayerRank,
      requiredLevel: requiredLevel ?? this.requiredLevel,
      requiredClassIdsJson: requiredClassIdsJson ?? this.requiredClassIdsJson,
      requiredFactionIdsJson:
          requiredFactionIdsJson ?? this.requiredFactionIdsJson,
      prerequisiteQuestIdsJson:
          prerequisiteQuestIdsJson ?? this.prerequisiteQuestIdsJson,
      baseXpReward: baseXpReward ?? this.baseXpReward,
      vitalXpReward: vitalXpReward ?? this.vitalXpReward,
      penaltyXpOnFail: penaltyXpOnFail ?? this.penaltyXpOnFail,
      goldReward: goldReward ?? this.goldReward,
      itemRewardIdsJson: itemRewardIdsJson ?? this.itemRewardIdsJson,
      attributeRewardsJson: attributeRewardsJson ?? this.attributeRewardsJson,
      itemDropChance: itemDropChance ?? this.itemDropChance,
      possibleItemDropsJson:
          possibleItemDropsJson ?? this.possibleItemDropsJson,
      isDaily: isDaily ?? this.isDaily,
      isRepeatable: isRepeatable ?? this.isRepeatable,
      maxDailyCompletions: maxDailyCompletions ?? this.maxDailyCompletions,
      availableFrom: availableFrom ?? this.availableFrom,
      availableUntil: availableUntil ?? this.availableUntil,
      isCoop: isCoop ?? this.isCoop,
      minPartySize: minPartySize ?? this.minPartySize,
      maxPartySize: maxPartySize ?? this.maxPartySize,
      trackingType: trackingType ?? this.trackingType,
      trackingUnit: trackingUnit ?? this.trackingUnit,
      defaultTargetProgress:
          defaultTargetProgress ?? this.defaultTargetProgress,
      autoCompleteFromApp: autoCompleteFromApp ?? this.autoCompleteFromApp,
      autoCompleteEventKey: autoCompleteEventKey ?? this.autoCompleteEventKey,
      linkedContentType: linkedContentType ?? this.linkedContentType,
      linkedContentId: linkedContentId ?? this.linkedContentId,
      trackingMetaJson: trackingMetaJson ?? this.trackingMetaJson,
      stepsJson: stepsJson ?? this.stepsJson,
      metaJson: metaJson ?? this.metaJson,
      autoRewardBySystem: autoRewardBySystem ?? this.autoRewardBySystem,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (subtitle.present) {
      map['subtitle'] = Variable<String>(subtitle.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (origin.present) {
      map['origin'] = Variable<String>(origin.value);
    }
    if (createdByUserId.present) {
      map['created_by_user_id'] = Variable<String>(createdByUserId.value);
    }
    if (isEditable.present) {
      map['is_editable'] = Variable<bool>(isEditable.value);
    }
    if (isDeletable.present) {
      map['is_deletable'] = Variable<bool>(isDeletable.value);
    }
    if (isUserScoped.present) {
      map['is_user_scoped'] = Variable<bool>(isUserScoped.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (categoriesJson.present) {
      map['categories_json'] = Variable<String>(categoriesJson.value);
    }
    if (difficulty.present) {
      map['difficulty'] = Variable<String>(difficulty.value);
    }
    if (rank.present) {
      map['rank'] = Variable<String>(rank.value);
    }
    if (requiredPlayerRank.present) {
      map['required_player_rank'] = Variable<String>(requiredPlayerRank.value);
    }
    if (requiredLevel.present) {
      map['required_level'] = Variable<int>(requiredLevel.value);
    }
    if (requiredClassIdsJson.present) {
      map['required_class_ids_json'] = Variable<String>(
        requiredClassIdsJson.value,
      );
    }
    if (requiredFactionIdsJson.present) {
      map['required_faction_ids_json'] = Variable<String>(
        requiredFactionIdsJson.value,
      );
    }
    if (prerequisiteQuestIdsJson.present) {
      map['prerequisite_quest_ids_json'] = Variable<String>(
        prerequisiteQuestIdsJson.value,
      );
    }
    if (baseXpReward.present) {
      map['base_xp_reward'] = Variable<int>(baseXpReward.value);
    }
    if (vitalXpReward.present) {
      map['vital_xp_reward'] = Variable<int>(vitalXpReward.value);
    }
    if (penaltyXpOnFail.present) {
      map['penalty_xp_on_fail'] = Variable<int>(penaltyXpOnFail.value);
    }
    if (goldReward.present) {
      map['gold_reward'] = Variable<int>(goldReward.value);
    }
    if (itemRewardIdsJson.present) {
      map['item_reward_ids_json'] = Variable<String>(itemRewardIdsJson.value);
    }
    if (attributeRewardsJson.present) {
      map['attribute_rewards_json'] = Variable<String>(
        attributeRewardsJson.value,
      );
    }
    if (itemDropChance.present) {
      map['item_drop_chance'] = Variable<double>(itemDropChance.value);
    }
    if (possibleItemDropsJson.present) {
      map['possible_item_drops_json'] = Variable<String>(
        possibleItemDropsJson.value,
      );
    }
    if (isDaily.present) {
      map['is_daily'] = Variable<bool>(isDaily.value);
    }
    if (isRepeatable.present) {
      map['is_repeatable'] = Variable<bool>(isRepeatable.value);
    }
    if (maxDailyCompletions.present) {
      map['max_daily_completions'] = Variable<int>(maxDailyCompletions.value);
    }
    if (availableFrom.present) {
      map['available_from'] = Variable<DateTime>(availableFrom.value);
    }
    if (availableUntil.present) {
      map['available_until'] = Variable<DateTime>(availableUntil.value);
    }
    if (isCoop.present) {
      map['is_coop'] = Variable<bool>(isCoop.value);
    }
    if (minPartySize.present) {
      map['min_party_size'] = Variable<int>(minPartySize.value);
    }
    if (maxPartySize.present) {
      map['max_party_size'] = Variable<int>(maxPartySize.value);
    }
    if (trackingType.present) {
      map['tracking_type'] = Variable<String>(trackingType.value);
    }
    if (trackingUnit.present) {
      map['tracking_unit'] = Variable<String>(trackingUnit.value);
    }
    if (defaultTargetProgress.present) {
      map['default_target_progress'] = Variable<int>(
        defaultTargetProgress.value,
      );
    }
    if (autoCompleteFromApp.present) {
      map['auto_complete_from_app'] = Variable<bool>(autoCompleteFromApp.value);
    }
    if (autoCompleteEventKey.present) {
      map['auto_complete_event_key'] = Variable<String>(
        autoCompleteEventKey.value,
      );
    }
    if (linkedContentType.present) {
      map['linked_content_type'] = Variable<String>(linkedContentType.value);
    }
    if (linkedContentId.present) {
      map['linked_content_id'] = Variable<String>(linkedContentId.value);
    }
    if (trackingMetaJson.present) {
      map['tracking_meta_json'] = Variable<String>(trackingMetaJson.value);
    }
    if (stepsJson.present) {
      map['steps_json'] = Variable<String>(stepsJson.value);
    }
    if (metaJson.present) {
      map['meta_json'] = Variable<String>(metaJson.value);
    }
    if (autoRewardBySystem.present) {
      map['auto_reward_by_system'] = Variable<bool>(autoRewardBySystem.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestTemplatesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('subtitle: $subtitle, ')
          ..write('description: $description, ')
          ..write('origin: $origin, ')
          ..write('createdByUserId: $createdByUserId, ')
          ..write('isEditable: $isEditable, ')
          ..write('isDeletable: $isDeletable, ')
          ..write('isUserScoped: $isUserScoped, ')
          ..write('type: $type, ')
          ..write('categoriesJson: $categoriesJson, ')
          ..write('difficulty: $difficulty, ')
          ..write('rank: $rank, ')
          ..write('requiredPlayerRank: $requiredPlayerRank, ')
          ..write('requiredLevel: $requiredLevel, ')
          ..write('requiredClassIdsJson: $requiredClassIdsJson, ')
          ..write('requiredFactionIdsJson: $requiredFactionIdsJson, ')
          ..write('prerequisiteQuestIdsJson: $prerequisiteQuestIdsJson, ')
          ..write('baseXpReward: $baseXpReward, ')
          ..write('vitalXpReward: $vitalXpReward, ')
          ..write('penaltyXpOnFail: $penaltyXpOnFail, ')
          ..write('goldReward: $goldReward, ')
          ..write('itemRewardIdsJson: $itemRewardIdsJson, ')
          ..write('attributeRewardsJson: $attributeRewardsJson, ')
          ..write('itemDropChance: $itemDropChance, ')
          ..write('possibleItemDropsJson: $possibleItemDropsJson, ')
          ..write('isDaily: $isDaily, ')
          ..write('isRepeatable: $isRepeatable, ')
          ..write('maxDailyCompletions: $maxDailyCompletions, ')
          ..write('availableFrom: $availableFrom, ')
          ..write('availableUntil: $availableUntil, ')
          ..write('isCoop: $isCoop, ')
          ..write('minPartySize: $minPartySize, ')
          ..write('maxPartySize: $maxPartySize, ')
          ..write('trackingType: $trackingType, ')
          ..write('trackingUnit: $trackingUnit, ')
          ..write('defaultTargetProgress: $defaultTargetProgress, ')
          ..write('autoCompleteFromApp: $autoCompleteFromApp, ')
          ..write('autoCompleteEventKey: $autoCompleteEventKey, ')
          ..write('linkedContentType: $linkedContentType, ')
          ..write('linkedContentId: $linkedContentId, ')
          ..write('trackingMetaJson: $trackingMetaJson, ')
          ..write('stepsJson: $stepsJson, ')
          ..write('metaJson: $metaJson, ')
          ..write('autoRewardBySystem: $autoRewardBySystem, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $QuestInstancesTable extends QuestInstances
    with TableInfo<$QuestInstancesTable, QuestInstance> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuestInstancesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _questIdMeta = const VerificationMeta(
    'questId',
  );
  @override
  late final GeneratedColumn<String> questId = GeneratedColumn<String>(
    'quest_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('available'),
  );
  static const VerificationMeta _isCustomUserQuestMeta = const VerificationMeta(
    'isCustomUserQuest',
  );
  @override
  late final GeneratedColumn<bool> isCustomUserQuest = GeneratedColumn<bool>(
    'is_custom_user_quest',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_custom_user_quest" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _userCustomSlotIndexMeta =
      const VerificationMeta('userCustomSlotIndex');
  @override
  late final GeneratedColumn<int> userCustomSlotIndex = GeneratedColumn<int>(
    'user_custom_slot_index',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _userCustomConfigJsonMeta =
      const VerificationMeta('userCustomConfigJson');
  @override
  late final GeneratedColumn<String> userCustomConfigJson =
      GeneratedColumn<String>(
        'user_custom_config_json',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('{}'),
      );
  static const VerificationMeta _currentProgressMeta = const VerificationMeta(
    'currentProgress',
  );
  @override
  late final GeneratedColumn<int> currentProgress = GeneratedColumn<int>(
    'current_progress',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _targetProgressMeta = const VerificationMeta(
    'targetProgress',
  );
  @override
  late final GeneratedColumn<int> targetProgress = GeneratedColumn<int>(
    'target_progress',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _streakDayRefMeta = const VerificationMeta(
    'streakDayRef',
  );
  @override
  late final GeneratedColumn<int> streakDayRef = GeneratedColumn<int>(
    'streak_day_ref',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _startedAtMeta = const VerificationMeta(
    'startedAt',
  );
  @override
  late final GeneratedColumn<DateTime> startedAt = GeneratedColumn<DateTime>(
    'started_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _completedAtMeta = const VerificationMeta(
    'completedAt',
  );
  @override
  late final GeneratedColumn<DateTime> completedAt = GeneratedColumn<DateTime>(
    'completed_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _failedAtMeta = const VerificationMeta(
    'failedAt',
  );
  @override
  late final GeneratedColumn<DateTime> failedAt = GeneratedColumn<DateTime>(
    'failed_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _expiresAtMeta = const VerificationMeta(
    'expiresAt',
  );
  @override
  late final GeneratedColumn<DateTime> expiresAt = GeneratedColumn<DateTime>(
    'expires_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _lastUpdatedAtMeta = const VerificationMeta(
    'lastUpdatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastUpdatedAt =
      GeneratedColumn<DateTime>(
        'last_updated_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _timesCompletedMeta = const VerificationMeta(
    'timesCompleted',
  );
  @override
  late final GeneratedColumn<int> timesCompleted = GeneratedColumn<int>(
    'times_completed',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _stepProgressJsonMeta = const VerificationMeta(
    'stepProgressJson',
  );
  @override
  late final GeneratedColumn<String> stepProgressJson = GeneratedColumn<String>(
    'step_progress_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('{}'),
  );
  static const VerificationMeta _completedStepIdsJsonMeta =
      const VerificationMeta('completedStepIdsJson');
  @override
  late final GeneratedColumn<String> completedStepIdsJson =
      GeneratedColumn<String>(
        'completed_step_ids_json',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('[]'),
      );
  static const VerificationMeta _resultMetaJsonMeta = const VerificationMeta(
    'resultMetaJson',
  );
  @override
  late final GeneratedColumn<String> resultMetaJson = GeneratedColumn<String>(
    'result_meta_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('{}'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    questId,
    status,
    isCustomUserQuest,
    userCustomSlotIndex,
    userCustomConfigJson,
    currentProgress,
    targetProgress,
    streakDayRef,
    createdAt,
    startedAt,
    completedAt,
    failedAt,
    expiresAt,
    lastUpdatedAt,
    timesCompleted,
    stepProgressJson,
    completedStepIdsJson,
    resultMetaJson,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'quest_instances';
  @override
  VerificationContext validateIntegrity(
    Insertable<QuestInstance> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('quest_id')) {
      context.handle(
        _questIdMeta,
        questId.isAcceptableOrUnknown(data['quest_id']!, _questIdMeta),
      );
    } else if (isInserting) {
      context.missing(_questIdMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('is_custom_user_quest')) {
      context.handle(
        _isCustomUserQuestMeta,
        isCustomUserQuest.isAcceptableOrUnknown(
          data['is_custom_user_quest']!,
          _isCustomUserQuestMeta,
        ),
      );
    }
    if (data.containsKey('user_custom_slot_index')) {
      context.handle(
        _userCustomSlotIndexMeta,
        userCustomSlotIndex.isAcceptableOrUnknown(
          data['user_custom_slot_index']!,
          _userCustomSlotIndexMeta,
        ),
      );
    }
    if (data.containsKey('user_custom_config_json')) {
      context.handle(
        _userCustomConfigJsonMeta,
        userCustomConfigJson.isAcceptableOrUnknown(
          data['user_custom_config_json']!,
          _userCustomConfigJsonMeta,
        ),
      );
    }
    if (data.containsKey('current_progress')) {
      context.handle(
        _currentProgressMeta,
        currentProgress.isAcceptableOrUnknown(
          data['current_progress']!,
          _currentProgressMeta,
        ),
      );
    }
    if (data.containsKey('target_progress')) {
      context.handle(
        _targetProgressMeta,
        targetProgress.isAcceptableOrUnknown(
          data['target_progress']!,
          _targetProgressMeta,
        ),
      );
    }
    if (data.containsKey('streak_day_ref')) {
      context.handle(
        _streakDayRefMeta,
        streakDayRef.isAcceptableOrUnknown(
          data['streak_day_ref']!,
          _streakDayRefMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('started_at')) {
      context.handle(
        _startedAtMeta,
        startedAt.isAcceptableOrUnknown(data['started_at']!, _startedAtMeta),
      );
    }
    if (data.containsKey('completed_at')) {
      context.handle(
        _completedAtMeta,
        completedAt.isAcceptableOrUnknown(
          data['completed_at']!,
          _completedAtMeta,
        ),
      );
    }
    if (data.containsKey('failed_at')) {
      context.handle(
        _failedAtMeta,
        failedAt.isAcceptableOrUnknown(data['failed_at']!, _failedAtMeta),
      );
    }
    if (data.containsKey('expires_at')) {
      context.handle(
        _expiresAtMeta,
        expiresAt.isAcceptableOrUnknown(data['expires_at']!, _expiresAtMeta),
      );
    }
    if (data.containsKey('last_updated_at')) {
      context.handle(
        _lastUpdatedAtMeta,
        lastUpdatedAt.isAcceptableOrUnknown(
          data['last_updated_at']!,
          _lastUpdatedAtMeta,
        ),
      );
    }
    if (data.containsKey('times_completed')) {
      context.handle(
        _timesCompletedMeta,
        timesCompleted.isAcceptableOrUnknown(
          data['times_completed']!,
          _timesCompletedMeta,
        ),
      );
    }
    if (data.containsKey('step_progress_json')) {
      context.handle(
        _stepProgressJsonMeta,
        stepProgressJson.isAcceptableOrUnknown(
          data['step_progress_json']!,
          _stepProgressJsonMeta,
        ),
      );
    }
    if (data.containsKey('completed_step_ids_json')) {
      context.handle(
        _completedStepIdsJsonMeta,
        completedStepIdsJson.isAcceptableOrUnknown(
          data['completed_step_ids_json']!,
          _completedStepIdsJsonMeta,
        ),
      );
    }
    if (data.containsKey('result_meta_json')) {
      context.handle(
        _resultMetaJsonMeta,
        resultMetaJson.isAcceptableOrUnknown(
          data['result_meta_json']!,
          _resultMetaJsonMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QuestInstance map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QuestInstance(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      questId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}quest_id'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      isCustomUserQuest: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_custom_user_quest'],
      )!,
      userCustomSlotIndex: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}user_custom_slot_index'],
      ),
      userCustomConfigJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_custom_config_json'],
      )!,
      currentProgress: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}current_progress'],
      )!,
      targetProgress: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}target_progress'],
      )!,
      streakDayRef: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}streak_day_ref'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      startedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}started_at'],
      ),
      completedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}completed_at'],
      ),
      failedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}failed_at'],
      ),
      expiresAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}expires_at'],
      ),
      lastUpdatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_updated_at'],
      ),
      timesCompleted: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}times_completed'],
      )!,
      stepProgressJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}step_progress_json'],
      )!,
      completedStepIdsJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}completed_step_ids_json'],
      )!,
      resultMetaJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}result_meta_json'],
      )!,
    );
  }

  @override
  $QuestInstancesTable createAlias(String alias) {
    return $QuestInstancesTable(attachedDatabase, alias);
  }
}

class QuestInstance extends DataClass implements Insertable<QuestInstance> {
  final String id;
  final String userId;
  final String questId;

  /// QuestStatus: locked, available, inProgress, completed, failed, expired
  final String status;

  /// Se essa instância é de uma quest customizada pelo usuário
  final bool isCustomUserQuest;

  /// Índice de slot custom do usuário (para limitar 5 free, etc.)
  final int? userCustomSlotIndex;

  /// Config extra da quest custom (nome original que o user digitou, etc.)
  final String userCustomConfigJson;
  final int currentProgress;
  final int targetProgress;

  /// Para daily: referência de dia (segue padrão int que você já usa, ex: 20251128)
  final int? streakDayRef;
  final DateTime createdAt;
  final DateTime? startedAt;
  final DateTime? completedAt;
  final DateTime? failedAt;
  final DateTime? expiresAt;
  final DateTime? lastUpdatedAt;
  final int timesCompleted;

  /// Progresso por step: {"step_1":1, "step_2":10}
  final String stepProgressJson;

  /// Steps concluídos: ["step_1","step_3"]
  final String completedStepIdsJson;

  /// Meta de resultado: diário, reflexão, etc.
  final String resultMetaJson;
  const QuestInstance({
    required this.id,
    required this.userId,
    required this.questId,
    required this.status,
    required this.isCustomUserQuest,
    this.userCustomSlotIndex,
    required this.userCustomConfigJson,
    required this.currentProgress,
    required this.targetProgress,
    this.streakDayRef,
    required this.createdAt,
    this.startedAt,
    this.completedAt,
    this.failedAt,
    this.expiresAt,
    this.lastUpdatedAt,
    required this.timesCompleted,
    required this.stepProgressJson,
    required this.completedStepIdsJson,
    required this.resultMetaJson,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['quest_id'] = Variable<String>(questId);
    map['status'] = Variable<String>(status);
    map['is_custom_user_quest'] = Variable<bool>(isCustomUserQuest);
    if (!nullToAbsent || userCustomSlotIndex != null) {
      map['user_custom_slot_index'] = Variable<int>(userCustomSlotIndex);
    }
    map['user_custom_config_json'] = Variable<String>(userCustomConfigJson);
    map['current_progress'] = Variable<int>(currentProgress);
    map['target_progress'] = Variable<int>(targetProgress);
    if (!nullToAbsent || streakDayRef != null) {
      map['streak_day_ref'] = Variable<int>(streakDayRef);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || startedAt != null) {
      map['started_at'] = Variable<DateTime>(startedAt);
    }
    if (!nullToAbsent || completedAt != null) {
      map['completed_at'] = Variable<DateTime>(completedAt);
    }
    if (!nullToAbsent || failedAt != null) {
      map['failed_at'] = Variable<DateTime>(failedAt);
    }
    if (!nullToAbsent || expiresAt != null) {
      map['expires_at'] = Variable<DateTime>(expiresAt);
    }
    if (!nullToAbsent || lastUpdatedAt != null) {
      map['last_updated_at'] = Variable<DateTime>(lastUpdatedAt);
    }
    map['times_completed'] = Variable<int>(timesCompleted);
    map['step_progress_json'] = Variable<String>(stepProgressJson);
    map['completed_step_ids_json'] = Variable<String>(completedStepIdsJson);
    map['result_meta_json'] = Variable<String>(resultMetaJson);
    return map;
  }

  QuestInstancesCompanion toCompanion(bool nullToAbsent) {
    return QuestInstancesCompanion(
      id: Value(id),
      userId: Value(userId),
      questId: Value(questId),
      status: Value(status),
      isCustomUserQuest: Value(isCustomUserQuest),
      userCustomSlotIndex: userCustomSlotIndex == null && nullToAbsent
          ? const Value.absent()
          : Value(userCustomSlotIndex),
      userCustomConfigJson: Value(userCustomConfigJson),
      currentProgress: Value(currentProgress),
      targetProgress: Value(targetProgress),
      streakDayRef: streakDayRef == null && nullToAbsent
          ? const Value.absent()
          : Value(streakDayRef),
      createdAt: Value(createdAt),
      startedAt: startedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(startedAt),
      completedAt: completedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(completedAt),
      failedAt: failedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(failedAt),
      expiresAt: expiresAt == null && nullToAbsent
          ? const Value.absent()
          : Value(expiresAt),
      lastUpdatedAt: lastUpdatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdatedAt),
      timesCompleted: Value(timesCompleted),
      stepProgressJson: Value(stepProgressJson),
      completedStepIdsJson: Value(completedStepIdsJson),
      resultMetaJson: Value(resultMetaJson),
    );
  }

  factory QuestInstance.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QuestInstance(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      questId: serializer.fromJson<String>(json['questId']),
      status: serializer.fromJson<String>(json['status']),
      isCustomUserQuest: serializer.fromJson<bool>(json['isCustomUserQuest']),
      userCustomSlotIndex: serializer.fromJson<int?>(
        json['userCustomSlotIndex'],
      ),
      userCustomConfigJson: serializer.fromJson<String>(
        json['userCustomConfigJson'],
      ),
      currentProgress: serializer.fromJson<int>(json['currentProgress']),
      targetProgress: serializer.fromJson<int>(json['targetProgress']),
      streakDayRef: serializer.fromJson<int?>(json['streakDayRef']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      startedAt: serializer.fromJson<DateTime?>(json['startedAt']),
      completedAt: serializer.fromJson<DateTime?>(json['completedAt']),
      failedAt: serializer.fromJson<DateTime?>(json['failedAt']),
      expiresAt: serializer.fromJson<DateTime?>(json['expiresAt']),
      lastUpdatedAt: serializer.fromJson<DateTime?>(json['lastUpdatedAt']),
      timesCompleted: serializer.fromJson<int>(json['timesCompleted']),
      stepProgressJson: serializer.fromJson<String>(json['stepProgressJson']),
      completedStepIdsJson: serializer.fromJson<String>(
        json['completedStepIdsJson'],
      ),
      resultMetaJson: serializer.fromJson<String>(json['resultMetaJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'questId': serializer.toJson<String>(questId),
      'status': serializer.toJson<String>(status),
      'isCustomUserQuest': serializer.toJson<bool>(isCustomUserQuest),
      'userCustomSlotIndex': serializer.toJson<int?>(userCustomSlotIndex),
      'userCustomConfigJson': serializer.toJson<String>(userCustomConfigJson),
      'currentProgress': serializer.toJson<int>(currentProgress),
      'targetProgress': serializer.toJson<int>(targetProgress),
      'streakDayRef': serializer.toJson<int?>(streakDayRef),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'startedAt': serializer.toJson<DateTime?>(startedAt),
      'completedAt': serializer.toJson<DateTime?>(completedAt),
      'failedAt': serializer.toJson<DateTime?>(failedAt),
      'expiresAt': serializer.toJson<DateTime?>(expiresAt),
      'lastUpdatedAt': serializer.toJson<DateTime?>(lastUpdatedAt),
      'timesCompleted': serializer.toJson<int>(timesCompleted),
      'stepProgressJson': serializer.toJson<String>(stepProgressJson),
      'completedStepIdsJson': serializer.toJson<String>(completedStepIdsJson),
      'resultMetaJson': serializer.toJson<String>(resultMetaJson),
    };
  }

  QuestInstance copyWith({
    String? id,
    String? userId,
    String? questId,
    String? status,
    bool? isCustomUserQuest,
    Value<int?> userCustomSlotIndex = const Value.absent(),
    String? userCustomConfigJson,
    int? currentProgress,
    int? targetProgress,
    Value<int?> streakDayRef = const Value.absent(),
    DateTime? createdAt,
    Value<DateTime?> startedAt = const Value.absent(),
    Value<DateTime?> completedAt = const Value.absent(),
    Value<DateTime?> failedAt = const Value.absent(),
    Value<DateTime?> expiresAt = const Value.absent(),
    Value<DateTime?> lastUpdatedAt = const Value.absent(),
    int? timesCompleted,
    String? stepProgressJson,
    String? completedStepIdsJson,
    String? resultMetaJson,
  }) => QuestInstance(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    questId: questId ?? this.questId,
    status: status ?? this.status,
    isCustomUserQuest: isCustomUserQuest ?? this.isCustomUserQuest,
    userCustomSlotIndex: userCustomSlotIndex.present
        ? userCustomSlotIndex.value
        : this.userCustomSlotIndex,
    userCustomConfigJson: userCustomConfigJson ?? this.userCustomConfigJson,
    currentProgress: currentProgress ?? this.currentProgress,
    targetProgress: targetProgress ?? this.targetProgress,
    streakDayRef: streakDayRef.present ? streakDayRef.value : this.streakDayRef,
    createdAt: createdAt ?? this.createdAt,
    startedAt: startedAt.present ? startedAt.value : this.startedAt,
    completedAt: completedAt.present ? completedAt.value : this.completedAt,
    failedAt: failedAt.present ? failedAt.value : this.failedAt,
    expiresAt: expiresAt.present ? expiresAt.value : this.expiresAt,
    lastUpdatedAt: lastUpdatedAt.present
        ? lastUpdatedAt.value
        : this.lastUpdatedAt,
    timesCompleted: timesCompleted ?? this.timesCompleted,
    stepProgressJson: stepProgressJson ?? this.stepProgressJson,
    completedStepIdsJson: completedStepIdsJson ?? this.completedStepIdsJson,
    resultMetaJson: resultMetaJson ?? this.resultMetaJson,
  );
  QuestInstance copyWithCompanion(QuestInstancesCompanion data) {
    return QuestInstance(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      questId: data.questId.present ? data.questId.value : this.questId,
      status: data.status.present ? data.status.value : this.status,
      isCustomUserQuest: data.isCustomUserQuest.present
          ? data.isCustomUserQuest.value
          : this.isCustomUserQuest,
      userCustomSlotIndex: data.userCustomSlotIndex.present
          ? data.userCustomSlotIndex.value
          : this.userCustomSlotIndex,
      userCustomConfigJson: data.userCustomConfigJson.present
          ? data.userCustomConfigJson.value
          : this.userCustomConfigJson,
      currentProgress: data.currentProgress.present
          ? data.currentProgress.value
          : this.currentProgress,
      targetProgress: data.targetProgress.present
          ? data.targetProgress.value
          : this.targetProgress,
      streakDayRef: data.streakDayRef.present
          ? data.streakDayRef.value
          : this.streakDayRef,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      startedAt: data.startedAt.present ? data.startedAt.value : this.startedAt,
      completedAt: data.completedAt.present
          ? data.completedAt.value
          : this.completedAt,
      failedAt: data.failedAt.present ? data.failedAt.value : this.failedAt,
      expiresAt: data.expiresAt.present ? data.expiresAt.value : this.expiresAt,
      lastUpdatedAt: data.lastUpdatedAt.present
          ? data.lastUpdatedAt.value
          : this.lastUpdatedAt,
      timesCompleted: data.timesCompleted.present
          ? data.timesCompleted.value
          : this.timesCompleted,
      stepProgressJson: data.stepProgressJson.present
          ? data.stepProgressJson.value
          : this.stepProgressJson,
      completedStepIdsJson: data.completedStepIdsJson.present
          ? data.completedStepIdsJson.value
          : this.completedStepIdsJson,
      resultMetaJson: data.resultMetaJson.present
          ? data.resultMetaJson.value
          : this.resultMetaJson,
    );
  }

  @override
  String toString() {
    return (StringBuffer('QuestInstance(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('questId: $questId, ')
          ..write('status: $status, ')
          ..write('isCustomUserQuest: $isCustomUserQuest, ')
          ..write('userCustomSlotIndex: $userCustomSlotIndex, ')
          ..write('userCustomConfigJson: $userCustomConfigJson, ')
          ..write('currentProgress: $currentProgress, ')
          ..write('targetProgress: $targetProgress, ')
          ..write('streakDayRef: $streakDayRef, ')
          ..write('createdAt: $createdAt, ')
          ..write('startedAt: $startedAt, ')
          ..write('completedAt: $completedAt, ')
          ..write('failedAt: $failedAt, ')
          ..write('expiresAt: $expiresAt, ')
          ..write('lastUpdatedAt: $lastUpdatedAt, ')
          ..write('timesCompleted: $timesCompleted, ')
          ..write('stepProgressJson: $stepProgressJson, ')
          ..write('completedStepIdsJson: $completedStepIdsJson, ')
          ..write('resultMetaJson: $resultMetaJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    userId,
    questId,
    status,
    isCustomUserQuest,
    userCustomSlotIndex,
    userCustomConfigJson,
    currentProgress,
    targetProgress,
    streakDayRef,
    createdAt,
    startedAt,
    completedAt,
    failedAt,
    expiresAt,
    lastUpdatedAt,
    timesCompleted,
    stepProgressJson,
    completedStepIdsJson,
    resultMetaJson,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QuestInstance &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.questId == this.questId &&
          other.status == this.status &&
          other.isCustomUserQuest == this.isCustomUserQuest &&
          other.userCustomSlotIndex == this.userCustomSlotIndex &&
          other.userCustomConfigJson == this.userCustomConfigJson &&
          other.currentProgress == this.currentProgress &&
          other.targetProgress == this.targetProgress &&
          other.streakDayRef == this.streakDayRef &&
          other.createdAt == this.createdAt &&
          other.startedAt == this.startedAt &&
          other.completedAt == this.completedAt &&
          other.failedAt == this.failedAt &&
          other.expiresAt == this.expiresAt &&
          other.lastUpdatedAt == this.lastUpdatedAt &&
          other.timesCompleted == this.timesCompleted &&
          other.stepProgressJson == this.stepProgressJson &&
          other.completedStepIdsJson == this.completedStepIdsJson &&
          other.resultMetaJson == this.resultMetaJson);
}

class QuestInstancesCompanion extends UpdateCompanion<QuestInstance> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> questId;
  final Value<String> status;
  final Value<bool> isCustomUserQuest;
  final Value<int?> userCustomSlotIndex;
  final Value<String> userCustomConfigJson;
  final Value<int> currentProgress;
  final Value<int> targetProgress;
  final Value<int?> streakDayRef;
  final Value<DateTime> createdAt;
  final Value<DateTime?> startedAt;
  final Value<DateTime?> completedAt;
  final Value<DateTime?> failedAt;
  final Value<DateTime?> expiresAt;
  final Value<DateTime?> lastUpdatedAt;
  final Value<int> timesCompleted;
  final Value<String> stepProgressJson;
  final Value<String> completedStepIdsJson;
  final Value<String> resultMetaJson;
  final Value<int> rowid;
  const QuestInstancesCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.questId = const Value.absent(),
    this.status = const Value.absent(),
    this.isCustomUserQuest = const Value.absent(),
    this.userCustomSlotIndex = const Value.absent(),
    this.userCustomConfigJson = const Value.absent(),
    this.currentProgress = const Value.absent(),
    this.targetProgress = const Value.absent(),
    this.streakDayRef = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.startedAt = const Value.absent(),
    this.completedAt = const Value.absent(),
    this.failedAt = const Value.absent(),
    this.expiresAt = const Value.absent(),
    this.lastUpdatedAt = const Value.absent(),
    this.timesCompleted = const Value.absent(),
    this.stepProgressJson = const Value.absent(),
    this.completedStepIdsJson = const Value.absent(),
    this.resultMetaJson = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  QuestInstancesCompanion.insert({
    required String id,
    required String userId,
    required String questId,
    this.status = const Value.absent(),
    this.isCustomUserQuest = const Value.absent(),
    this.userCustomSlotIndex = const Value.absent(),
    this.userCustomConfigJson = const Value.absent(),
    this.currentProgress = const Value.absent(),
    this.targetProgress = const Value.absent(),
    this.streakDayRef = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.startedAt = const Value.absent(),
    this.completedAt = const Value.absent(),
    this.failedAt = const Value.absent(),
    this.expiresAt = const Value.absent(),
    this.lastUpdatedAt = const Value.absent(),
    this.timesCompleted = const Value.absent(),
    this.stepProgressJson = const Value.absent(),
    this.completedStepIdsJson = const Value.absent(),
    this.resultMetaJson = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       userId = Value(userId),
       questId = Value(questId);
  static Insertable<QuestInstance> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? questId,
    Expression<String>? status,
    Expression<bool>? isCustomUserQuest,
    Expression<int>? userCustomSlotIndex,
    Expression<String>? userCustomConfigJson,
    Expression<int>? currentProgress,
    Expression<int>? targetProgress,
    Expression<int>? streakDayRef,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? startedAt,
    Expression<DateTime>? completedAt,
    Expression<DateTime>? failedAt,
    Expression<DateTime>? expiresAt,
    Expression<DateTime>? lastUpdatedAt,
    Expression<int>? timesCompleted,
    Expression<String>? stepProgressJson,
    Expression<String>? completedStepIdsJson,
    Expression<String>? resultMetaJson,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (questId != null) 'quest_id': questId,
      if (status != null) 'status': status,
      if (isCustomUserQuest != null) 'is_custom_user_quest': isCustomUserQuest,
      if (userCustomSlotIndex != null)
        'user_custom_slot_index': userCustomSlotIndex,
      if (userCustomConfigJson != null)
        'user_custom_config_json': userCustomConfigJson,
      if (currentProgress != null) 'current_progress': currentProgress,
      if (targetProgress != null) 'target_progress': targetProgress,
      if (streakDayRef != null) 'streak_day_ref': streakDayRef,
      if (createdAt != null) 'created_at': createdAt,
      if (startedAt != null) 'started_at': startedAt,
      if (completedAt != null) 'completed_at': completedAt,
      if (failedAt != null) 'failed_at': failedAt,
      if (expiresAt != null) 'expires_at': expiresAt,
      if (lastUpdatedAt != null) 'last_updated_at': lastUpdatedAt,
      if (timesCompleted != null) 'times_completed': timesCompleted,
      if (stepProgressJson != null) 'step_progress_json': stepProgressJson,
      if (completedStepIdsJson != null)
        'completed_step_ids_json': completedStepIdsJson,
      if (resultMetaJson != null) 'result_meta_json': resultMetaJson,
      if (rowid != null) 'rowid': rowid,
    });
  }

  QuestInstancesCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<String>? questId,
    Value<String>? status,
    Value<bool>? isCustomUserQuest,
    Value<int?>? userCustomSlotIndex,
    Value<String>? userCustomConfigJson,
    Value<int>? currentProgress,
    Value<int>? targetProgress,
    Value<int?>? streakDayRef,
    Value<DateTime>? createdAt,
    Value<DateTime?>? startedAt,
    Value<DateTime?>? completedAt,
    Value<DateTime?>? failedAt,
    Value<DateTime?>? expiresAt,
    Value<DateTime?>? lastUpdatedAt,
    Value<int>? timesCompleted,
    Value<String>? stepProgressJson,
    Value<String>? completedStepIdsJson,
    Value<String>? resultMetaJson,
    Value<int>? rowid,
  }) {
    return QuestInstancesCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      questId: questId ?? this.questId,
      status: status ?? this.status,
      isCustomUserQuest: isCustomUserQuest ?? this.isCustomUserQuest,
      userCustomSlotIndex: userCustomSlotIndex ?? this.userCustomSlotIndex,
      userCustomConfigJson: userCustomConfigJson ?? this.userCustomConfigJson,
      currentProgress: currentProgress ?? this.currentProgress,
      targetProgress: targetProgress ?? this.targetProgress,
      streakDayRef: streakDayRef ?? this.streakDayRef,
      createdAt: createdAt ?? this.createdAt,
      startedAt: startedAt ?? this.startedAt,
      completedAt: completedAt ?? this.completedAt,
      failedAt: failedAt ?? this.failedAt,
      expiresAt: expiresAt ?? this.expiresAt,
      lastUpdatedAt: lastUpdatedAt ?? this.lastUpdatedAt,
      timesCompleted: timesCompleted ?? this.timesCompleted,
      stepProgressJson: stepProgressJson ?? this.stepProgressJson,
      completedStepIdsJson: completedStepIdsJson ?? this.completedStepIdsJson,
      resultMetaJson: resultMetaJson ?? this.resultMetaJson,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (questId.present) {
      map['quest_id'] = Variable<String>(questId.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (isCustomUserQuest.present) {
      map['is_custom_user_quest'] = Variable<bool>(isCustomUserQuest.value);
    }
    if (userCustomSlotIndex.present) {
      map['user_custom_slot_index'] = Variable<int>(userCustomSlotIndex.value);
    }
    if (userCustomConfigJson.present) {
      map['user_custom_config_json'] = Variable<String>(
        userCustomConfigJson.value,
      );
    }
    if (currentProgress.present) {
      map['current_progress'] = Variable<int>(currentProgress.value);
    }
    if (targetProgress.present) {
      map['target_progress'] = Variable<int>(targetProgress.value);
    }
    if (streakDayRef.present) {
      map['streak_day_ref'] = Variable<int>(streakDayRef.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (startedAt.present) {
      map['started_at'] = Variable<DateTime>(startedAt.value);
    }
    if (completedAt.present) {
      map['completed_at'] = Variable<DateTime>(completedAt.value);
    }
    if (failedAt.present) {
      map['failed_at'] = Variable<DateTime>(failedAt.value);
    }
    if (expiresAt.present) {
      map['expires_at'] = Variable<DateTime>(expiresAt.value);
    }
    if (lastUpdatedAt.present) {
      map['last_updated_at'] = Variable<DateTime>(lastUpdatedAt.value);
    }
    if (timesCompleted.present) {
      map['times_completed'] = Variable<int>(timesCompleted.value);
    }
    if (stepProgressJson.present) {
      map['step_progress_json'] = Variable<String>(stepProgressJson.value);
    }
    if (completedStepIdsJson.present) {
      map['completed_step_ids_json'] = Variable<String>(
        completedStepIdsJson.value,
      );
    }
    if (resultMetaJson.present) {
      map['result_meta_json'] = Variable<String>(resultMetaJson.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestInstancesCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('questId: $questId, ')
          ..write('status: $status, ')
          ..write('isCustomUserQuest: $isCustomUserQuest, ')
          ..write('userCustomSlotIndex: $userCustomSlotIndex, ')
          ..write('userCustomConfigJson: $userCustomConfigJson, ')
          ..write('currentProgress: $currentProgress, ')
          ..write('targetProgress: $targetProgress, ')
          ..write('streakDayRef: $streakDayRef, ')
          ..write('createdAt: $createdAt, ')
          ..write('startedAt: $startedAt, ')
          ..write('completedAt: $completedAt, ')
          ..write('failedAt: $failedAt, ')
          ..write('expiresAt: $expiresAt, ')
          ..write('lastUpdatedAt: $lastUpdatedAt, ')
          ..write('timesCompleted: $timesCompleted, ')
          ..write('stepProgressJson: $stepProgressJson, ')
          ..write('completedStepIdsJson: $completedStepIdsJson, ')
          ..write('resultMetaJson: $resultMetaJson, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ItemsTable extends Items with TableInfo<$ItemsTable, Item> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _jsonDataMeta = const VerificationMeta(
    'jsonData',
  );
  @override
  late final GeneratedColumn<String> jsonData = GeneratedColumn<String>(
    'json_data',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _versionMeta = const VerificationMeta(
    'version',
  );
  @override
  late final GeneratedColumn<int> version = GeneratedColumn<int>(
    'version',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  @override
  List<GeneratedColumn> get $columns => [id, jsonData, version];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'items';
  @override
  VerificationContext validateIntegrity(
    Insertable<Item> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('json_data')) {
      context.handle(
        _jsonDataMeta,
        jsonData.isAcceptableOrUnknown(data['json_data']!, _jsonDataMeta),
      );
    } else if (isInserting) {
      context.missing(_jsonDataMeta);
    }
    if (data.containsKey('version')) {
      context.handle(
        _versionMeta,
        version.isAcceptableOrUnknown(data['version']!, _versionMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Item map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Item(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      jsonData: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}json_data'],
      )!,
      version: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}version'],
      )!,
    );
  }

  @override
  $ItemsTable createAlias(String alias) {
    return $ItemsTable(attachedDatabase, alias);
  }
}

class Item extends DataClass implements Insertable<Item> {
  /// ID do item base do catálogo
  final String id;

  /// JSON COMPLETO do item parrudo
  ///
  /// Contém TUDO:
  /// - name
  /// - rank
  /// - rarity
  /// - tier
  /// - type
  /// - slot
  /// - classes
  /// - faccoes
  /// - requirements
  /// - bonus diretos
  /// - bonus percentuais
  /// - effects
  /// - crafting
  /// - economia
  /// - meshId / visualId
  /// - atributos extras
  ///
  /// Sempre compatível com Item.fromJson().
  final String jsonData;

  /// Futuro: versionamento (opcional)
  final int version;
  const Item({required this.id, required this.jsonData, required this.version});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['json_data'] = Variable<String>(jsonData);
    map['version'] = Variable<int>(version);
    return map;
  }

  ItemsCompanion toCompanion(bool nullToAbsent) {
    return ItemsCompanion(
      id: Value(id),
      jsonData: Value(jsonData),
      version: Value(version),
    );
  }

  factory Item.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Item(
      id: serializer.fromJson<String>(json['id']),
      jsonData: serializer.fromJson<String>(json['jsonData']),
      version: serializer.fromJson<int>(json['version']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'jsonData': serializer.toJson<String>(jsonData),
      'version': serializer.toJson<int>(version),
    };
  }

  Item copyWith({String? id, String? jsonData, int? version}) => Item(
    id: id ?? this.id,
    jsonData: jsonData ?? this.jsonData,
    version: version ?? this.version,
  );
  Item copyWithCompanion(ItemsCompanion data) {
    return Item(
      id: data.id.present ? data.id.value : this.id,
      jsonData: data.jsonData.present ? data.jsonData.value : this.jsonData,
      version: data.version.present ? data.version.value : this.version,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Item(')
          ..write('id: $id, ')
          ..write('jsonData: $jsonData, ')
          ..write('version: $version')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, jsonData, version);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Item &&
          other.id == this.id &&
          other.jsonData == this.jsonData &&
          other.version == this.version);
}

class ItemsCompanion extends UpdateCompanion<Item> {
  final Value<String> id;
  final Value<String> jsonData;
  final Value<int> version;
  final Value<int> rowid;
  const ItemsCompanion({
    this.id = const Value.absent(),
    this.jsonData = const Value.absent(),
    this.version = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ItemsCompanion.insert({
    required String id,
    required String jsonData,
    this.version = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       jsonData = Value(jsonData);
  static Insertable<Item> custom({
    Expression<String>? id,
    Expression<String>? jsonData,
    Expression<int>? version,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (jsonData != null) 'json_data': jsonData,
      if (version != null) 'version': version,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ItemsCompanion copyWith({
    Value<String>? id,
    Value<String>? jsonData,
    Value<int>? version,
    Value<int>? rowid,
  }) {
    return ItemsCompanion(
      id: id ?? this.id,
      jsonData: jsonData ?? this.jsonData,
      version: version ?? this.version,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (jsonData.present) {
      map['json_data'] = Variable<String>(jsonData.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemsCompanion(')
          ..write('id: $id, ')
          ..write('jsonData: $jsonData, ')
          ..write('version: $version, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $InventoryTable extends Inventory
    with TableInfo<$InventoryTable, InventoryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $InventoryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<String> itemId = GeneratedColumn<String>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES items (id)',
    ),
  );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _durabilityMeta = const VerificationMeta(
    'durability',
  );
  @override
  late final GeneratedColumn<int> durability = GeneratedColumn<int>(
    'durability',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _equippedSlotMeta = const VerificationMeta(
    'equippedSlot',
  );
  @override
  late final GeneratedColumn<String> equippedSlot = GeneratedColumn<String>(
    'equipped_slot',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isIndestructibleMeta = const VerificationMeta(
    'isIndestructible',
  );
  @override
  late final GeneratedColumn<bool> isIndestructible = GeneratedColumn<bool>(
    'is_indestructible',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_indestructible" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _obtainedAtMeta = const VerificationMeta(
    'obtainedAt',
  );
  @override
  late final GeneratedColumn<DateTime> obtainedAt = GeneratedColumn<DateTime>(
    'obtained_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _lastUsedAtMeta = const VerificationMeta(
    'lastUsedAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastUsedAt = GeneratedColumn<DateTime>(
    'last_used_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cooldownEndsAtMeta = const VerificationMeta(
    'cooldownEndsAt',
  );
  @override
  late final GeneratedColumn<DateTime> cooldownEndsAt =
      GeneratedColumn<DateTime>(
        'cooldown_ends_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _upgradeHistoryMeta = const VerificationMeta(
    'upgradeHistory',
  );
  @override
  late final GeneratedColumn<String> upgradeHistory = GeneratedColumn<String>(
    'upgrade_history',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('[]'),
  );
  static const VerificationMeta _uniqueDataMeta = const VerificationMeta(
    'uniqueData',
  );
  @override
  late final GeneratedColumn<String> uniqueData = GeneratedColumn<String>(
    'unique_data',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    itemId,
    quantity,
    durability,
    equippedSlot,
    isIndestructible,
    obtainedAt,
    lastUsedAt,
    cooldownEndsAt,
    upgradeHistory,
    uniqueData,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'inventory';
  @override
  VerificationContext validateIntegrity(
    Insertable<InventoryData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    }
    if (data.containsKey('durability')) {
      context.handle(
        _durabilityMeta,
        durability.isAcceptableOrUnknown(data['durability']!, _durabilityMeta),
      );
    }
    if (data.containsKey('equipped_slot')) {
      context.handle(
        _equippedSlotMeta,
        equippedSlot.isAcceptableOrUnknown(
          data['equipped_slot']!,
          _equippedSlotMeta,
        ),
      );
    }
    if (data.containsKey('is_indestructible')) {
      context.handle(
        _isIndestructibleMeta,
        isIndestructible.isAcceptableOrUnknown(
          data['is_indestructible']!,
          _isIndestructibleMeta,
        ),
      );
    }
    if (data.containsKey('obtained_at')) {
      context.handle(
        _obtainedAtMeta,
        obtainedAt.isAcceptableOrUnknown(data['obtained_at']!, _obtainedAtMeta),
      );
    }
    if (data.containsKey('last_used_at')) {
      context.handle(
        _lastUsedAtMeta,
        lastUsedAt.isAcceptableOrUnknown(
          data['last_used_at']!,
          _lastUsedAtMeta,
        ),
      );
    }
    if (data.containsKey('cooldown_ends_at')) {
      context.handle(
        _cooldownEndsAtMeta,
        cooldownEndsAt.isAcceptableOrUnknown(
          data['cooldown_ends_at']!,
          _cooldownEndsAtMeta,
        ),
      );
    }
    if (data.containsKey('upgrade_history')) {
      context.handle(
        _upgradeHistoryMeta,
        upgradeHistory.isAcceptableOrUnknown(
          data['upgrade_history']!,
          _upgradeHistoryMeta,
        ),
      );
    }
    if (data.containsKey('unique_data')) {
      context.handle(
        _uniqueDataMeta,
        uniqueData.isAcceptableOrUnknown(data['unique_data']!, _uniqueDataMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  InventoryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return InventoryData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      itemId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}item_id'],
      )!,
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantity'],
      )!,
      durability: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}durability'],
      )!,
      equippedSlot: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}equipped_slot'],
      ),
      isIndestructible: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_indestructible'],
      )!,
      obtainedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}obtained_at'],
      )!,
      lastUsedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_used_at'],
      ),
      cooldownEndsAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}cooldown_ends_at'],
      ),
      upgradeHistory: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}upgrade_history'],
      )!,
      uniqueData: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}unique_data'],
      ),
    );
  }

  @override
  $InventoryTable createAlias(String alias) {
    return $InventoryTable(attachedDatabase, alias);
  }
}

class InventoryData extends DataClass implements Insertable<InventoryData> {
  /// ID único da instância do item (não o item base)
  final String id;

  /// ID do item base, ligado ao catálogo
  final String itemId;

  /// Quantidade stack
  final int quantity;

  /// Durabilidade atual
  final int durability;

  /// Slot equipado (ou null)
  final String? equippedSlot;

  /// item não pode quebrar (Sombrios/Divinos)
  final bool isIndestructible;

  /// Data de obtenção (para sorting, conquistas, histórico)
  final DateTime obtainedAt;

  /// Último uso (para cooldown, munição)
  final DateTime? lastUsedAt;

  /// Cooldown de uso até tal horário
  final DateTime? cooldownEndsAt;

  /// Histórico de upgrades (“+1”, “reforged”, etc.)
  /// Armazenado como JSON string
  final String upgradeHistory;

  /// Dados únicos do item sombrios, divinos ou modificados
  /// JSON livre armazenado como texto
  final String? uniqueData;
  const InventoryData({
    required this.id,
    required this.itemId,
    required this.quantity,
    required this.durability,
    this.equippedSlot,
    required this.isIndestructible,
    required this.obtainedAt,
    this.lastUsedAt,
    this.cooldownEndsAt,
    required this.upgradeHistory,
    this.uniqueData,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['item_id'] = Variable<String>(itemId);
    map['quantity'] = Variable<int>(quantity);
    map['durability'] = Variable<int>(durability);
    if (!nullToAbsent || equippedSlot != null) {
      map['equipped_slot'] = Variable<String>(equippedSlot);
    }
    map['is_indestructible'] = Variable<bool>(isIndestructible);
    map['obtained_at'] = Variable<DateTime>(obtainedAt);
    if (!nullToAbsent || lastUsedAt != null) {
      map['last_used_at'] = Variable<DateTime>(lastUsedAt);
    }
    if (!nullToAbsent || cooldownEndsAt != null) {
      map['cooldown_ends_at'] = Variable<DateTime>(cooldownEndsAt);
    }
    map['upgrade_history'] = Variable<String>(upgradeHistory);
    if (!nullToAbsent || uniqueData != null) {
      map['unique_data'] = Variable<String>(uniqueData);
    }
    return map;
  }

  InventoryCompanion toCompanion(bool nullToAbsent) {
    return InventoryCompanion(
      id: Value(id),
      itemId: Value(itemId),
      quantity: Value(quantity),
      durability: Value(durability),
      equippedSlot: equippedSlot == null && nullToAbsent
          ? const Value.absent()
          : Value(equippedSlot),
      isIndestructible: Value(isIndestructible),
      obtainedAt: Value(obtainedAt),
      lastUsedAt: lastUsedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUsedAt),
      cooldownEndsAt: cooldownEndsAt == null && nullToAbsent
          ? const Value.absent()
          : Value(cooldownEndsAt),
      upgradeHistory: Value(upgradeHistory),
      uniqueData: uniqueData == null && nullToAbsent
          ? const Value.absent()
          : Value(uniqueData),
    );
  }

  factory InventoryData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return InventoryData(
      id: serializer.fromJson<String>(json['id']),
      itemId: serializer.fromJson<String>(json['itemId']),
      quantity: serializer.fromJson<int>(json['quantity']),
      durability: serializer.fromJson<int>(json['durability']),
      equippedSlot: serializer.fromJson<String?>(json['equippedSlot']),
      isIndestructible: serializer.fromJson<bool>(json['isIndestructible']),
      obtainedAt: serializer.fromJson<DateTime>(json['obtainedAt']),
      lastUsedAt: serializer.fromJson<DateTime?>(json['lastUsedAt']),
      cooldownEndsAt: serializer.fromJson<DateTime?>(json['cooldownEndsAt']),
      upgradeHistory: serializer.fromJson<String>(json['upgradeHistory']),
      uniqueData: serializer.fromJson<String?>(json['uniqueData']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'itemId': serializer.toJson<String>(itemId),
      'quantity': serializer.toJson<int>(quantity),
      'durability': serializer.toJson<int>(durability),
      'equippedSlot': serializer.toJson<String?>(equippedSlot),
      'isIndestructible': serializer.toJson<bool>(isIndestructible),
      'obtainedAt': serializer.toJson<DateTime>(obtainedAt),
      'lastUsedAt': serializer.toJson<DateTime?>(lastUsedAt),
      'cooldownEndsAt': serializer.toJson<DateTime?>(cooldownEndsAt),
      'upgradeHistory': serializer.toJson<String>(upgradeHistory),
      'uniqueData': serializer.toJson<String?>(uniqueData),
    };
  }

  InventoryData copyWith({
    String? id,
    String? itemId,
    int? quantity,
    int? durability,
    Value<String?> equippedSlot = const Value.absent(),
    bool? isIndestructible,
    DateTime? obtainedAt,
    Value<DateTime?> lastUsedAt = const Value.absent(),
    Value<DateTime?> cooldownEndsAt = const Value.absent(),
    String? upgradeHistory,
    Value<String?> uniqueData = const Value.absent(),
  }) => InventoryData(
    id: id ?? this.id,
    itemId: itemId ?? this.itemId,
    quantity: quantity ?? this.quantity,
    durability: durability ?? this.durability,
    equippedSlot: equippedSlot.present ? equippedSlot.value : this.equippedSlot,
    isIndestructible: isIndestructible ?? this.isIndestructible,
    obtainedAt: obtainedAt ?? this.obtainedAt,
    lastUsedAt: lastUsedAt.present ? lastUsedAt.value : this.lastUsedAt,
    cooldownEndsAt: cooldownEndsAt.present
        ? cooldownEndsAt.value
        : this.cooldownEndsAt,
    upgradeHistory: upgradeHistory ?? this.upgradeHistory,
    uniqueData: uniqueData.present ? uniqueData.value : this.uniqueData,
  );
  InventoryData copyWithCompanion(InventoryCompanion data) {
    return InventoryData(
      id: data.id.present ? data.id.value : this.id,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      durability: data.durability.present
          ? data.durability.value
          : this.durability,
      equippedSlot: data.equippedSlot.present
          ? data.equippedSlot.value
          : this.equippedSlot,
      isIndestructible: data.isIndestructible.present
          ? data.isIndestructible.value
          : this.isIndestructible,
      obtainedAt: data.obtainedAt.present
          ? data.obtainedAt.value
          : this.obtainedAt,
      lastUsedAt: data.lastUsedAt.present
          ? data.lastUsedAt.value
          : this.lastUsedAt,
      cooldownEndsAt: data.cooldownEndsAt.present
          ? data.cooldownEndsAt.value
          : this.cooldownEndsAt,
      upgradeHistory: data.upgradeHistory.present
          ? data.upgradeHistory.value
          : this.upgradeHistory,
      uniqueData: data.uniqueData.present
          ? data.uniqueData.value
          : this.uniqueData,
    );
  }

  @override
  String toString() {
    return (StringBuffer('InventoryData(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('quantity: $quantity, ')
          ..write('durability: $durability, ')
          ..write('equippedSlot: $equippedSlot, ')
          ..write('isIndestructible: $isIndestructible, ')
          ..write('obtainedAt: $obtainedAt, ')
          ..write('lastUsedAt: $lastUsedAt, ')
          ..write('cooldownEndsAt: $cooldownEndsAt, ')
          ..write('upgradeHistory: $upgradeHistory, ')
          ..write('uniqueData: $uniqueData')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    itemId,
    quantity,
    durability,
    equippedSlot,
    isIndestructible,
    obtainedAt,
    lastUsedAt,
    cooldownEndsAt,
    upgradeHistory,
    uniqueData,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is InventoryData &&
          other.id == this.id &&
          other.itemId == this.itemId &&
          other.quantity == this.quantity &&
          other.durability == this.durability &&
          other.equippedSlot == this.equippedSlot &&
          other.isIndestructible == this.isIndestructible &&
          other.obtainedAt == this.obtainedAt &&
          other.lastUsedAt == this.lastUsedAt &&
          other.cooldownEndsAt == this.cooldownEndsAt &&
          other.upgradeHistory == this.upgradeHistory &&
          other.uniqueData == this.uniqueData);
}

class InventoryCompanion extends UpdateCompanion<InventoryData> {
  final Value<String> id;
  final Value<String> itemId;
  final Value<int> quantity;
  final Value<int> durability;
  final Value<String?> equippedSlot;
  final Value<bool> isIndestructible;
  final Value<DateTime> obtainedAt;
  final Value<DateTime?> lastUsedAt;
  final Value<DateTime?> cooldownEndsAt;
  final Value<String> upgradeHistory;
  final Value<String?> uniqueData;
  final Value<int> rowid;
  const InventoryCompanion({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
    this.quantity = const Value.absent(),
    this.durability = const Value.absent(),
    this.equippedSlot = const Value.absent(),
    this.isIndestructible = const Value.absent(),
    this.obtainedAt = const Value.absent(),
    this.lastUsedAt = const Value.absent(),
    this.cooldownEndsAt = const Value.absent(),
    this.upgradeHistory = const Value.absent(),
    this.uniqueData = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  InventoryCompanion.insert({
    required String id,
    required String itemId,
    this.quantity = const Value.absent(),
    this.durability = const Value.absent(),
    this.equippedSlot = const Value.absent(),
    this.isIndestructible = const Value.absent(),
    this.obtainedAt = const Value.absent(),
    this.lastUsedAt = const Value.absent(),
    this.cooldownEndsAt = const Value.absent(),
    this.upgradeHistory = const Value.absent(),
    this.uniqueData = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       itemId = Value(itemId);
  static Insertable<InventoryData> custom({
    Expression<String>? id,
    Expression<String>? itemId,
    Expression<int>? quantity,
    Expression<int>? durability,
    Expression<String>? equippedSlot,
    Expression<bool>? isIndestructible,
    Expression<DateTime>? obtainedAt,
    Expression<DateTime>? lastUsedAt,
    Expression<DateTime>? cooldownEndsAt,
    Expression<String>? upgradeHistory,
    Expression<String>? uniqueData,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemId != null) 'item_id': itemId,
      if (quantity != null) 'quantity': quantity,
      if (durability != null) 'durability': durability,
      if (equippedSlot != null) 'equipped_slot': equippedSlot,
      if (isIndestructible != null) 'is_indestructible': isIndestructible,
      if (obtainedAt != null) 'obtained_at': obtainedAt,
      if (lastUsedAt != null) 'last_used_at': lastUsedAt,
      if (cooldownEndsAt != null) 'cooldown_ends_at': cooldownEndsAt,
      if (upgradeHistory != null) 'upgrade_history': upgradeHistory,
      if (uniqueData != null) 'unique_data': uniqueData,
      if (rowid != null) 'rowid': rowid,
    });
  }

  InventoryCompanion copyWith({
    Value<String>? id,
    Value<String>? itemId,
    Value<int>? quantity,
    Value<int>? durability,
    Value<String?>? equippedSlot,
    Value<bool>? isIndestructible,
    Value<DateTime>? obtainedAt,
    Value<DateTime?>? lastUsedAt,
    Value<DateTime?>? cooldownEndsAt,
    Value<String>? upgradeHistory,
    Value<String?>? uniqueData,
    Value<int>? rowid,
  }) {
    return InventoryCompanion(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      quantity: quantity ?? this.quantity,
      durability: durability ?? this.durability,
      equippedSlot: equippedSlot ?? this.equippedSlot,
      isIndestructible: isIndestructible ?? this.isIndestructible,
      obtainedAt: obtainedAt ?? this.obtainedAt,
      lastUsedAt: lastUsedAt ?? this.lastUsedAt,
      cooldownEndsAt: cooldownEndsAt ?? this.cooldownEndsAt,
      upgradeHistory: upgradeHistory ?? this.upgradeHistory,
      uniqueData: uniqueData ?? this.uniqueData,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<String>(itemId.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (durability.present) {
      map['durability'] = Variable<int>(durability.value);
    }
    if (equippedSlot.present) {
      map['equipped_slot'] = Variable<String>(equippedSlot.value);
    }
    if (isIndestructible.present) {
      map['is_indestructible'] = Variable<bool>(isIndestructible.value);
    }
    if (obtainedAt.present) {
      map['obtained_at'] = Variable<DateTime>(obtainedAt.value);
    }
    if (lastUsedAt.present) {
      map['last_used_at'] = Variable<DateTime>(lastUsedAt.value);
    }
    if (cooldownEndsAt.present) {
      map['cooldown_ends_at'] = Variable<DateTime>(cooldownEndsAt.value);
    }
    if (upgradeHistory.present) {
      map['upgrade_history'] = Variable<String>(upgradeHistory.value);
    }
    if (uniqueData.present) {
      map['unique_data'] = Variable<String>(uniqueData.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('InventoryCompanion(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('quantity: $quantity, ')
          ..write('durability: $durability, ')
          ..write('equippedSlot: $equippedSlot, ')
          ..write('isIndestructible: $isIndestructible, ')
          ..write('obtainedAt: $obtainedAt, ')
          ..write('lastUsedAt: $lastUsedAt, ')
          ..write('cooldownEndsAt: $cooldownEndsAt, ')
          ..write('upgradeHistory: $upgradeHistory, ')
          ..write('uniqueData: $uniqueData, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $QuestLogsTable extends QuestLogs
    with TableInfo<$QuestLogsTable, QuestLog> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuestLogsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _questInstanceIdMeta = const VerificationMeta(
    'questInstanceId',
  );
  @override
  late final GeneratedColumn<String> questInstanceId = GeneratedColumn<String>(
    'quest_instance_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES quest_instances (id)',
    ),
  );
  static const VerificationMeta _actionMeta = const VerificationMeta('action');
  @override
  late final GeneratedColumn<String> action = GeneratedColumn<String>(
    'action',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _xpDeltaMeta = const VerificationMeta(
    'xpDelta',
  );
  @override
  late final GeneratedColumn<int> xpDelta = GeneratedColumn<int>(
    'xp_delta',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _goldDeltaMeta = const VerificationMeta(
    'goldDelta',
  );
  @override
  late final GeneratedColumn<int> goldDelta = GeneratedColumn<int>(
    'gold_delta',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _atMeta = const VerificationMeta('at');
  @override
  late final GeneratedColumn<DateTime> at = GeneratedColumn<DateTime>(
    'at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    questInstanceId,
    action,
    xpDelta,
    goldDelta,
    at,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'quest_logs';
  @override
  VerificationContext validateIntegrity(
    Insertable<QuestLog> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('quest_instance_id')) {
      context.handle(
        _questInstanceIdMeta,
        questInstanceId.isAcceptableOrUnknown(
          data['quest_instance_id']!,
          _questInstanceIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_questInstanceIdMeta);
    }
    if (data.containsKey('action')) {
      context.handle(
        _actionMeta,
        action.isAcceptableOrUnknown(data['action']!, _actionMeta),
      );
    } else if (isInserting) {
      context.missing(_actionMeta);
    }
    if (data.containsKey('xp_delta')) {
      context.handle(
        _xpDeltaMeta,
        xpDelta.isAcceptableOrUnknown(data['xp_delta']!, _xpDeltaMeta),
      );
    }
    if (data.containsKey('gold_delta')) {
      context.handle(
        _goldDeltaMeta,
        goldDelta.isAcceptableOrUnknown(data['gold_delta']!, _goldDeltaMeta),
      );
    }
    if (data.containsKey('at')) {
      context.handle(_atMeta, at.isAcceptableOrUnknown(data['at']!, _atMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QuestLog map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QuestLog(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      questInstanceId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}quest_instance_id'],
      )!,
      action: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}action'],
      )!,
      xpDelta: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}xp_delta'],
      )!,
      goldDelta: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}gold_delta'],
      )!,
      at: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}at'],
      )!,
    );
  }

  @override
  $QuestLogsTable createAlias(String alias) {
    return $QuestLogsTable(attachedDatabase, alias);
  }
}

class QuestLog extends DataClass implements Insertable<QuestLog> {
  final String id;

  /// Referência correta: cada log aponta para a instância da quest
  final String questInstanceId;

  /// done / failed / removed / progress / autoComplete etc.
  final String action;
  final int xpDelta;
  final int goldDelta;

  /// Quando aconteceu
  final DateTime at;
  const QuestLog({
    required this.id,
    required this.questInstanceId,
    required this.action,
    required this.xpDelta,
    required this.goldDelta,
    required this.at,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['quest_instance_id'] = Variable<String>(questInstanceId);
    map['action'] = Variable<String>(action);
    map['xp_delta'] = Variable<int>(xpDelta);
    map['gold_delta'] = Variable<int>(goldDelta);
    map['at'] = Variable<DateTime>(at);
    return map;
  }

  QuestLogsCompanion toCompanion(bool nullToAbsent) {
    return QuestLogsCompanion(
      id: Value(id),
      questInstanceId: Value(questInstanceId),
      action: Value(action),
      xpDelta: Value(xpDelta),
      goldDelta: Value(goldDelta),
      at: Value(at),
    );
  }

  factory QuestLog.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QuestLog(
      id: serializer.fromJson<String>(json['id']),
      questInstanceId: serializer.fromJson<String>(json['questInstanceId']),
      action: serializer.fromJson<String>(json['action']),
      xpDelta: serializer.fromJson<int>(json['xpDelta']),
      goldDelta: serializer.fromJson<int>(json['goldDelta']),
      at: serializer.fromJson<DateTime>(json['at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'questInstanceId': serializer.toJson<String>(questInstanceId),
      'action': serializer.toJson<String>(action),
      'xpDelta': serializer.toJson<int>(xpDelta),
      'goldDelta': serializer.toJson<int>(goldDelta),
      'at': serializer.toJson<DateTime>(at),
    };
  }

  QuestLog copyWith({
    String? id,
    String? questInstanceId,
    String? action,
    int? xpDelta,
    int? goldDelta,
    DateTime? at,
  }) => QuestLog(
    id: id ?? this.id,
    questInstanceId: questInstanceId ?? this.questInstanceId,
    action: action ?? this.action,
    xpDelta: xpDelta ?? this.xpDelta,
    goldDelta: goldDelta ?? this.goldDelta,
    at: at ?? this.at,
  );
  QuestLog copyWithCompanion(QuestLogsCompanion data) {
    return QuestLog(
      id: data.id.present ? data.id.value : this.id,
      questInstanceId: data.questInstanceId.present
          ? data.questInstanceId.value
          : this.questInstanceId,
      action: data.action.present ? data.action.value : this.action,
      xpDelta: data.xpDelta.present ? data.xpDelta.value : this.xpDelta,
      goldDelta: data.goldDelta.present ? data.goldDelta.value : this.goldDelta,
      at: data.at.present ? data.at.value : this.at,
    );
  }

  @override
  String toString() {
    return (StringBuffer('QuestLog(')
          ..write('id: $id, ')
          ..write('questInstanceId: $questInstanceId, ')
          ..write('action: $action, ')
          ..write('xpDelta: $xpDelta, ')
          ..write('goldDelta: $goldDelta, ')
          ..write('at: $at')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, questInstanceId, action, xpDelta, goldDelta, at);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QuestLog &&
          other.id == this.id &&
          other.questInstanceId == this.questInstanceId &&
          other.action == this.action &&
          other.xpDelta == this.xpDelta &&
          other.goldDelta == this.goldDelta &&
          other.at == this.at);
}

class QuestLogsCompanion extends UpdateCompanion<QuestLog> {
  final Value<String> id;
  final Value<String> questInstanceId;
  final Value<String> action;
  final Value<int> xpDelta;
  final Value<int> goldDelta;
  final Value<DateTime> at;
  final Value<int> rowid;
  const QuestLogsCompanion({
    this.id = const Value.absent(),
    this.questInstanceId = const Value.absent(),
    this.action = const Value.absent(),
    this.xpDelta = const Value.absent(),
    this.goldDelta = const Value.absent(),
    this.at = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  QuestLogsCompanion.insert({
    required String id,
    required String questInstanceId,
    required String action,
    this.xpDelta = const Value.absent(),
    this.goldDelta = const Value.absent(),
    this.at = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       questInstanceId = Value(questInstanceId),
       action = Value(action);
  static Insertable<QuestLog> custom({
    Expression<String>? id,
    Expression<String>? questInstanceId,
    Expression<String>? action,
    Expression<int>? xpDelta,
    Expression<int>? goldDelta,
    Expression<DateTime>? at,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (questInstanceId != null) 'quest_instance_id': questInstanceId,
      if (action != null) 'action': action,
      if (xpDelta != null) 'xp_delta': xpDelta,
      if (goldDelta != null) 'gold_delta': goldDelta,
      if (at != null) 'at': at,
      if (rowid != null) 'rowid': rowid,
    });
  }

  QuestLogsCompanion copyWith({
    Value<String>? id,
    Value<String>? questInstanceId,
    Value<String>? action,
    Value<int>? xpDelta,
    Value<int>? goldDelta,
    Value<DateTime>? at,
    Value<int>? rowid,
  }) {
    return QuestLogsCompanion(
      id: id ?? this.id,
      questInstanceId: questInstanceId ?? this.questInstanceId,
      action: action ?? this.action,
      xpDelta: xpDelta ?? this.xpDelta,
      goldDelta: goldDelta ?? this.goldDelta,
      at: at ?? this.at,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (questInstanceId.present) {
      map['quest_instance_id'] = Variable<String>(questInstanceId.value);
    }
    if (action.present) {
      map['action'] = Variable<String>(action.value);
    }
    if (xpDelta.present) {
      map['xp_delta'] = Variable<int>(xpDelta.value);
    }
    if (goldDelta.present) {
      map['gold_delta'] = Variable<int>(goldDelta.value);
    }
    if (at.present) {
      map['at'] = Variable<DateTime>(at.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestLogsCompanion(')
          ..write('id: $id, ')
          ..write('questInstanceId: $questInstanceId, ')
          ..write('action: $action, ')
          ..write('xpDelta: $xpDelta, ')
          ..write('goldDelta: $goldDelta, ')
          ..write('at: $at, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AchievementsTable extends Achievements
    with TableInfo<$AchievementsTable, Achievement> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AchievementsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _progressMeta = const VerificationMeta(
    'progress',
  );
  @override
  late final GeneratedColumn<int> progress = GeneratedColumn<int>(
    'progress',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _goalMeta = const VerificationMeta('goal');
  @override
  late final GeneratedColumn<int> goal = GeneratedColumn<int>(
    'goal',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _gemsRewardMeta = const VerificationMeta(
    'gemsReward',
  );
  @override
  late final GeneratedColumn<int> gemsReward = GeneratedColumn<int>(
    'gems_reward',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _unlockedAtMeta = const VerificationMeta(
    'unlockedAt',
  );
  @override
  late final GeneratedColumn<DateTime> unlockedAt = GeneratedColumn<DateTime>(
    'unlocked_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    category,
    progress,
    goal,
    gemsReward,
    unlockedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'achievements';
  @override
  VerificationContext validateIntegrity(
    Insertable<Achievement> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('progress')) {
      context.handle(
        _progressMeta,
        progress.isAcceptableOrUnknown(data['progress']!, _progressMeta),
      );
    }
    if (data.containsKey('goal')) {
      context.handle(
        _goalMeta,
        goal.isAcceptableOrUnknown(data['goal']!, _goalMeta),
      );
    }
    if (data.containsKey('gems_reward')) {
      context.handle(
        _gemsRewardMeta,
        gemsReward.isAcceptableOrUnknown(data['gems_reward']!, _gemsRewardMeta),
      );
    }
    if (data.containsKey('unlocked_at')) {
      context.handle(
        _unlockedAtMeta,
        unlockedAt.isAcceptableOrUnknown(data['unlocked_at']!, _unlockedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Achievement map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Achievement(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      )!,
      progress: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}progress'],
      )!,
      goal: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}goal'],
      )!,
      gemsReward: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}gems_reward'],
      )!,
      unlockedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}unlocked_at'],
      ),
    );
  }

  @override
  $AchievementsTable createAlias(String alias) {
    return $AchievementsTable(attachedDatabase, alias);
  }
}

class Achievement extends DataClass implements Insertable<Achievement> {
  final String id;
  final String category;
  final int progress;
  final int goal;
  final int gemsReward;
  final DateTime? unlockedAt;
  const Achievement({
    required this.id,
    required this.category,
    required this.progress,
    required this.goal,
    required this.gemsReward,
    this.unlockedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['category'] = Variable<String>(category);
    map['progress'] = Variable<int>(progress);
    map['goal'] = Variable<int>(goal);
    map['gems_reward'] = Variable<int>(gemsReward);
    if (!nullToAbsent || unlockedAt != null) {
      map['unlocked_at'] = Variable<DateTime>(unlockedAt);
    }
    return map;
  }

  AchievementsCompanion toCompanion(bool nullToAbsent) {
    return AchievementsCompanion(
      id: Value(id),
      category: Value(category),
      progress: Value(progress),
      goal: Value(goal),
      gemsReward: Value(gemsReward),
      unlockedAt: unlockedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(unlockedAt),
    );
  }

  factory Achievement.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Achievement(
      id: serializer.fromJson<String>(json['id']),
      category: serializer.fromJson<String>(json['category']),
      progress: serializer.fromJson<int>(json['progress']),
      goal: serializer.fromJson<int>(json['goal']),
      gemsReward: serializer.fromJson<int>(json['gemsReward']),
      unlockedAt: serializer.fromJson<DateTime?>(json['unlockedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'category': serializer.toJson<String>(category),
      'progress': serializer.toJson<int>(progress),
      'goal': serializer.toJson<int>(goal),
      'gemsReward': serializer.toJson<int>(gemsReward),
      'unlockedAt': serializer.toJson<DateTime?>(unlockedAt),
    };
  }

  Achievement copyWith({
    String? id,
    String? category,
    int? progress,
    int? goal,
    int? gemsReward,
    Value<DateTime?> unlockedAt = const Value.absent(),
  }) => Achievement(
    id: id ?? this.id,
    category: category ?? this.category,
    progress: progress ?? this.progress,
    goal: goal ?? this.goal,
    gemsReward: gemsReward ?? this.gemsReward,
    unlockedAt: unlockedAt.present ? unlockedAt.value : this.unlockedAt,
  );
  Achievement copyWithCompanion(AchievementsCompanion data) {
    return Achievement(
      id: data.id.present ? data.id.value : this.id,
      category: data.category.present ? data.category.value : this.category,
      progress: data.progress.present ? data.progress.value : this.progress,
      goal: data.goal.present ? data.goal.value : this.goal,
      gemsReward: data.gemsReward.present
          ? data.gemsReward.value
          : this.gemsReward,
      unlockedAt: data.unlockedAt.present
          ? data.unlockedAt.value
          : this.unlockedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Achievement(')
          ..write('id: $id, ')
          ..write('category: $category, ')
          ..write('progress: $progress, ')
          ..write('goal: $goal, ')
          ..write('gemsReward: $gemsReward, ')
          ..write('unlockedAt: $unlockedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, category, progress, goal, gemsReward, unlockedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Achievement &&
          other.id == this.id &&
          other.category == this.category &&
          other.progress == this.progress &&
          other.goal == this.goal &&
          other.gemsReward == this.gemsReward &&
          other.unlockedAt == this.unlockedAt);
}

class AchievementsCompanion extends UpdateCompanion<Achievement> {
  final Value<String> id;
  final Value<String> category;
  final Value<int> progress;
  final Value<int> goal;
  final Value<int> gemsReward;
  final Value<DateTime?> unlockedAt;
  final Value<int> rowid;
  const AchievementsCompanion({
    this.id = const Value.absent(),
    this.category = const Value.absent(),
    this.progress = const Value.absent(),
    this.goal = const Value.absent(),
    this.gemsReward = const Value.absent(),
    this.unlockedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AchievementsCompanion.insert({
    required String id,
    required String category,
    this.progress = const Value.absent(),
    this.goal = const Value.absent(),
    this.gemsReward = const Value.absent(),
    this.unlockedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       category = Value(category);
  static Insertable<Achievement> custom({
    Expression<String>? id,
    Expression<String>? category,
    Expression<int>? progress,
    Expression<int>? goal,
    Expression<int>? gemsReward,
    Expression<DateTime>? unlockedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (category != null) 'category': category,
      if (progress != null) 'progress': progress,
      if (goal != null) 'goal': goal,
      if (gemsReward != null) 'gems_reward': gemsReward,
      if (unlockedAt != null) 'unlocked_at': unlockedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AchievementsCompanion copyWith({
    Value<String>? id,
    Value<String>? category,
    Value<int>? progress,
    Value<int>? goal,
    Value<int>? gemsReward,
    Value<DateTime?>? unlockedAt,
    Value<int>? rowid,
  }) {
    return AchievementsCompanion(
      id: id ?? this.id,
      category: category ?? this.category,
      progress: progress ?? this.progress,
      goal: goal ?? this.goal,
      gemsReward: gemsReward ?? this.gemsReward,
      unlockedAt: unlockedAt ?? this.unlockedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (progress.present) {
      map['progress'] = Variable<int>(progress.value);
    }
    if (goal.present) {
      map['goal'] = Variable<int>(goal.value);
    }
    if (gemsReward.present) {
      map['gems_reward'] = Variable<int>(gemsReward.value);
    }
    if (unlockedAt.present) {
      map['unlocked_at'] = Variable<DateTime>(unlockedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AchievementsCompanion(')
          ..write('id: $id, ')
          ..write('category: $category, ')
          ..write('progress: $progress, ')
          ..write('goal: $goal, ')
          ..write('gemsReward: $gemsReward, ')
          ..write('unlockedAt: $unlockedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $JournalEntriesTable extends JournalEntries
    with TableInfo<$JournalEntriesTable, JournalEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $JournalEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sectionIdMeta = const VerificationMeta(
    'sectionId',
  );
  @override
  late final GeneratedColumn<String> sectionId = GeneratedColumn<String>(
    'section_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bodyMeta = const VerificationMeta('body');
  @override
  late final GeneratedColumn<String> body = GeneratedColumn<String>(
    'body',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _metaJsonMeta = const VerificationMeta(
    'metaJson',
  );
  @override
  late final GeneratedColumn<String> metaJson = GeneratedColumn<String>(
    'meta_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('{}'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    sectionId,
    title,
    body,
    createdAt,
    updatedAt,
    metaJson,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'journal_entries';
  @override
  VerificationContext validateIntegrity(
    Insertable<JournalEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('section_id')) {
      context.handle(
        _sectionIdMeta,
        sectionId.isAcceptableOrUnknown(data['section_id']!, _sectionIdMeta),
      );
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('body')) {
      context.handle(
        _bodyMeta,
        body.isAcceptableOrUnknown(data['body']!, _bodyMeta),
      );
    } else if (isInserting) {
      context.missing(_bodyMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('meta_json')) {
      context.handle(
        _metaJsonMeta,
        metaJson.isAcceptableOrUnknown(data['meta_json']!, _metaJsonMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  JournalEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return JournalEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      sectionId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}section_id'],
      ),
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      body: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}body'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      metaJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}meta_json'],
      )!,
    );
  }

  @override
  $JournalEntriesTable createAlias(String alias) {
    return $JournalEntriesTable(attachedDatabase, alias);
  }
}

class JournalEntry extends DataClass implements Insertable<JournalEntry> {
  final String id;
  final String userId;
  final String? sectionId;
  final String title;
  final String body;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String metaJson;
  const JournalEntry({
    required this.id,
    required this.userId,
    this.sectionId,
    required this.title,
    required this.body,
    required this.createdAt,
    required this.updatedAt,
    required this.metaJson,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    if (!nullToAbsent || sectionId != null) {
      map['section_id'] = Variable<String>(sectionId);
    }
    map['title'] = Variable<String>(title);
    map['body'] = Variable<String>(body);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['meta_json'] = Variable<String>(metaJson);
    return map;
  }

  JournalEntriesCompanion toCompanion(bool nullToAbsent) {
    return JournalEntriesCompanion(
      id: Value(id),
      userId: Value(userId),
      sectionId: sectionId == null && nullToAbsent
          ? const Value.absent()
          : Value(sectionId),
      title: Value(title),
      body: Value(body),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      metaJson: Value(metaJson),
    );
  }

  factory JournalEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return JournalEntry(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      sectionId: serializer.fromJson<String?>(json['sectionId']),
      title: serializer.fromJson<String>(json['title']),
      body: serializer.fromJson<String>(json['body']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      metaJson: serializer.fromJson<String>(json['metaJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'sectionId': serializer.toJson<String?>(sectionId),
      'title': serializer.toJson<String>(title),
      'body': serializer.toJson<String>(body),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'metaJson': serializer.toJson<String>(metaJson),
    };
  }

  JournalEntry copyWith({
    String? id,
    String? userId,
    Value<String?> sectionId = const Value.absent(),
    String? title,
    String? body,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? metaJson,
  }) => JournalEntry(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    sectionId: sectionId.present ? sectionId.value : this.sectionId,
    title: title ?? this.title,
    body: body ?? this.body,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    metaJson: metaJson ?? this.metaJson,
  );
  JournalEntry copyWithCompanion(JournalEntriesCompanion data) {
    return JournalEntry(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      sectionId: data.sectionId.present ? data.sectionId.value : this.sectionId,
      title: data.title.present ? data.title.value : this.title,
      body: data.body.present ? data.body.value : this.body,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      metaJson: data.metaJson.present ? data.metaJson.value : this.metaJson,
    );
  }

  @override
  String toString() {
    return (StringBuffer('JournalEntry(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('sectionId: $sectionId, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('metaJson: $metaJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    userId,
    sectionId,
    title,
    body,
    createdAt,
    updatedAt,
    metaJson,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is JournalEntry &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.sectionId == this.sectionId &&
          other.title == this.title &&
          other.body == this.body &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.metaJson == this.metaJson);
}

class JournalEntriesCompanion extends UpdateCompanion<JournalEntry> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String?> sectionId;
  final Value<String> title;
  final Value<String> body;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> metaJson;
  final Value<int> rowid;
  const JournalEntriesCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.sectionId = const Value.absent(),
    this.title = const Value.absent(),
    this.body = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.metaJson = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  JournalEntriesCompanion.insert({
    required String id,
    required String userId,
    this.sectionId = const Value.absent(),
    required String title,
    required String body,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.metaJson = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       userId = Value(userId),
       title = Value(title),
       body = Value(body),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<JournalEntry> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? sectionId,
    Expression<String>? title,
    Expression<String>? body,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? metaJson,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (sectionId != null) 'section_id': sectionId,
      if (title != null) 'title': title,
      if (body != null) 'body': body,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (metaJson != null) 'meta_json': metaJson,
      if (rowid != null) 'rowid': rowid,
    });
  }

  JournalEntriesCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<String?>? sectionId,
    Value<String>? title,
    Value<String>? body,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<String>? metaJson,
    Value<int>? rowid,
  }) {
    return JournalEntriesCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      sectionId: sectionId ?? this.sectionId,
      title: title ?? this.title,
      body: body ?? this.body,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      metaJson: metaJson ?? this.metaJson,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (sectionId.present) {
      map['section_id'] = Variable<String>(sectionId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (body.present) {
      map['body'] = Variable<String>(body.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (metaJson.present) {
      map['meta_json'] = Variable<String>(metaJson.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('JournalEntriesCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('sectionId: $sectionId, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('metaJson: $metaJson, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $JournalSectionsTable extends JournalSections
    with TableInfo<$JournalSectionsTable, JournalSection> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $JournalSectionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    name,
    description,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'journal_sections';
  @override
  VerificationContext validateIntegrity(
    Insertable<JournalSection> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  JournalSection map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return JournalSection(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $JournalSectionsTable createAlias(String alias) {
    return $JournalSectionsTable(attachedDatabase, alias);
  }
}

class JournalSection extends DataClass implements Insertable<JournalSection> {
  final String id;
  final String userId;
  final String name;
  final String? description;
  final DateTime createdAt;
  const JournalSection({
    required this.id,
    required this.userId,
    required this.name,
    this.description,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  JournalSectionsCompanion toCompanion(bool nullToAbsent) {
    return JournalSectionsCompanion(
      id: Value(id),
      userId: Value(userId),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      createdAt: Value(createdAt),
    );
  }

  factory JournalSection.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return JournalSection(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  JournalSection copyWith({
    String? id,
    String? userId,
    String? name,
    Value<String?> description = const Value.absent(),
    DateTime? createdAt,
  }) => JournalSection(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    name: name ?? this.name,
    description: description.present ? description.value : this.description,
    createdAt: createdAt ?? this.createdAt,
  );
  JournalSection copyWithCompanion(JournalSectionsCompanion data) {
    return JournalSection(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('JournalSection(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, userId, name, description, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is JournalSection &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.name == this.name &&
          other.description == this.description &&
          other.createdAt == this.createdAt);
}

class JournalSectionsCompanion extends UpdateCompanion<JournalSection> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> name;
  final Value<String?> description;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const JournalSectionsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  JournalSectionsCompanion.insert({
    required String id,
    required String userId,
    required String name,
    this.description = const Value.absent(),
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       userId = Value(userId),
       name = Value(name),
       createdAt = Value(createdAt);
  static Insertable<JournalSection> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? name,
    Expression<String>? description,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  JournalSectionsCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<String>? name,
    Value<String?>? description,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return JournalSectionsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('JournalSectionsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $HabitDefinitionsTable extends HabitDefinitions
    with TableInfo<$HabitDefinitionsTable, HabitDefinition> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HabitDefinitionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _habitArchetypeMeta = const VerificationMeta(
    'habitArchetype',
  );
  @override
  late final GeneratedColumn<String> habitArchetype = GeneratedColumn<String>(
    'habit_archetype',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _trackingTypeMeta = const VerificationMeta(
    'trackingType',
  );
  @override
  late final GeneratedColumn<String> trackingType = GeneratedColumn<String>(
    'tracking_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _metricUnitMeta = const VerificationMeta(
    'metricUnit',
  );
  @override
  late final GeneratedColumn<String> metricUnit = GeneratedColumn<String>(
    'metric_unit',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _defaultTargetMeta = const VerificationMeta(
    'defaultTarget',
  );
  @override
  late final GeneratedColumn<int> defaultTarget = GeneratedColumn<int>(
    'default_target',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _baseXpRewardMeta = const VerificationMeta(
    'baseXpReward',
  );
  @override
  late final GeneratedColumn<int> baseXpReward = GeneratedColumn<int>(
    'base_xp_reward',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _vitalXpRewardMeta = const VerificationMeta(
    'vitalXpReward',
  );
  @override
  late final GeneratedColumn<int> vitalXpReward = GeneratedColumn<int>(
    'vital_xp_reward',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _shadowPenaltyMeta = const VerificationMeta(
    'shadowPenalty',
  );
  @override
  late final GeneratedColumn<int> shadowPenalty = GeneratedColumn<int>(
    'shadow_penalty',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _difficultyScalingMeta = const VerificationMeta(
    'difficultyScaling',
  );
  @override
  late final GeneratedColumn<bool> difficultyScaling = GeneratedColumn<bool>(
    'difficulty_scaling',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("difficulty_scaling" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _metaJsonMeta = const VerificationMeta(
    'metaJson',
  );
  @override
  late final GeneratedColumn<String> metaJson = GeneratedColumn<String>(
    'meta_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('{}'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    description,
    category,
    habitArchetype,
    trackingType,
    metricUnit,
    defaultTarget,
    baseXpReward,
    vitalXpReward,
    shadowPenalty,
    difficultyScaling,
    metaJson,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'habit_definitions';
  @override
  VerificationContext validateIntegrity(
    Insertable<HabitDefinition> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('habit_archetype')) {
      context.handle(
        _habitArchetypeMeta,
        habitArchetype.isAcceptableOrUnknown(
          data['habit_archetype']!,
          _habitArchetypeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_habitArchetypeMeta);
    }
    if (data.containsKey('tracking_type')) {
      context.handle(
        _trackingTypeMeta,
        trackingType.isAcceptableOrUnknown(
          data['tracking_type']!,
          _trackingTypeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_trackingTypeMeta);
    }
    if (data.containsKey('metric_unit')) {
      context.handle(
        _metricUnitMeta,
        metricUnit.isAcceptableOrUnknown(data['metric_unit']!, _metricUnitMeta),
      );
    } else if (isInserting) {
      context.missing(_metricUnitMeta);
    }
    if (data.containsKey('default_target')) {
      context.handle(
        _defaultTargetMeta,
        defaultTarget.isAcceptableOrUnknown(
          data['default_target']!,
          _defaultTargetMeta,
        ),
      );
    }
    if (data.containsKey('base_xp_reward')) {
      context.handle(
        _baseXpRewardMeta,
        baseXpReward.isAcceptableOrUnknown(
          data['base_xp_reward']!,
          _baseXpRewardMeta,
        ),
      );
    }
    if (data.containsKey('vital_xp_reward')) {
      context.handle(
        _vitalXpRewardMeta,
        vitalXpReward.isAcceptableOrUnknown(
          data['vital_xp_reward']!,
          _vitalXpRewardMeta,
        ),
      );
    }
    if (data.containsKey('shadow_penalty')) {
      context.handle(
        _shadowPenaltyMeta,
        shadowPenalty.isAcceptableOrUnknown(
          data['shadow_penalty']!,
          _shadowPenaltyMeta,
        ),
      );
    }
    if (data.containsKey('difficulty_scaling')) {
      context.handle(
        _difficultyScalingMeta,
        difficultyScaling.isAcceptableOrUnknown(
          data['difficulty_scaling']!,
          _difficultyScalingMeta,
        ),
      );
    }
    if (data.containsKey('meta_json')) {
      context.handle(
        _metaJsonMeta,
        metaJson.isAcceptableOrUnknown(data['meta_json']!, _metaJsonMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HabitDefinition map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HabitDefinition(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      )!,
      habitArchetype: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}habit_archetype'],
      )!,
      trackingType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tracking_type'],
      )!,
      metricUnit: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}metric_unit'],
      )!,
      defaultTarget: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}default_target'],
      )!,
      baseXpReward: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}base_xp_reward'],
      )!,
      vitalXpReward: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}vital_xp_reward'],
      )!,
      shadowPenalty: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}shadow_penalty'],
      )!,
      difficultyScaling: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}difficulty_scaling'],
      )!,
      metaJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}meta_json'],
      )!,
    );
  }

  @override
  $HabitDefinitionsTable createAlias(String alias) {
    return $HabitDefinitionsTable(attachedDatabase, alias);
  }
}

class HabitDefinition extends DataClass implements Insertable<HabitDefinition> {
  final String id;
  final String title;
  final String description;

  /// Categoria: mental / physical / spiritual
  final String category;

  /// Archetype que alimenta ShadowSystem
  /// ex: "disciplina", "procrastinacao", "medo", "ira"
  final String habitArchetype;

  /// TrackingType: manual, counter, timer, writing, reading
  final String trackingType;

  /// QuestMetricUnit: reps, minutes, lines, pages...
  final String metricUnit;

  /// Valor alvo padrão
  final int defaultTarget;

  /// Recompensas
  final int baseXpReward;
  final int vitalXpReward;

  /// Penalidade de sombra
  final int shadowPenalty;

  /// Se o hábito escala (progressão diária)
  final bool difficultyScaling;

  /// Qualquer meta extra: {"tier":2,"focus":"respiracao"}
  final String metaJson;
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
    required this.difficultyScaling,
    required this.metaJson,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['category'] = Variable<String>(category);
    map['habit_archetype'] = Variable<String>(habitArchetype);
    map['tracking_type'] = Variable<String>(trackingType);
    map['metric_unit'] = Variable<String>(metricUnit);
    map['default_target'] = Variable<int>(defaultTarget);
    map['base_xp_reward'] = Variable<int>(baseXpReward);
    map['vital_xp_reward'] = Variable<int>(vitalXpReward);
    map['shadow_penalty'] = Variable<int>(shadowPenalty);
    map['difficulty_scaling'] = Variable<bool>(difficultyScaling);
    map['meta_json'] = Variable<String>(metaJson);
    return map;
  }

  HabitDefinitionsCompanion toCompanion(bool nullToAbsent) {
    return HabitDefinitionsCompanion(
      id: Value(id),
      title: Value(title),
      description: Value(description),
      category: Value(category),
      habitArchetype: Value(habitArchetype),
      trackingType: Value(trackingType),
      metricUnit: Value(metricUnit),
      defaultTarget: Value(defaultTarget),
      baseXpReward: Value(baseXpReward),
      vitalXpReward: Value(vitalXpReward),
      shadowPenalty: Value(shadowPenalty),
      difficultyScaling: Value(difficultyScaling),
      metaJson: Value(metaJson),
    );
  }

  factory HabitDefinition.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HabitDefinition(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      category: serializer.fromJson<String>(json['category']),
      habitArchetype: serializer.fromJson<String>(json['habitArchetype']),
      trackingType: serializer.fromJson<String>(json['trackingType']),
      metricUnit: serializer.fromJson<String>(json['metricUnit']),
      defaultTarget: serializer.fromJson<int>(json['defaultTarget']),
      baseXpReward: serializer.fromJson<int>(json['baseXpReward']),
      vitalXpReward: serializer.fromJson<int>(json['vitalXpReward']),
      shadowPenalty: serializer.fromJson<int>(json['shadowPenalty']),
      difficultyScaling: serializer.fromJson<bool>(json['difficultyScaling']),
      metaJson: serializer.fromJson<String>(json['metaJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'category': serializer.toJson<String>(category),
      'habitArchetype': serializer.toJson<String>(habitArchetype),
      'trackingType': serializer.toJson<String>(trackingType),
      'metricUnit': serializer.toJson<String>(metricUnit),
      'defaultTarget': serializer.toJson<int>(defaultTarget),
      'baseXpReward': serializer.toJson<int>(baseXpReward),
      'vitalXpReward': serializer.toJson<int>(vitalXpReward),
      'shadowPenalty': serializer.toJson<int>(shadowPenalty),
      'difficultyScaling': serializer.toJson<bool>(difficultyScaling),
      'metaJson': serializer.toJson<String>(metaJson),
    };
  }

  HabitDefinition copyWith({
    String? id,
    String? title,
    String? description,
    String? category,
    String? habitArchetype,
    String? trackingType,
    String? metricUnit,
    int? defaultTarget,
    int? baseXpReward,
    int? vitalXpReward,
    int? shadowPenalty,
    bool? difficultyScaling,
    String? metaJson,
  }) => HabitDefinition(
    id: id ?? this.id,
    title: title ?? this.title,
    description: description ?? this.description,
    category: category ?? this.category,
    habitArchetype: habitArchetype ?? this.habitArchetype,
    trackingType: trackingType ?? this.trackingType,
    metricUnit: metricUnit ?? this.metricUnit,
    defaultTarget: defaultTarget ?? this.defaultTarget,
    baseXpReward: baseXpReward ?? this.baseXpReward,
    vitalXpReward: vitalXpReward ?? this.vitalXpReward,
    shadowPenalty: shadowPenalty ?? this.shadowPenalty,
    difficultyScaling: difficultyScaling ?? this.difficultyScaling,
    metaJson: metaJson ?? this.metaJson,
  );
  HabitDefinition copyWithCompanion(HabitDefinitionsCompanion data) {
    return HabitDefinition(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description: data.description.present
          ? data.description.value
          : this.description,
      category: data.category.present ? data.category.value : this.category,
      habitArchetype: data.habitArchetype.present
          ? data.habitArchetype.value
          : this.habitArchetype,
      trackingType: data.trackingType.present
          ? data.trackingType.value
          : this.trackingType,
      metricUnit: data.metricUnit.present
          ? data.metricUnit.value
          : this.metricUnit,
      defaultTarget: data.defaultTarget.present
          ? data.defaultTarget.value
          : this.defaultTarget,
      baseXpReward: data.baseXpReward.present
          ? data.baseXpReward.value
          : this.baseXpReward,
      vitalXpReward: data.vitalXpReward.present
          ? data.vitalXpReward.value
          : this.vitalXpReward,
      shadowPenalty: data.shadowPenalty.present
          ? data.shadowPenalty.value
          : this.shadowPenalty,
      difficultyScaling: data.difficultyScaling.present
          ? data.difficultyScaling.value
          : this.difficultyScaling,
      metaJson: data.metaJson.present ? data.metaJson.value : this.metaJson,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HabitDefinition(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('category: $category, ')
          ..write('habitArchetype: $habitArchetype, ')
          ..write('trackingType: $trackingType, ')
          ..write('metricUnit: $metricUnit, ')
          ..write('defaultTarget: $defaultTarget, ')
          ..write('baseXpReward: $baseXpReward, ')
          ..write('vitalXpReward: $vitalXpReward, ')
          ..write('shadowPenalty: $shadowPenalty, ')
          ..write('difficultyScaling: $difficultyScaling, ')
          ..write('metaJson: $metaJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    description,
    category,
    habitArchetype,
    trackingType,
    metricUnit,
    defaultTarget,
    baseXpReward,
    vitalXpReward,
    shadowPenalty,
    difficultyScaling,
    metaJson,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HabitDefinition &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.category == this.category &&
          other.habitArchetype == this.habitArchetype &&
          other.trackingType == this.trackingType &&
          other.metricUnit == this.metricUnit &&
          other.defaultTarget == this.defaultTarget &&
          other.baseXpReward == this.baseXpReward &&
          other.vitalXpReward == this.vitalXpReward &&
          other.shadowPenalty == this.shadowPenalty &&
          other.difficultyScaling == this.difficultyScaling &&
          other.metaJson == this.metaJson);
}

class HabitDefinitionsCompanion extends UpdateCompanion<HabitDefinition> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> description;
  final Value<String> category;
  final Value<String> habitArchetype;
  final Value<String> trackingType;
  final Value<String> metricUnit;
  final Value<int> defaultTarget;
  final Value<int> baseXpReward;
  final Value<int> vitalXpReward;
  final Value<int> shadowPenalty;
  final Value<bool> difficultyScaling;
  final Value<String> metaJson;
  final Value<int> rowid;
  const HabitDefinitionsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.category = const Value.absent(),
    this.habitArchetype = const Value.absent(),
    this.trackingType = const Value.absent(),
    this.metricUnit = const Value.absent(),
    this.defaultTarget = const Value.absent(),
    this.baseXpReward = const Value.absent(),
    this.vitalXpReward = const Value.absent(),
    this.shadowPenalty = const Value.absent(),
    this.difficultyScaling = const Value.absent(),
    this.metaJson = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HabitDefinitionsCompanion.insert({
    required String id,
    required String title,
    required String description,
    required String category,
    required String habitArchetype,
    required String trackingType,
    required String metricUnit,
    this.defaultTarget = const Value.absent(),
    this.baseXpReward = const Value.absent(),
    this.vitalXpReward = const Value.absent(),
    this.shadowPenalty = const Value.absent(),
    this.difficultyScaling = const Value.absent(),
    this.metaJson = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       description = Value(description),
       category = Value(category),
       habitArchetype = Value(habitArchetype),
       trackingType = Value(trackingType),
       metricUnit = Value(metricUnit);
  static Insertable<HabitDefinition> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? category,
    Expression<String>? habitArchetype,
    Expression<String>? trackingType,
    Expression<String>? metricUnit,
    Expression<int>? defaultTarget,
    Expression<int>? baseXpReward,
    Expression<int>? vitalXpReward,
    Expression<int>? shadowPenalty,
    Expression<bool>? difficultyScaling,
    Expression<String>? metaJson,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (category != null) 'category': category,
      if (habitArchetype != null) 'habit_archetype': habitArchetype,
      if (trackingType != null) 'tracking_type': trackingType,
      if (metricUnit != null) 'metric_unit': metricUnit,
      if (defaultTarget != null) 'default_target': defaultTarget,
      if (baseXpReward != null) 'base_xp_reward': baseXpReward,
      if (vitalXpReward != null) 'vital_xp_reward': vitalXpReward,
      if (shadowPenalty != null) 'shadow_penalty': shadowPenalty,
      if (difficultyScaling != null) 'difficulty_scaling': difficultyScaling,
      if (metaJson != null) 'meta_json': metaJson,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HabitDefinitionsCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<String>? description,
    Value<String>? category,
    Value<String>? habitArchetype,
    Value<String>? trackingType,
    Value<String>? metricUnit,
    Value<int>? defaultTarget,
    Value<int>? baseXpReward,
    Value<int>? vitalXpReward,
    Value<int>? shadowPenalty,
    Value<bool>? difficultyScaling,
    Value<String>? metaJson,
    Value<int>? rowid,
  }) {
    return HabitDefinitionsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      category: category ?? this.category,
      habitArchetype: habitArchetype ?? this.habitArchetype,
      trackingType: trackingType ?? this.trackingType,
      metricUnit: metricUnit ?? this.metricUnit,
      defaultTarget: defaultTarget ?? this.defaultTarget,
      baseXpReward: baseXpReward ?? this.baseXpReward,
      vitalXpReward: vitalXpReward ?? this.vitalXpReward,
      shadowPenalty: shadowPenalty ?? this.shadowPenalty,
      difficultyScaling: difficultyScaling ?? this.difficultyScaling,
      metaJson: metaJson ?? this.metaJson,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (habitArchetype.present) {
      map['habit_archetype'] = Variable<String>(habitArchetype.value);
    }
    if (trackingType.present) {
      map['tracking_type'] = Variable<String>(trackingType.value);
    }
    if (metricUnit.present) {
      map['metric_unit'] = Variable<String>(metricUnit.value);
    }
    if (defaultTarget.present) {
      map['default_target'] = Variable<int>(defaultTarget.value);
    }
    if (baseXpReward.present) {
      map['base_xp_reward'] = Variable<int>(baseXpReward.value);
    }
    if (vitalXpReward.present) {
      map['vital_xp_reward'] = Variable<int>(vitalXpReward.value);
    }
    if (shadowPenalty.present) {
      map['shadow_penalty'] = Variable<int>(shadowPenalty.value);
    }
    if (difficultyScaling.present) {
      map['difficulty_scaling'] = Variable<bool>(difficultyScaling.value);
    }
    if (metaJson.present) {
      map['meta_json'] = Variable<String>(metaJson.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HabitDefinitionsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('category: $category, ')
          ..write('habitArchetype: $habitArchetype, ')
          ..write('trackingType: $trackingType, ')
          ..write('metricUnit: $metricUnit, ')
          ..write('defaultTarget: $defaultTarget, ')
          ..write('baseXpReward: $baseXpReward, ')
          ..write('vitalXpReward: $vitalXpReward, ')
          ..write('shadowPenalty: $shadowPenalty, ')
          ..write('difficultyScaling: $difficultyScaling, ')
          ..write('metaJson: $metaJson, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $HabitInstancesTable extends HabitInstances
    with TableInfo<$HabitInstancesTable, HabitInstance> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HabitInstancesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _habitIdMeta = const VerificationMeta(
    'habitId',
  );
  @override
  late final GeneratedColumn<String> habitId = GeneratedColumn<String>(
    'habit_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dayKeyMeta = const VerificationMeta('dayKey');
  @override
  late final GeneratedColumn<int> dayKey = GeneratedColumn<int>(
    'day_key',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currentMeta = const VerificationMeta(
    'current',
  );
  @override
  late final GeneratedColumn<int> current = GeneratedColumn<int>(
    'current',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _targetMeta = const VerificationMeta('target');
  @override
  late final GeneratedColumn<int> target = GeneratedColumn<int>(
    'target',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _completedAtMeta = const VerificationMeta(
    'completedAt',
  );
  @override
  late final GeneratedColumn<DateTime> completedAt = GeneratedColumn<DateTime>(
    'completed_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _failedAtMeta = const VerificationMeta(
    'failedAt',
  );
  @override
  late final GeneratedColumn<DateTime> failedAt = GeneratedColumn<DateTime>(
    'failed_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _lastUpdatedAtMeta = const VerificationMeta(
    'lastUpdatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastUpdatedAt =
      GeneratedColumn<DateTime>(
        'last_updated_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _trackingMetaJsonMeta = const VerificationMeta(
    'trackingMetaJson',
  );
  @override
  late final GeneratedColumn<String> trackingMetaJson = GeneratedColumn<String>(
    'tracking_meta_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('{}'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    habitId,
    dayKey,
    current,
    target,
    status,
    createdAt,
    completedAt,
    failedAt,
    lastUpdatedAt,
    trackingMetaJson,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'habit_instances';
  @override
  VerificationContext validateIntegrity(
    Insertable<HabitInstance> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('habit_id')) {
      context.handle(
        _habitIdMeta,
        habitId.isAcceptableOrUnknown(data['habit_id']!, _habitIdMeta),
      );
    } else if (isInserting) {
      context.missing(_habitIdMeta);
    }
    if (data.containsKey('day_key')) {
      context.handle(
        _dayKeyMeta,
        dayKey.isAcceptableOrUnknown(data['day_key']!, _dayKeyMeta),
      );
    } else if (isInserting) {
      context.missing(_dayKeyMeta);
    }
    if (data.containsKey('current')) {
      context.handle(
        _currentMeta,
        current.isAcceptableOrUnknown(data['current']!, _currentMeta),
      );
    }
    if (data.containsKey('target')) {
      context.handle(
        _targetMeta,
        target.isAcceptableOrUnknown(data['target']!, _targetMeta),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('completed_at')) {
      context.handle(
        _completedAtMeta,
        completedAt.isAcceptableOrUnknown(
          data['completed_at']!,
          _completedAtMeta,
        ),
      );
    }
    if (data.containsKey('failed_at')) {
      context.handle(
        _failedAtMeta,
        failedAt.isAcceptableOrUnknown(data['failed_at']!, _failedAtMeta),
      );
    }
    if (data.containsKey('last_updated_at')) {
      context.handle(
        _lastUpdatedAtMeta,
        lastUpdatedAt.isAcceptableOrUnknown(
          data['last_updated_at']!,
          _lastUpdatedAtMeta,
        ),
      );
    }
    if (data.containsKey('tracking_meta_json')) {
      context.handle(
        _trackingMetaJsonMeta,
        trackingMetaJson.isAcceptableOrUnknown(
          data['tracking_meta_json']!,
          _trackingMetaJsonMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HabitInstance map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HabitInstance(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      habitId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}habit_id'],
      )!,
      dayKey: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}day_key'],
      )!,
      current: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}current'],
      )!,
      target: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}target'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      completedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}completed_at'],
      ),
      failedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}failed_at'],
      ),
      lastUpdatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_updated_at'],
      ),
      trackingMetaJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tracking_meta_json'],
      )!,
    );
  }

  @override
  $HabitInstancesTable createAlias(String alias) {
    return $HabitInstancesTable(attachedDatabase, alias);
  }
}

class HabitInstance extends DataClass implements Insertable<HabitInstance> {
  final String id;
  final String userId;
  final String habitId;

  /// Dia chave no padrão 20250128
  final int dayKey;
  final int current;
  final int target;

  /// HabitStatus: pending, inProgress, completed, failed
  final String status;
  final DateTime createdAt;
  final DateTime? completedAt;
  final DateTime? failedAt;
  final DateTime? lastUpdatedAt;

  /// tracking extra (autoComplete, tempo, notas, etc)
  final String trackingMetaJson;
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
    required this.trackingMetaJson,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['habit_id'] = Variable<String>(habitId);
    map['day_key'] = Variable<int>(dayKey);
    map['current'] = Variable<int>(current);
    map['target'] = Variable<int>(target);
    map['status'] = Variable<String>(status);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || completedAt != null) {
      map['completed_at'] = Variable<DateTime>(completedAt);
    }
    if (!nullToAbsent || failedAt != null) {
      map['failed_at'] = Variable<DateTime>(failedAt);
    }
    if (!nullToAbsent || lastUpdatedAt != null) {
      map['last_updated_at'] = Variable<DateTime>(lastUpdatedAt);
    }
    map['tracking_meta_json'] = Variable<String>(trackingMetaJson);
    return map;
  }

  HabitInstancesCompanion toCompanion(bool nullToAbsent) {
    return HabitInstancesCompanion(
      id: Value(id),
      userId: Value(userId),
      habitId: Value(habitId),
      dayKey: Value(dayKey),
      current: Value(current),
      target: Value(target),
      status: Value(status),
      createdAt: Value(createdAt),
      completedAt: completedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(completedAt),
      failedAt: failedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(failedAt),
      lastUpdatedAt: lastUpdatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdatedAt),
      trackingMetaJson: Value(trackingMetaJson),
    );
  }

  factory HabitInstance.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HabitInstance(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      habitId: serializer.fromJson<String>(json['habitId']),
      dayKey: serializer.fromJson<int>(json['dayKey']),
      current: serializer.fromJson<int>(json['current']),
      target: serializer.fromJson<int>(json['target']),
      status: serializer.fromJson<String>(json['status']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      completedAt: serializer.fromJson<DateTime?>(json['completedAt']),
      failedAt: serializer.fromJson<DateTime?>(json['failedAt']),
      lastUpdatedAt: serializer.fromJson<DateTime?>(json['lastUpdatedAt']),
      trackingMetaJson: serializer.fromJson<String>(json['trackingMetaJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'habitId': serializer.toJson<String>(habitId),
      'dayKey': serializer.toJson<int>(dayKey),
      'current': serializer.toJson<int>(current),
      'target': serializer.toJson<int>(target),
      'status': serializer.toJson<String>(status),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'completedAt': serializer.toJson<DateTime?>(completedAt),
      'failedAt': serializer.toJson<DateTime?>(failedAt),
      'lastUpdatedAt': serializer.toJson<DateTime?>(lastUpdatedAt),
      'trackingMetaJson': serializer.toJson<String>(trackingMetaJson),
    };
  }

  HabitInstance copyWith({
    String? id,
    String? userId,
    String? habitId,
    int? dayKey,
    int? current,
    int? target,
    String? status,
    DateTime? createdAt,
    Value<DateTime?> completedAt = const Value.absent(),
    Value<DateTime?> failedAt = const Value.absent(),
    Value<DateTime?> lastUpdatedAt = const Value.absent(),
    String? trackingMetaJson,
  }) => HabitInstance(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    habitId: habitId ?? this.habitId,
    dayKey: dayKey ?? this.dayKey,
    current: current ?? this.current,
    target: target ?? this.target,
    status: status ?? this.status,
    createdAt: createdAt ?? this.createdAt,
    completedAt: completedAt.present ? completedAt.value : this.completedAt,
    failedAt: failedAt.present ? failedAt.value : this.failedAt,
    lastUpdatedAt: lastUpdatedAt.present
        ? lastUpdatedAt.value
        : this.lastUpdatedAt,
    trackingMetaJson: trackingMetaJson ?? this.trackingMetaJson,
  );
  HabitInstance copyWithCompanion(HabitInstancesCompanion data) {
    return HabitInstance(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      habitId: data.habitId.present ? data.habitId.value : this.habitId,
      dayKey: data.dayKey.present ? data.dayKey.value : this.dayKey,
      current: data.current.present ? data.current.value : this.current,
      target: data.target.present ? data.target.value : this.target,
      status: data.status.present ? data.status.value : this.status,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      completedAt: data.completedAt.present
          ? data.completedAt.value
          : this.completedAt,
      failedAt: data.failedAt.present ? data.failedAt.value : this.failedAt,
      lastUpdatedAt: data.lastUpdatedAt.present
          ? data.lastUpdatedAt.value
          : this.lastUpdatedAt,
      trackingMetaJson: data.trackingMetaJson.present
          ? data.trackingMetaJson.value
          : this.trackingMetaJson,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HabitInstance(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('habitId: $habitId, ')
          ..write('dayKey: $dayKey, ')
          ..write('current: $current, ')
          ..write('target: $target, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt, ')
          ..write('completedAt: $completedAt, ')
          ..write('failedAt: $failedAt, ')
          ..write('lastUpdatedAt: $lastUpdatedAt, ')
          ..write('trackingMetaJson: $trackingMetaJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    userId,
    habitId,
    dayKey,
    current,
    target,
    status,
    createdAt,
    completedAt,
    failedAt,
    lastUpdatedAt,
    trackingMetaJson,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HabitInstance &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.habitId == this.habitId &&
          other.dayKey == this.dayKey &&
          other.current == this.current &&
          other.target == this.target &&
          other.status == this.status &&
          other.createdAt == this.createdAt &&
          other.completedAt == this.completedAt &&
          other.failedAt == this.failedAt &&
          other.lastUpdatedAt == this.lastUpdatedAt &&
          other.trackingMetaJson == this.trackingMetaJson);
}

class HabitInstancesCompanion extends UpdateCompanion<HabitInstance> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> habitId;
  final Value<int> dayKey;
  final Value<int> current;
  final Value<int> target;
  final Value<String> status;
  final Value<DateTime> createdAt;
  final Value<DateTime?> completedAt;
  final Value<DateTime?> failedAt;
  final Value<DateTime?> lastUpdatedAt;
  final Value<String> trackingMetaJson;
  final Value<int> rowid;
  const HabitInstancesCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.habitId = const Value.absent(),
    this.dayKey = const Value.absent(),
    this.current = const Value.absent(),
    this.target = const Value.absent(),
    this.status = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.completedAt = const Value.absent(),
    this.failedAt = const Value.absent(),
    this.lastUpdatedAt = const Value.absent(),
    this.trackingMetaJson = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HabitInstancesCompanion.insert({
    required String id,
    required String userId,
    required String habitId,
    required int dayKey,
    this.current = const Value.absent(),
    this.target = const Value.absent(),
    this.status = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.completedAt = const Value.absent(),
    this.failedAt = const Value.absent(),
    this.lastUpdatedAt = const Value.absent(),
    this.trackingMetaJson = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       userId = Value(userId),
       habitId = Value(habitId),
       dayKey = Value(dayKey);
  static Insertable<HabitInstance> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? habitId,
    Expression<int>? dayKey,
    Expression<int>? current,
    Expression<int>? target,
    Expression<String>? status,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? completedAt,
    Expression<DateTime>? failedAt,
    Expression<DateTime>? lastUpdatedAt,
    Expression<String>? trackingMetaJson,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (habitId != null) 'habit_id': habitId,
      if (dayKey != null) 'day_key': dayKey,
      if (current != null) 'current': current,
      if (target != null) 'target': target,
      if (status != null) 'status': status,
      if (createdAt != null) 'created_at': createdAt,
      if (completedAt != null) 'completed_at': completedAt,
      if (failedAt != null) 'failed_at': failedAt,
      if (lastUpdatedAt != null) 'last_updated_at': lastUpdatedAt,
      if (trackingMetaJson != null) 'tracking_meta_json': trackingMetaJson,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HabitInstancesCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<String>? habitId,
    Value<int>? dayKey,
    Value<int>? current,
    Value<int>? target,
    Value<String>? status,
    Value<DateTime>? createdAt,
    Value<DateTime?>? completedAt,
    Value<DateTime?>? failedAt,
    Value<DateTime?>? lastUpdatedAt,
    Value<String>? trackingMetaJson,
    Value<int>? rowid,
  }) {
    return HabitInstancesCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      habitId: habitId ?? this.habitId,
      dayKey: dayKey ?? this.dayKey,
      current: current ?? this.current,
      target: target ?? this.target,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      completedAt: completedAt ?? this.completedAt,
      failedAt: failedAt ?? this.failedAt,
      lastUpdatedAt: lastUpdatedAt ?? this.lastUpdatedAt,
      trackingMetaJson: trackingMetaJson ?? this.trackingMetaJson,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (habitId.present) {
      map['habit_id'] = Variable<String>(habitId.value);
    }
    if (dayKey.present) {
      map['day_key'] = Variable<int>(dayKey.value);
    }
    if (current.present) {
      map['current'] = Variable<int>(current.value);
    }
    if (target.present) {
      map['target'] = Variable<int>(target.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (completedAt.present) {
      map['completed_at'] = Variable<DateTime>(completedAt.value);
    }
    if (failedAt.present) {
      map['failed_at'] = Variable<DateTime>(failedAt.value);
    }
    if (lastUpdatedAt.present) {
      map['last_updated_at'] = Variable<DateTime>(lastUpdatedAt.value);
    }
    if (trackingMetaJson.present) {
      map['tracking_meta_json'] = Variable<String>(trackingMetaJson.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HabitInstancesCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('habitId: $habitId, ')
          ..write('dayKey: $dayKey, ')
          ..write('current: $current, ')
          ..write('target: $target, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt, ')
          ..write('completedAt: $completedAt, ')
          ..write('failedAt: $failedAt, ')
          ..write('lastUpdatedAt: $lastUpdatedAt, ')
          ..write('trackingMetaJson: $trackingMetaJson, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ShadowProfilesTable extends ShadowProfiles
    with TableInfo<$ShadowProfilesTable, ShadowProfile> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ShadowProfilesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _archetypeScoresJsonMeta =
      const VerificationMeta('archetypeScoresJson');
  @override
  late final GeneratedColumn<String> archetypeScoresJson =
      GeneratedColumn<String>(
        'archetype_scores_json',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('{}'),
      );
  static const VerificationMeta _totalShadowScoreMeta = const VerificationMeta(
    'totalShadowScore',
  );
  @override
  late final GeneratedColumn<int> totalShadowScore = GeneratedColumn<int>(
    'total_shadow_score',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _dominantArchetypeIdMeta =
      const VerificationMeta('dominantArchetypeId');
  @override
  late final GeneratedColumn<String> dominantArchetypeId =
      GeneratedColumn<String>(
        'dominant_archetype_id',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _crisisLevelMeta = const VerificationMeta(
    'crisisLevel',
  );
  @override
  late final GeneratedColumn<String> crisisLevel = GeneratedColumn<String>(
    'crisis_level',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('none'),
  );
  static const VerificationMeta _resilienceScoreMeta = const VerificationMeta(
    'resilienceScore',
  );
  @override
  late final GeneratedColumn<int> resilienceScore = GeneratedColumn<int>(
    'resilience_score',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(50),
  );
  static const VerificationMeta _totalNegativeEventsMeta =
      const VerificationMeta('totalNegativeEvents');
  @override
  late final GeneratedColumn<int> totalNegativeEvents = GeneratedColumn<int>(
    'total_negative_events',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _totalPositiveEventsMeta =
      const VerificationMeta('totalPositiveEvents');
  @override
  late final GeneratedColumn<int> totalPositiveEvents = GeneratedColumn<int>(
    'total_positive_events',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _totalCrisesMeta = const VerificationMeta(
    'totalCrises',
  );
  @override
  late final GeneratedColumn<int> totalCrises = GeneratedColumn<int>(
    'total_crises',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _totalBreakthroughsMeta =
      const VerificationMeta('totalBreakthroughs');
  @override
  late final GeneratedColumn<int> totalBreakthroughs = GeneratedColumn<int>(
    'total_breakthroughs',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _lastNegativeEventAtMeta =
      const VerificationMeta('lastNegativeEventAt');
  @override
  late final GeneratedColumn<DateTime> lastNegativeEventAt =
      GeneratedColumn<DateTime>(
        'last_negative_event_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _lastPositiveEventAtMeta =
      const VerificationMeta('lastPositiveEventAt');
  @override
  late final GeneratedColumn<DateTime> lastPositiveEventAt =
      GeneratedColumn<DateTime>(
        'last_positive_event_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _lastCrisisAtMeta = const VerificationMeta(
    'lastCrisisAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastCrisisAt = GeneratedColumn<DateTime>(
    'last_crisis_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _lastBreakthroughAtMeta =
      const VerificationMeta('lastBreakthroughAt');
  @override
  late final GeneratedColumn<DateTime> lastBreakthroughAt =
      GeneratedColumn<DateTime>(
        'last_breakthrough_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _metaJsonMeta = const VerificationMeta(
    'metaJson',
  );
  @override
  late final GeneratedColumn<String> metaJson = GeneratedColumn<String>(
    'meta_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('{}'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    userId,
    archetypeScoresJson,
    totalShadowScore,
    dominantArchetypeId,
    crisisLevel,
    resilienceScore,
    totalNegativeEvents,
    totalPositiveEvents,
    totalCrises,
    totalBreakthroughs,
    lastNegativeEventAt,
    lastPositiveEventAt,
    lastCrisisAt,
    lastBreakthroughAt,
    updatedAt,
    metaJson,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'shadow_profiles';
  @override
  VerificationContext validateIntegrity(
    Insertable<ShadowProfile> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('archetype_scores_json')) {
      context.handle(
        _archetypeScoresJsonMeta,
        archetypeScoresJson.isAcceptableOrUnknown(
          data['archetype_scores_json']!,
          _archetypeScoresJsonMeta,
        ),
      );
    }
    if (data.containsKey('total_shadow_score')) {
      context.handle(
        _totalShadowScoreMeta,
        totalShadowScore.isAcceptableOrUnknown(
          data['total_shadow_score']!,
          _totalShadowScoreMeta,
        ),
      );
    }
    if (data.containsKey('dominant_archetype_id')) {
      context.handle(
        _dominantArchetypeIdMeta,
        dominantArchetypeId.isAcceptableOrUnknown(
          data['dominant_archetype_id']!,
          _dominantArchetypeIdMeta,
        ),
      );
    }
    if (data.containsKey('crisis_level')) {
      context.handle(
        _crisisLevelMeta,
        crisisLevel.isAcceptableOrUnknown(
          data['crisis_level']!,
          _crisisLevelMeta,
        ),
      );
    }
    if (data.containsKey('resilience_score')) {
      context.handle(
        _resilienceScoreMeta,
        resilienceScore.isAcceptableOrUnknown(
          data['resilience_score']!,
          _resilienceScoreMeta,
        ),
      );
    }
    if (data.containsKey('total_negative_events')) {
      context.handle(
        _totalNegativeEventsMeta,
        totalNegativeEvents.isAcceptableOrUnknown(
          data['total_negative_events']!,
          _totalNegativeEventsMeta,
        ),
      );
    }
    if (data.containsKey('total_positive_events')) {
      context.handle(
        _totalPositiveEventsMeta,
        totalPositiveEvents.isAcceptableOrUnknown(
          data['total_positive_events']!,
          _totalPositiveEventsMeta,
        ),
      );
    }
    if (data.containsKey('total_crises')) {
      context.handle(
        _totalCrisesMeta,
        totalCrises.isAcceptableOrUnknown(
          data['total_crises']!,
          _totalCrisesMeta,
        ),
      );
    }
    if (data.containsKey('total_breakthroughs')) {
      context.handle(
        _totalBreakthroughsMeta,
        totalBreakthroughs.isAcceptableOrUnknown(
          data['total_breakthroughs']!,
          _totalBreakthroughsMeta,
        ),
      );
    }
    if (data.containsKey('last_negative_event_at')) {
      context.handle(
        _lastNegativeEventAtMeta,
        lastNegativeEventAt.isAcceptableOrUnknown(
          data['last_negative_event_at']!,
          _lastNegativeEventAtMeta,
        ),
      );
    }
    if (data.containsKey('last_positive_event_at')) {
      context.handle(
        _lastPositiveEventAtMeta,
        lastPositiveEventAt.isAcceptableOrUnknown(
          data['last_positive_event_at']!,
          _lastPositiveEventAtMeta,
        ),
      );
    }
    if (data.containsKey('last_crisis_at')) {
      context.handle(
        _lastCrisisAtMeta,
        lastCrisisAt.isAcceptableOrUnknown(
          data['last_crisis_at']!,
          _lastCrisisAtMeta,
        ),
      );
    }
    if (data.containsKey('last_breakthrough_at')) {
      context.handle(
        _lastBreakthroughAtMeta,
        lastBreakthroughAt.isAcceptableOrUnknown(
          data['last_breakthrough_at']!,
          _lastBreakthroughAtMeta,
        ),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('meta_json')) {
      context.handle(
        _metaJsonMeta,
        metaJson.isAcceptableOrUnknown(data['meta_json']!, _metaJsonMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  ShadowProfile map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ShadowProfile(
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      archetypeScoresJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}archetype_scores_json'],
      )!,
      totalShadowScore: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_shadow_score'],
      )!,
      dominantArchetypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}dominant_archetype_id'],
      ),
      crisisLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}crisis_level'],
      )!,
      resilienceScore: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}resilience_score'],
      )!,
      totalNegativeEvents: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_negative_events'],
      )!,
      totalPositiveEvents: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_positive_events'],
      )!,
      totalCrises: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_crises'],
      )!,
      totalBreakthroughs: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_breakthroughs'],
      )!,
      lastNegativeEventAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_negative_event_at'],
      ),
      lastPositiveEventAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_positive_event_at'],
      ),
      lastCrisisAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_crisis_at'],
      ),
      lastBreakthroughAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_breakthrough_at'],
      ),
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      metaJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}meta_json'],
      )!,
    );
  }

  @override
  $ShadowProfilesTable createAlias(String alias) {
    return $ShadowProfilesTable(attachedDatabase, alias);
  }
}

class ShadowProfile extends DataClass implements Insertable<ShadowProfile> {
  final String userId;

  /// Mapa arquétipo -> score em JSON
  /// ex: {"disciplina_sombra": 320}
  final String archetypeScoresJson;
  final int totalShadowScore;
  final String? dominantArchetypeId;

  /// none, mild, moderate, severe
  final String crisisLevel;

  /// 0–100
  final int resilienceScore;
  final int totalNegativeEvents;
  final int totalPositiveEvents;
  final int totalCrises;
  final int totalBreakthroughs;
  final DateTime? lastNegativeEventAt;
  final DateTime? lastPositiveEventAt;
  final DateTime? lastCrisisAt;
  final DateTime? lastBreakthroughAt;
  final DateTime updatedAt;
  final String metaJson;
  const ShadowProfile({
    required this.userId,
    required this.archetypeScoresJson,
    required this.totalShadowScore,
    this.dominantArchetypeId,
    required this.crisisLevel,
    required this.resilienceScore,
    required this.totalNegativeEvents,
    required this.totalPositiveEvents,
    required this.totalCrises,
    required this.totalBreakthroughs,
    this.lastNegativeEventAt,
    this.lastPositiveEventAt,
    this.lastCrisisAt,
    this.lastBreakthroughAt,
    required this.updatedAt,
    required this.metaJson,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userId);
    map['archetype_scores_json'] = Variable<String>(archetypeScoresJson);
    map['total_shadow_score'] = Variable<int>(totalShadowScore);
    if (!nullToAbsent || dominantArchetypeId != null) {
      map['dominant_archetype_id'] = Variable<String>(dominantArchetypeId);
    }
    map['crisis_level'] = Variable<String>(crisisLevel);
    map['resilience_score'] = Variable<int>(resilienceScore);
    map['total_negative_events'] = Variable<int>(totalNegativeEvents);
    map['total_positive_events'] = Variable<int>(totalPositiveEvents);
    map['total_crises'] = Variable<int>(totalCrises);
    map['total_breakthroughs'] = Variable<int>(totalBreakthroughs);
    if (!nullToAbsent || lastNegativeEventAt != null) {
      map['last_negative_event_at'] = Variable<DateTime>(lastNegativeEventAt);
    }
    if (!nullToAbsent || lastPositiveEventAt != null) {
      map['last_positive_event_at'] = Variable<DateTime>(lastPositiveEventAt);
    }
    if (!nullToAbsent || lastCrisisAt != null) {
      map['last_crisis_at'] = Variable<DateTime>(lastCrisisAt);
    }
    if (!nullToAbsent || lastBreakthroughAt != null) {
      map['last_breakthrough_at'] = Variable<DateTime>(lastBreakthroughAt);
    }
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['meta_json'] = Variable<String>(metaJson);
    return map;
  }

  ShadowProfilesCompanion toCompanion(bool nullToAbsent) {
    return ShadowProfilesCompanion(
      userId: Value(userId),
      archetypeScoresJson: Value(archetypeScoresJson),
      totalShadowScore: Value(totalShadowScore),
      dominantArchetypeId: dominantArchetypeId == null && nullToAbsent
          ? const Value.absent()
          : Value(dominantArchetypeId),
      crisisLevel: Value(crisisLevel),
      resilienceScore: Value(resilienceScore),
      totalNegativeEvents: Value(totalNegativeEvents),
      totalPositiveEvents: Value(totalPositiveEvents),
      totalCrises: Value(totalCrises),
      totalBreakthroughs: Value(totalBreakthroughs),
      lastNegativeEventAt: lastNegativeEventAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastNegativeEventAt),
      lastPositiveEventAt: lastPositiveEventAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastPositiveEventAt),
      lastCrisisAt: lastCrisisAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastCrisisAt),
      lastBreakthroughAt: lastBreakthroughAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastBreakthroughAt),
      updatedAt: Value(updatedAt),
      metaJson: Value(metaJson),
    );
  }

  factory ShadowProfile.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ShadowProfile(
      userId: serializer.fromJson<String>(json['userId']),
      archetypeScoresJson: serializer.fromJson<String>(
        json['archetypeScoresJson'],
      ),
      totalShadowScore: serializer.fromJson<int>(json['totalShadowScore']),
      dominantArchetypeId: serializer.fromJson<String?>(
        json['dominantArchetypeId'],
      ),
      crisisLevel: serializer.fromJson<String>(json['crisisLevel']),
      resilienceScore: serializer.fromJson<int>(json['resilienceScore']),
      totalNegativeEvents: serializer.fromJson<int>(
        json['totalNegativeEvents'],
      ),
      totalPositiveEvents: serializer.fromJson<int>(
        json['totalPositiveEvents'],
      ),
      totalCrises: serializer.fromJson<int>(json['totalCrises']),
      totalBreakthroughs: serializer.fromJson<int>(json['totalBreakthroughs']),
      lastNegativeEventAt: serializer.fromJson<DateTime?>(
        json['lastNegativeEventAt'],
      ),
      lastPositiveEventAt: serializer.fromJson<DateTime?>(
        json['lastPositiveEventAt'],
      ),
      lastCrisisAt: serializer.fromJson<DateTime?>(json['lastCrisisAt']),
      lastBreakthroughAt: serializer.fromJson<DateTime?>(
        json['lastBreakthroughAt'],
      ),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      metaJson: serializer.fromJson<String>(json['metaJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'archetypeScoresJson': serializer.toJson<String>(archetypeScoresJson),
      'totalShadowScore': serializer.toJson<int>(totalShadowScore),
      'dominantArchetypeId': serializer.toJson<String?>(dominantArchetypeId),
      'crisisLevel': serializer.toJson<String>(crisisLevel),
      'resilienceScore': serializer.toJson<int>(resilienceScore),
      'totalNegativeEvents': serializer.toJson<int>(totalNegativeEvents),
      'totalPositiveEvents': serializer.toJson<int>(totalPositiveEvents),
      'totalCrises': serializer.toJson<int>(totalCrises),
      'totalBreakthroughs': serializer.toJson<int>(totalBreakthroughs),
      'lastNegativeEventAt': serializer.toJson<DateTime?>(lastNegativeEventAt),
      'lastPositiveEventAt': serializer.toJson<DateTime?>(lastPositiveEventAt),
      'lastCrisisAt': serializer.toJson<DateTime?>(lastCrisisAt),
      'lastBreakthroughAt': serializer.toJson<DateTime?>(lastBreakthroughAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'metaJson': serializer.toJson<String>(metaJson),
    };
  }

  ShadowProfile copyWith({
    String? userId,
    String? archetypeScoresJson,
    int? totalShadowScore,
    Value<String?> dominantArchetypeId = const Value.absent(),
    String? crisisLevel,
    int? resilienceScore,
    int? totalNegativeEvents,
    int? totalPositiveEvents,
    int? totalCrises,
    int? totalBreakthroughs,
    Value<DateTime?> lastNegativeEventAt = const Value.absent(),
    Value<DateTime?> lastPositiveEventAt = const Value.absent(),
    Value<DateTime?> lastCrisisAt = const Value.absent(),
    Value<DateTime?> lastBreakthroughAt = const Value.absent(),
    DateTime? updatedAt,
    String? metaJson,
  }) => ShadowProfile(
    userId: userId ?? this.userId,
    archetypeScoresJson: archetypeScoresJson ?? this.archetypeScoresJson,
    totalShadowScore: totalShadowScore ?? this.totalShadowScore,
    dominantArchetypeId: dominantArchetypeId.present
        ? dominantArchetypeId.value
        : this.dominantArchetypeId,
    crisisLevel: crisisLevel ?? this.crisisLevel,
    resilienceScore: resilienceScore ?? this.resilienceScore,
    totalNegativeEvents: totalNegativeEvents ?? this.totalNegativeEvents,
    totalPositiveEvents: totalPositiveEvents ?? this.totalPositiveEvents,
    totalCrises: totalCrises ?? this.totalCrises,
    totalBreakthroughs: totalBreakthroughs ?? this.totalBreakthroughs,
    lastNegativeEventAt: lastNegativeEventAt.present
        ? lastNegativeEventAt.value
        : this.lastNegativeEventAt,
    lastPositiveEventAt: lastPositiveEventAt.present
        ? lastPositiveEventAt.value
        : this.lastPositiveEventAt,
    lastCrisisAt: lastCrisisAt.present ? lastCrisisAt.value : this.lastCrisisAt,
    lastBreakthroughAt: lastBreakthroughAt.present
        ? lastBreakthroughAt.value
        : this.lastBreakthroughAt,
    updatedAt: updatedAt ?? this.updatedAt,
    metaJson: metaJson ?? this.metaJson,
  );
  ShadowProfile copyWithCompanion(ShadowProfilesCompanion data) {
    return ShadowProfile(
      userId: data.userId.present ? data.userId.value : this.userId,
      archetypeScoresJson: data.archetypeScoresJson.present
          ? data.archetypeScoresJson.value
          : this.archetypeScoresJson,
      totalShadowScore: data.totalShadowScore.present
          ? data.totalShadowScore.value
          : this.totalShadowScore,
      dominantArchetypeId: data.dominantArchetypeId.present
          ? data.dominantArchetypeId.value
          : this.dominantArchetypeId,
      crisisLevel: data.crisisLevel.present
          ? data.crisisLevel.value
          : this.crisisLevel,
      resilienceScore: data.resilienceScore.present
          ? data.resilienceScore.value
          : this.resilienceScore,
      totalNegativeEvents: data.totalNegativeEvents.present
          ? data.totalNegativeEvents.value
          : this.totalNegativeEvents,
      totalPositiveEvents: data.totalPositiveEvents.present
          ? data.totalPositiveEvents.value
          : this.totalPositiveEvents,
      totalCrises: data.totalCrises.present
          ? data.totalCrises.value
          : this.totalCrises,
      totalBreakthroughs: data.totalBreakthroughs.present
          ? data.totalBreakthroughs.value
          : this.totalBreakthroughs,
      lastNegativeEventAt: data.lastNegativeEventAt.present
          ? data.lastNegativeEventAt.value
          : this.lastNegativeEventAt,
      lastPositiveEventAt: data.lastPositiveEventAt.present
          ? data.lastPositiveEventAt.value
          : this.lastPositiveEventAt,
      lastCrisisAt: data.lastCrisisAt.present
          ? data.lastCrisisAt.value
          : this.lastCrisisAt,
      lastBreakthroughAt: data.lastBreakthroughAt.present
          ? data.lastBreakthroughAt.value
          : this.lastBreakthroughAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      metaJson: data.metaJson.present ? data.metaJson.value : this.metaJson,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ShadowProfile(')
          ..write('userId: $userId, ')
          ..write('archetypeScoresJson: $archetypeScoresJson, ')
          ..write('totalShadowScore: $totalShadowScore, ')
          ..write('dominantArchetypeId: $dominantArchetypeId, ')
          ..write('crisisLevel: $crisisLevel, ')
          ..write('resilienceScore: $resilienceScore, ')
          ..write('totalNegativeEvents: $totalNegativeEvents, ')
          ..write('totalPositiveEvents: $totalPositiveEvents, ')
          ..write('totalCrises: $totalCrises, ')
          ..write('totalBreakthroughs: $totalBreakthroughs, ')
          ..write('lastNegativeEventAt: $lastNegativeEventAt, ')
          ..write('lastPositiveEventAt: $lastPositiveEventAt, ')
          ..write('lastCrisisAt: $lastCrisisAt, ')
          ..write('lastBreakthroughAt: $lastBreakthroughAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('metaJson: $metaJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    userId,
    archetypeScoresJson,
    totalShadowScore,
    dominantArchetypeId,
    crisisLevel,
    resilienceScore,
    totalNegativeEvents,
    totalPositiveEvents,
    totalCrises,
    totalBreakthroughs,
    lastNegativeEventAt,
    lastPositiveEventAt,
    lastCrisisAt,
    lastBreakthroughAt,
    updatedAt,
    metaJson,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ShadowProfile &&
          other.userId == this.userId &&
          other.archetypeScoresJson == this.archetypeScoresJson &&
          other.totalShadowScore == this.totalShadowScore &&
          other.dominantArchetypeId == this.dominantArchetypeId &&
          other.crisisLevel == this.crisisLevel &&
          other.resilienceScore == this.resilienceScore &&
          other.totalNegativeEvents == this.totalNegativeEvents &&
          other.totalPositiveEvents == this.totalPositiveEvents &&
          other.totalCrises == this.totalCrises &&
          other.totalBreakthroughs == this.totalBreakthroughs &&
          other.lastNegativeEventAt == this.lastNegativeEventAt &&
          other.lastPositiveEventAt == this.lastPositiveEventAt &&
          other.lastCrisisAt == this.lastCrisisAt &&
          other.lastBreakthroughAt == this.lastBreakthroughAt &&
          other.updatedAt == this.updatedAt &&
          other.metaJson == this.metaJson);
}

class ShadowProfilesCompanion extends UpdateCompanion<ShadowProfile> {
  final Value<String> userId;
  final Value<String> archetypeScoresJson;
  final Value<int> totalShadowScore;
  final Value<String?> dominantArchetypeId;
  final Value<String> crisisLevel;
  final Value<int> resilienceScore;
  final Value<int> totalNegativeEvents;
  final Value<int> totalPositiveEvents;
  final Value<int> totalCrises;
  final Value<int> totalBreakthroughs;
  final Value<DateTime?> lastNegativeEventAt;
  final Value<DateTime?> lastPositiveEventAt;
  final Value<DateTime?> lastCrisisAt;
  final Value<DateTime?> lastBreakthroughAt;
  final Value<DateTime> updatedAt;
  final Value<String> metaJson;
  final Value<int> rowid;
  const ShadowProfilesCompanion({
    this.userId = const Value.absent(),
    this.archetypeScoresJson = const Value.absent(),
    this.totalShadowScore = const Value.absent(),
    this.dominantArchetypeId = const Value.absent(),
    this.crisisLevel = const Value.absent(),
    this.resilienceScore = const Value.absent(),
    this.totalNegativeEvents = const Value.absent(),
    this.totalPositiveEvents = const Value.absent(),
    this.totalCrises = const Value.absent(),
    this.totalBreakthroughs = const Value.absent(),
    this.lastNegativeEventAt = const Value.absent(),
    this.lastPositiveEventAt = const Value.absent(),
    this.lastCrisisAt = const Value.absent(),
    this.lastBreakthroughAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.metaJson = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ShadowProfilesCompanion.insert({
    required String userId,
    this.archetypeScoresJson = const Value.absent(),
    this.totalShadowScore = const Value.absent(),
    this.dominantArchetypeId = const Value.absent(),
    this.crisisLevel = const Value.absent(),
    this.resilienceScore = const Value.absent(),
    this.totalNegativeEvents = const Value.absent(),
    this.totalPositiveEvents = const Value.absent(),
    this.totalCrises = const Value.absent(),
    this.totalBreakthroughs = const Value.absent(),
    this.lastNegativeEventAt = const Value.absent(),
    this.lastPositiveEventAt = const Value.absent(),
    this.lastCrisisAt = const Value.absent(),
    this.lastBreakthroughAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.metaJson = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : userId = Value(userId);
  static Insertable<ShadowProfile> custom({
    Expression<String>? userId,
    Expression<String>? archetypeScoresJson,
    Expression<int>? totalShadowScore,
    Expression<String>? dominantArchetypeId,
    Expression<String>? crisisLevel,
    Expression<int>? resilienceScore,
    Expression<int>? totalNegativeEvents,
    Expression<int>? totalPositiveEvents,
    Expression<int>? totalCrises,
    Expression<int>? totalBreakthroughs,
    Expression<DateTime>? lastNegativeEventAt,
    Expression<DateTime>? lastPositiveEventAt,
    Expression<DateTime>? lastCrisisAt,
    Expression<DateTime>? lastBreakthroughAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? metaJson,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (archetypeScoresJson != null)
        'archetype_scores_json': archetypeScoresJson,
      if (totalShadowScore != null) 'total_shadow_score': totalShadowScore,
      if (dominantArchetypeId != null)
        'dominant_archetype_id': dominantArchetypeId,
      if (crisisLevel != null) 'crisis_level': crisisLevel,
      if (resilienceScore != null) 'resilience_score': resilienceScore,
      if (totalNegativeEvents != null)
        'total_negative_events': totalNegativeEvents,
      if (totalPositiveEvents != null)
        'total_positive_events': totalPositiveEvents,
      if (totalCrises != null) 'total_crises': totalCrises,
      if (totalBreakthroughs != null) 'total_breakthroughs': totalBreakthroughs,
      if (lastNegativeEventAt != null)
        'last_negative_event_at': lastNegativeEventAt,
      if (lastPositiveEventAt != null)
        'last_positive_event_at': lastPositiveEventAt,
      if (lastCrisisAt != null) 'last_crisis_at': lastCrisisAt,
      if (lastBreakthroughAt != null)
        'last_breakthrough_at': lastBreakthroughAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (metaJson != null) 'meta_json': metaJson,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ShadowProfilesCompanion copyWith({
    Value<String>? userId,
    Value<String>? archetypeScoresJson,
    Value<int>? totalShadowScore,
    Value<String?>? dominantArchetypeId,
    Value<String>? crisisLevel,
    Value<int>? resilienceScore,
    Value<int>? totalNegativeEvents,
    Value<int>? totalPositiveEvents,
    Value<int>? totalCrises,
    Value<int>? totalBreakthroughs,
    Value<DateTime?>? lastNegativeEventAt,
    Value<DateTime?>? lastPositiveEventAt,
    Value<DateTime?>? lastCrisisAt,
    Value<DateTime?>? lastBreakthroughAt,
    Value<DateTime>? updatedAt,
    Value<String>? metaJson,
    Value<int>? rowid,
  }) {
    return ShadowProfilesCompanion(
      userId: userId ?? this.userId,
      archetypeScoresJson: archetypeScoresJson ?? this.archetypeScoresJson,
      totalShadowScore: totalShadowScore ?? this.totalShadowScore,
      dominantArchetypeId: dominantArchetypeId ?? this.dominantArchetypeId,
      crisisLevel: crisisLevel ?? this.crisisLevel,
      resilienceScore: resilienceScore ?? this.resilienceScore,
      totalNegativeEvents: totalNegativeEvents ?? this.totalNegativeEvents,
      totalPositiveEvents: totalPositiveEvents ?? this.totalPositiveEvents,
      totalCrises: totalCrises ?? this.totalCrises,
      totalBreakthroughs: totalBreakthroughs ?? this.totalBreakthroughs,
      lastNegativeEventAt: lastNegativeEventAt ?? this.lastNegativeEventAt,
      lastPositiveEventAt: lastPositiveEventAt ?? this.lastPositiveEventAt,
      lastCrisisAt: lastCrisisAt ?? this.lastCrisisAt,
      lastBreakthroughAt: lastBreakthroughAt ?? this.lastBreakthroughAt,
      updatedAt: updatedAt ?? this.updatedAt,
      metaJson: metaJson ?? this.metaJson,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (archetypeScoresJson.present) {
      map['archetype_scores_json'] = Variable<String>(
        archetypeScoresJson.value,
      );
    }
    if (totalShadowScore.present) {
      map['total_shadow_score'] = Variable<int>(totalShadowScore.value);
    }
    if (dominantArchetypeId.present) {
      map['dominant_archetype_id'] = Variable<String>(
        dominantArchetypeId.value,
      );
    }
    if (crisisLevel.present) {
      map['crisis_level'] = Variable<String>(crisisLevel.value);
    }
    if (resilienceScore.present) {
      map['resilience_score'] = Variable<int>(resilienceScore.value);
    }
    if (totalNegativeEvents.present) {
      map['total_negative_events'] = Variable<int>(totalNegativeEvents.value);
    }
    if (totalPositiveEvents.present) {
      map['total_positive_events'] = Variable<int>(totalPositiveEvents.value);
    }
    if (totalCrises.present) {
      map['total_crises'] = Variable<int>(totalCrises.value);
    }
    if (totalBreakthroughs.present) {
      map['total_breakthroughs'] = Variable<int>(totalBreakthroughs.value);
    }
    if (lastNegativeEventAt.present) {
      map['last_negative_event_at'] = Variable<DateTime>(
        lastNegativeEventAt.value,
      );
    }
    if (lastPositiveEventAt.present) {
      map['last_positive_event_at'] = Variable<DateTime>(
        lastPositiveEventAt.value,
      );
    }
    if (lastCrisisAt.present) {
      map['last_crisis_at'] = Variable<DateTime>(lastCrisisAt.value);
    }
    if (lastBreakthroughAt.present) {
      map['last_breakthrough_at'] = Variable<DateTime>(
        lastBreakthroughAt.value,
      );
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (metaJson.present) {
      map['meta_json'] = Variable<String>(metaJson.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ShadowProfilesCompanion(')
          ..write('userId: $userId, ')
          ..write('archetypeScoresJson: $archetypeScoresJson, ')
          ..write('totalShadowScore: $totalShadowScore, ')
          ..write('dominantArchetypeId: $dominantArchetypeId, ')
          ..write('crisisLevel: $crisisLevel, ')
          ..write('resilienceScore: $resilienceScore, ')
          ..write('totalNegativeEvents: $totalNegativeEvents, ')
          ..write('totalPositiveEvents: $totalPositiveEvents, ')
          ..write('totalCrises: $totalCrises, ')
          ..write('totalBreakthroughs: $totalBreakthroughs, ')
          ..write('lastNegativeEventAt: $lastNegativeEventAt, ')
          ..write('lastPositiveEventAt: $lastPositiveEventAt, ')
          ..write('lastCrisisAt: $lastCrisisAt, ')
          ..write('lastBreakthroughAt: $lastBreakthroughAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('metaJson: $metaJson, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ShadowEventsTable extends ShadowEvents
    with TableInfo<$ShadowEventsTable, ShadowEvent> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ShadowEventsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _archetypeIdMeta = const VerificationMeta(
    'archetypeId',
  );
  @override
  late final GeneratedColumn<String> archetypeId = GeneratedColumn<String>(
    'archetype_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _kindMeta = const VerificationMeta('kind');
  @override
  late final GeneratedColumn<String> kind = GeneratedColumn<String>(
    'kind',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sourceTypeMeta = const VerificationMeta(
    'sourceType',
  );
  @override
  late final GeneratedColumn<String> sourceType = GeneratedColumn<String>(
    'source_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sourceIdMeta = const VerificationMeta(
    'sourceId',
  );
  @override
  late final GeneratedColumn<String> sourceId = GeneratedColumn<String>(
    'source_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deltaMeta = const VerificationMeta('delta');
  @override
  late final GeneratedColumn<int> delta = GeneratedColumn<int>(
    'delta',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _archetypeScoreAfterMeta =
      const VerificationMeta('archetypeScoreAfter');
  @override
  late final GeneratedColumn<int> archetypeScoreAfter = GeneratedColumn<int>(
    'archetype_score_after',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalShadowScoreAfterMeta =
      const VerificationMeta('totalShadowScoreAfter');
  @override
  late final GeneratedColumn<int> totalShadowScoreAfter = GeneratedColumn<int>(
    'total_shadow_score_after',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _metaJsonMeta = const VerificationMeta(
    'metaJson',
  );
  @override
  late final GeneratedColumn<String> metaJson = GeneratedColumn<String>(
    'meta_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('{}'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    archetypeId,
    kind,
    sourceType,
    sourceId,
    delta,
    archetypeScoreAfter,
    totalShadowScoreAfter,
    createdAt,
    metaJson,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'shadow_events';
  @override
  VerificationContext validateIntegrity(
    Insertable<ShadowEvent> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('archetype_id')) {
      context.handle(
        _archetypeIdMeta,
        archetypeId.isAcceptableOrUnknown(
          data['archetype_id']!,
          _archetypeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_archetypeIdMeta);
    }
    if (data.containsKey('kind')) {
      context.handle(
        _kindMeta,
        kind.isAcceptableOrUnknown(data['kind']!, _kindMeta),
      );
    } else if (isInserting) {
      context.missing(_kindMeta);
    }
    if (data.containsKey('source_type')) {
      context.handle(
        _sourceTypeMeta,
        sourceType.isAcceptableOrUnknown(data['source_type']!, _sourceTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_sourceTypeMeta);
    }
    if (data.containsKey('source_id')) {
      context.handle(
        _sourceIdMeta,
        sourceId.isAcceptableOrUnknown(data['source_id']!, _sourceIdMeta),
      );
    } else if (isInserting) {
      context.missing(_sourceIdMeta);
    }
    if (data.containsKey('delta')) {
      context.handle(
        _deltaMeta,
        delta.isAcceptableOrUnknown(data['delta']!, _deltaMeta),
      );
    } else if (isInserting) {
      context.missing(_deltaMeta);
    }
    if (data.containsKey('archetype_score_after')) {
      context.handle(
        _archetypeScoreAfterMeta,
        archetypeScoreAfter.isAcceptableOrUnknown(
          data['archetype_score_after']!,
          _archetypeScoreAfterMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_archetypeScoreAfterMeta);
    }
    if (data.containsKey('total_shadow_score_after')) {
      context.handle(
        _totalShadowScoreAfterMeta,
        totalShadowScoreAfter.isAcceptableOrUnknown(
          data['total_shadow_score_after']!,
          _totalShadowScoreAfterMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_totalShadowScoreAfterMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('meta_json')) {
      context.handle(
        _metaJsonMeta,
        metaJson.isAcceptableOrUnknown(data['meta_json']!, _metaJsonMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ShadowEvent map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ShadowEvent(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      archetypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}archetype_id'],
      )!,
      kind: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}kind'],
      )!,
      sourceType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source_type'],
      )!,
      sourceId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source_id'],
      )!,
      delta: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}delta'],
      )!,
      archetypeScoreAfter: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}archetype_score_after'],
      )!,
      totalShadowScoreAfter: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_shadow_score_after'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      metaJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}meta_json'],
      )!,
    );
  }

  @override
  $ShadowEventsTable createAlias(String alias) {
    return $ShadowEventsTable(attachedDatabase, alias);
  }
}

class ShadowEvent extends DataClass implements Insertable<ShadowEvent> {
  final String id;
  final String userId;

  /// arquétipo alvo
  final String archetypeId;

  /// ShadowEventKind: positive, negative, neutral, crisis, breakthrough
  final String kind;

  /// ShadowEventSourceType: habit, quest, system, manual
  final String sourceType;

  /// FK lógico: habitId, questInstanceId, etc
  final String sourceId;

  /// delta aplicado (pode ser negativo para redução de sombra)
  final int delta;
  final int archetypeScoreAfter;
  final int totalShadowScoreAfter;
  final DateTime createdAt;

  /// meta flexível
  final String metaJson;
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
    required this.metaJson,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['archetype_id'] = Variable<String>(archetypeId);
    map['kind'] = Variable<String>(kind);
    map['source_type'] = Variable<String>(sourceType);
    map['source_id'] = Variable<String>(sourceId);
    map['delta'] = Variable<int>(delta);
    map['archetype_score_after'] = Variable<int>(archetypeScoreAfter);
    map['total_shadow_score_after'] = Variable<int>(totalShadowScoreAfter);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['meta_json'] = Variable<String>(metaJson);
    return map;
  }

  ShadowEventsCompanion toCompanion(bool nullToAbsent) {
    return ShadowEventsCompanion(
      id: Value(id),
      userId: Value(userId),
      archetypeId: Value(archetypeId),
      kind: Value(kind),
      sourceType: Value(sourceType),
      sourceId: Value(sourceId),
      delta: Value(delta),
      archetypeScoreAfter: Value(archetypeScoreAfter),
      totalShadowScoreAfter: Value(totalShadowScoreAfter),
      createdAt: Value(createdAt),
      metaJson: Value(metaJson),
    );
  }

  factory ShadowEvent.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ShadowEvent(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      archetypeId: serializer.fromJson<String>(json['archetypeId']),
      kind: serializer.fromJson<String>(json['kind']),
      sourceType: serializer.fromJson<String>(json['sourceType']),
      sourceId: serializer.fromJson<String>(json['sourceId']),
      delta: serializer.fromJson<int>(json['delta']),
      archetypeScoreAfter: serializer.fromJson<int>(
        json['archetypeScoreAfter'],
      ),
      totalShadowScoreAfter: serializer.fromJson<int>(
        json['totalShadowScoreAfter'],
      ),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      metaJson: serializer.fromJson<String>(json['metaJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'archetypeId': serializer.toJson<String>(archetypeId),
      'kind': serializer.toJson<String>(kind),
      'sourceType': serializer.toJson<String>(sourceType),
      'sourceId': serializer.toJson<String>(sourceId),
      'delta': serializer.toJson<int>(delta),
      'archetypeScoreAfter': serializer.toJson<int>(archetypeScoreAfter),
      'totalShadowScoreAfter': serializer.toJson<int>(totalShadowScoreAfter),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'metaJson': serializer.toJson<String>(metaJson),
    };
  }

  ShadowEvent copyWith({
    String? id,
    String? userId,
    String? archetypeId,
    String? kind,
    String? sourceType,
    String? sourceId,
    int? delta,
    int? archetypeScoreAfter,
    int? totalShadowScoreAfter,
    DateTime? createdAt,
    String? metaJson,
  }) => ShadowEvent(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    archetypeId: archetypeId ?? this.archetypeId,
    kind: kind ?? this.kind,
    sourceType: sourceType ?? this.sourceType,
    sourceId: sourceId ?? this.sourceId,
    delta: delta ?? this.delta,
    archetypeScoreAfter: archetypeScoreAfter ?? this.archetypeScoreAfter,
    totalShadowScoreAfter: totalShadowScoreAfter ?? this.totalShadowScoreAfter,
    createdAt: createdAt ?? this.createdAt,
    metaJson: metaJson ?? this.metaJson,
  );
  ShadowEvent copyWithCompanion(ShadowEventsCompanion data) {
    return ShadowEvent(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      archetypeId: data.archetypeId.present
          ? data.archetypeId.value
          : this.archetypeId,
      kind: data.kind.present ? data.kind.value : this.kind,
      sourceType: data.sourceType.present
          ? data.sourceType.value
          : this.sourceType,
      sourceId: data.sourceId.present ? data.sourceId.value : this.sourceId,
      delta: data.delta.present ? data.delta.value : this.delta,
      archetypeScoreAfter: data.archetypeScoreAfter.present
          ? data.archetypeScoreAfter.value
          : this.archetypeScoreAfter,
      totalShadowScoreAfter: data.totalShadowScoreAfter.present
          ? data.totalShadowScoreAfter.value
          : this.totalShadowScoreAfter,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      metaJson: data.metaJson.present ? data.metaJson.value : this.metaJson,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ShadowEvent(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('archetypeId: $archetypeId, ')
          ..write('kind: $kind, ')
          ..write('sourceType: $sourceType, ')
          ..write('sourceId: $sourceId, ')
          ..write('delta: $delta, ')
          ..write('archetypeScoreAfter: $archetypeScoreAfter, ')
          ..write('totalShadowScoreAfter: $totalShadowScoreAfter, ')
          ..write('createdAt: $createdAt, ')
          ..write('metaJson: $metaJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    userId,
    archetypeId,
    kind,
    sourceType,
    sourceId,
    delta,
    archetypeScoreAfter,
    totalShadowScoreAfter,
    createdAt,
    metaJson,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ShadowEvent &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.archetypeId == this.archetypeId &&
          other.kind == this.kind &&
          other.sourceType == this.sourceType &&
          other.sourceId == this.sourceId &&
          other.delta == this.delta &&
          other.archetypeScoreAfter == this.archetypeScoreAfter &&
          other.totalShadowScoreAfter == this.totalShadowScoreAfter &&
          other.createdAt == this.createdAt &&
          other.metaJson == this.metaJson);
}

class ShadowEventsCompanion extends UpdateCompanion<ShadowEvent> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> archetypeId;
  final Value<String> kind;
  final Value<String> sourceType;
  final Value<String> sourceId;
  final Value<int> delta;
  final Value<int> archetypeScoreAfter;
  final Value<int> totalShadowScoreAfter;
  final Value<DateTime> createdAt;
  final Value<String> metaJson;
  final Value<int> rowid;
  const ShadowEventsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.archetypeId = const Value.absent(),
    this.kind = const Value.absent(),
    this.sourceType = const Value.absent(),
    this.sourceId = const Value.absent(),
    this.delta = const Value.absent(),
    this.archetypeScoreAfter = const Value.absent(),
    this.totalShadowScoreAfter = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.metaJson = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ShadowEventsCompanion.insert({
    required String id,
    required String userId,
    required String archetypeId,
    required String kind,
    required String sourceType,
    required String sourceId,
    required int delta,
    required int archetypeScoreAfter,
    required int totalShadowScoreAfter,
    this.createdAt = const Value.absent(),
    this.metaJson = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       userId = Value(userId),
       archetypeId = Value(archetypeId),
       kind = Value(kind),
       sourceType = Value(sourceType),
       sourceId = Value(sourceId),
       delta = Value(delta),
       archetypeScoreAfter = Value(archetypeScoreAfter),
       totalShadowScoreAfter = Value(totalShadowScoreAfter);
  static Insertable<ShadowEvent> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? archetypeId,
    Expression<String>? kind,
    Expression<String>? sourceType,
    Expression<String>? sourceId,
    Expression<int>? delta,
    Expression<int>? archetypeScoreAfter,
    Expression<int>? totalShadowScoreAfter,
    Expression<DateTime>? createdAt,
    Expression<String>? metaJson,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (archetypeId != null) 'archetype_id': archetypeId,
      if (kind != null) 'kind': kind,
      if (sourceType != null) 'source_type': sourceType,
      if (sourceId != null) 'source_id': sourceId,
      if (delta != null) 'delta': delta,
      if (archetypeScoreAfter != null)
        'archetype_score_after': archetypeScoreAfter,
      if (totalShadowScoreAfter != null)
        'total_shadow_score_after': totalShadowScoreAfter,
      if (createdAt != null) 'created_at': createdAt,
      if (metaJson != null) 'meta_json': metaJson,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ShadowEventsCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<String>? archetypeId,
    Value<String>? kind,
    Value<String>? sourceType,
    Value<String>? sourceId,
    Value<int>? delta,
    Value<int>? archetypeScoreAfter,
    Value<int>? totalShadowScoreAfter,
    Value<DateTime>? createdAt,
    Value<String>? metaJson,
    Value<int>? rowid,
  }) {
    return ShadowEventsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      archetypeId: archetypeId ?? this.archetypeId,
      kind: kind ?? this.kind,
      sourceType: sourceType ?? this.sourceType,
      sourceId: sourceId ?? this.sourceId,
      delta: delta ?? this.delta,
      archetypeScoreAfter: archetypeScoreAfter ?? this.archetypeScoreAfter,
      totalShadowScoreAfter:
          totalShadowScoreAfter ?? this.totalShadowScoreAfter,
      createdAt: createdAt ?? this.createdAt,
      metaJson: metaJson ?? this.metaJson,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (archetypeId.present) {
      map['archetype_id'] = Variable<String>(archetypeId.value);
    }
    if (kind.present) {
      map['kind'] = Variable<String>(kind.value);
    }
    if (sourceType.present) {
      map['source_type'] = Variable<String>(sourceType.value);
    }
    if (sourceId.present) {
      map['source_id'] = Variable<String>(sourceId.value);
    }
    if (delta.present) {
      map['delta'] = Variable<int>(delta.value);
    }
    if (archetypeScoreAfter.present) {
      map['archetype_score_after'] = Variable<int>(archetypeScoreAfter.value);
    }
    if (totalShadowScoreAfter.present) {
      map['total_shadow_score_after'] = Variable<int>(
        totalShadowScoreAfter.value,
      );
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (metaJson.present) {
      map['meta_json'] = Variable<String>(metaJson.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ShadowEventsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('archetypeId: $archetypeId, ')
          ..write('kind: $kind, ')
          ..write('sourceType: $sourceType, ')
          ..write('sourceId: $sourceId, ')
          ..write('delta: $delta, ')
          ..write('archetypeScoreAfter: $archetypeScoreAfter, ')
          ..write('totalShadowScoreAfter: $totalShadowScoreAfter, ')
          ..write('createdAt: $createdAt, ')
          ..write('metaJson: $metaJson, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $UsersTable users = $UsersTable(this);
  late final $QuestTemplatesTable questTemplates = $QuestTemplatesTable(this);
  late final $QuestInstancesTable questInstances = $QuestInstancesTable(this);
  late final $ItemsTable items = $ItemsTable(this);
  late final $InventoryTable inventory = $InventoryTable(this);
  late final $QuestLogsTable questLogs = $QuestLogsTable(this);
  late final $AchievementsTable achievements = $AchievementsTable(this);
  late final $JournalEntriesTable journalEntries = $JournalEntriesTable(this);
  late final $JournalSectionsTable journalSections = $JournalSectionsTable(
    this,
  );
  late final $HabitDefinitionsTable habitDefinitions = $HabitDefinitionsTable(
    this,
  );
  late final $HabitInstancesTable habitInstances = $HabitInstancesTable(this);
  late final $ShadowProfilesTable shadowProfiles = $ShadowProfilesTable(this);
  late final $ShadowEventsTable shadowEvents = $ShadowEventsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    users,
    questTemplates,
    questInstances,
    items,
    inventory,
    questLogs,
    achievements,
    journalEntries,
    journalSections,
    habitDefinitions,
    habitInstances,
    shadowProfiles,
    shadowEvents,
  ];
}

typedef $$UsersTableCreateCompanionBuilder =
    UsersCompanion Function({
      required String id,
      Value<String?> name,
      required String nickname,
      required String email,
      required String password,
      Value<String?> bio,
      Value<String?> avatarPath,
      Value<String> gender,
      Value<String?> classe,
      Value<String?> faccao,
      Value<String> estilo,
      Value<String> rank,
      Value<String> classeBaseId,
      Value<String?> classeBranchId,
      Value<double?> height,
      Value<double?> weight,
      Value<int?> birthDate,
      Value<int> level,
      Value<int> xp,
      Value<int> gold,
      Value<int> totalXp,
      Value<int> vitalXp,
      Value<int> penaltyXp,
      Value<int> questsCompleted,
      Value<int> questsFailed,
      Value<int> questsAbandoned,
      Value<int> classLevel,
      Value<int> classXp,
      Value<int> branchLevel,
      Value<int> branchXp,
      Value<int> streakDays,
      Value<double> disciplineMultiplier,
      Value<int> forca,
      Value<int> destreza,
      Value<int> constituicao,
      Value<int> inteligencia,
      Value<int> espirito,
      Value<int> carisma,
      Value<int> bonusForca,
      Value<int> bonusDestreza,
      Value<int> bonusConstituicao,
      Value<int> bonusInteligencia,
      Value<int> bonusEspirito,
      Value<int> bonusCarisma,
      Value<int> totalForca,
      Value<int> totalDestreza,
      Value<int> totalConstituicao,
      Value<int> totalInteligencia,
      Value<int> totalEspirito,
      Value<int> totalCarisma,
      Value<String> passiveTraits,
      Value<String> activeBuffs,
      Value<String> activeDebuffs,
      Value<String> temporalEffects,
      Value<String> equippedSlots,
      Value<bool> isTester,
      Value<bool> isBanned,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$UsersTableUpdateCompanionBuilder =
    UsersCompanion Function({
      Value<String> id,
      Value<String?> name,
      Value<String> nickname,
      Value<String> email,
      Value<String> password,
      Value<String?> bio,
      Value<String?> avatarPath,
      Value<String> gender,
      Value<String?> classe,
      Value<String?> faccao,
      Value<String> estilo,
      Value<String> rank,
      Value<String> classeBaseId,
      Value<String?> classeBranchId,
      Value<double?> height,
      Value<double?> weight,
      Value<int?> birthDate,
      Value<int> level,
      Value<int> xp,
      Value<int> gold,
      Value<int> totalXp,
      Value<int> vitalXp,
      Value<int> penaltyXp,
      Value<int> questsCompleted,
      Value<int> questsFailed,
      Value<int> questsAbandoned,
      Value<int> classLevel,
      Value<int> classXp,
      Value<int> branchLevel,
      Value<int> branchXp,
      Value<int> streakDays,
      Value<double> disciplineMultiplier,
      Value<int> forca,
      Value<int> destreza,
      Value<int> constituicao,
      Value<int> inteligencia,
      Value<int> espirito,
      Value<int> carisma,
      Value<int> bonusForca,
      Value<int> bonusDestreza,
      Value<int> bonusConstituicao,
      Value<int> bonusInteligencia,
      Value<int> bonusEspirito,
      Value<int> bonusCarisma,
      Value<int> totalForca,
      Value<int> totalDestreza,
      Value<int> totalConstituicao,
      Value<int> totalInteligencia,
      Value<int> totalEspirito,
      Value<int> totalCarisma,
      Value<String> passiveTraits,
      Value<String> activeBuffs,
      Value<String> activeDebuffs,
      Value<String> temporalEffects,
      Value<String> equippedSlots,
      Value<bool> isTester,
      Value<bool> isBanned,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

class $$UsersTableFilterComposer extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nickname => $composableBuilder(
    column: $table.nickname,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get password => $composableBuilder(
    column: $table.password,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bio => $composableBuilder(
    column: $table.bio,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get avatarPath => $composableBuilder(
    column: $table.avatarPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get classe => $composableBuilder(
    column: $table.classe,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get faccao => $composableBuilder(
    column: $table.faccao,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get estilo => $composableBuilder(
    column: $table.estilo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get rank => $composableBuilder(
    column: $table.rank,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get classeBaseId => $composableBuilder(
    column: $table.classeBaseId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get classeBranchId => $composableBuilder(
    column: $table.classeBranchId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get height => $composableBuilder(
    column: $table.height,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get birthDate => $composableBuilder(
    column: $table.birthDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get level => $composableBuilder(
    column: $table.level,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get xp => $composableBuilder(
    column: $table.xp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get gold => $composableBuilder(
    column: $table.gold,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalXp => $composableBuilder(
    column: $table.totalXp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get vitalXp => $composableBuilder(
    column: $table.vitalXp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get penaltyXp => $composableBuilder(
    column: $table.penaltyXp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get questsCompleted => $composableBuilder(
    column: $table.questsCompleted,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get questsFailed => $composableBuilder(
    column: $table.questsFailed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get questsAbandoned => $composableBuilder(
    column: $table.questsAbandoned,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get classLevel => $composableBuilder(
    column: $table.classLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get classXp => $composableBuilder(
    column: $table.classXp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get branchLevel => $composableBuilder(
    column: $table.branchLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get branchXp => $composableBuilder(
    column: $table.branchXp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get streakDays => $composableBuilder(
    column: $table.streakDays,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get disciplineMultiplier => $composableBuilder(
    column: $table.disciplineMultiplier,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get forca => $composableBuilder(
    column: $table.forca,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get destreza => $composableBuilder(
    column: $table.destreza,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get constituicao => $composableBuilder(
    column: $table.constituicao,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get inteligencia => $composableBuilder(
    column: $table.inteligencia,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get espirito => $composableBuilder(
    column: $table.espirito,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get carisma => $composableBuilder(
    column: $table.carisma,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get bonusForca => $composableBuilder(
    column: $table.bonusForca,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get bonusDestreza => $composableBuilder(
    column: $table.bonusDestreza,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get bonusConstituicao => $composableBuilder(
    column: $table.bonusConstituicao,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get bonusInteligencia => $composableBuilder(
    column: $table.bonusInteligencia,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get bonusEspirito => $composableBuilder(
    column: $table.bonusEspirito,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get bonusCarisma => $composableBuilder(
    column: $table.bonusCarisma,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalForca => $composableBuilder(
    column: $table.totalForca,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalDestreza => $composableBuilder(
    column: $table.totalDestreza,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalConstituicao => $composableBuilder(
    column: $table.totalConstituicao,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalInteligencia => $composableBuilder(
    column: $table.totalInteligencia,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalEspirito => $composableBuilder(
    column: $table.totalEspirito,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalCarisma => $composableBuilder(
    column: $table.totalCarisma,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get passiveTraits => $composableBuilder(
    column: $table.passiveTraits,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get activeBuffs => $composableBuilder(
    column: $table.activeBuffs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get activeDebuffs => $composableBuilder(
    column: $table.activeDebuffs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get temporalEffects => $composableBuilder(
    column: $table.temporalEffects,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get equippedSlots => $composableBuilder(
    column: $table.equippedSlots,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isTester => $composableBuilder(
    column: $table.isTester,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isBanned => $composableBuilder(
    column: $table.isBanned,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UsersTableOrderingComposer
    extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nickname => $composableBuilder(
    column: $table.nickname,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get password => $composableBuilder(
    column: $table.password,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bio => $composableBuilder(
    column: $table.bio,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get avatarPath => $composableBuilder(
    column: $table.avatarPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get classe => $composableBuilder(
    column: $table.classe,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get faccao => $composableBuilder(
    column: $table.faccao,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get estilo => $composableBuilder(
    column: $table.estilo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get rank => $composableBuilder(
    column: $table.rank,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get classeBaseId => $composableBuilder(
    column: $table.classeBaseId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get classeBranchId => $composableBuilder(
    column: $table.classeBranchId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get height => $composableBuilder(
    column: $table.height,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get birthDate => $composableBuilder(
    column: $table.birthDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get level => $composableBuilder(
    column: $table.level,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get xp => $composableBuilder(
    column: $table.xp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get gold => $composableBuilder(
    column: $table.gold,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalXp => $composableBuilder(
    column: $table.totalXp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get vitalXp => $composableBuilder(
    column: $table.vitalXp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get penaltyXp => $composableBuilder(
    column: $table.penaltyXp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get questsCompleted => $composableBuilder(
    column: $table.questsCompleted,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get questsFailed => $composableBuilder(
    column: $table.questsFailed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get questsAbandoned => $composableBuilder(
    column: $table.questsAbandoned,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get classLevel => $composableBuilder(
    column: $table.classLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get classXp => $composableBuilder(
    column: $table.classXp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get branchLevel => $composableBuilder(
    column: $table.branchLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get branchXp => $composableBuilder(
    column: $table.branchXp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get streakDays => $composableBuilder(
    column: $table.streakDays,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get disciplineMultiplier => $composableBuilder(
    column: $table.disciplineMultiplier,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get forca => $composableBuilder(
    column: $table.forca,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get destreza => $composableBuilder(
    column: $table.destreza,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get constituicao => $composableBuilder(
    column: $table.constituicao,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get inteligencia => $composableBuilder(
    column: $table.inteligencia,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get espirito => $composableBuilder(
    column: $table.espirito,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get carisma => $composableBuilder(
    column: $table.carisma,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get bonusForca => $composableBuilder(
    column: $table.bonusForca,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get bonusDestreza => $composableBuilder(
    column: $table.bonusDestreza,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get bonusConstituicao => $composableBuilder(
    column: $table.bonusConstituicao,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get bonusInteligencia => $composableBuilder(
    column: $table.bonusInteligencia,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get bonusEspirito => $composableBuilder(
    column: $table.bonusEspirito,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get bonusCarisma => $composableBuilder(
    column: $table.bonusCarisma,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalForca => $composableBuilder(
    column: $table.totalForca,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalDestreza => $composableBuilder(
    column: $table.totalDestreza,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalConstituicao => $composableBuilder(
    column: $table.totalConstituicao,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalInteligencia => $composableBuilder(
    column: $table.totalInteligencia,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalEspirito => $composableBuilder(
    column: $table.totalEspirito,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalCarisma => $composableBuilder(
    column: $table.totalCarisma,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get passiveTraits => $composableBuilder(
    column: $table.passiveTraits,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get activeBuffs => $composableBuilder(
    column: $table.activeBuffs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get activeDebuffs => $composableBuilder(
    column: $table.activeDebuffs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get temporalEffects => $composableBuilder(
    column: $table.temporalEffects,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get equippedSlots => $composableBuilder(
    column: $table.equippedSlots,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isTester => $composableBuilder(
    column: $table.isTester,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isBanned => $composableBuilder(
    column: $table.isBanned,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UsersTableAnnotationComposer
    extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get nickname =>
      $composableBuilder(column: $table.nickname, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get password =>
      $composableBuilder(column: $table.password, builder: (column) => column);

  GeneratedColumn<String> get bio =>
      $composableBuilder(column: $table.bio, builder: (column) => column);

  GeneratedColumn<String> get avatarPath => $composableBuilder(
    column: $table.avatarPath,
    builder: (column) => column,
  );

  GeneratedColumn<String> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumn<String> get classe =>
      $composableBuilder(column: $table.classe, builder: (column) => column);

  GeneratedColumn<String> get faccao =>
      $composableBuilder(column: $table.faccao, builder: (column) => column);

  GeneratedColumn<String> get estilo =>
      $composableBuilder(column: $table.estilo, builder: (column) => column);

  GeneratedColumn<String> get rank =>
      $composableBuilder(column: $table.rank, builder: (column) => column);

  GeneratedColumn<String> get classeBaseId => $composableBuilder(
    column: $table.classeBaseId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get classeBranchId => $composableBuilder(
    column: $table.classeBranchId,
    builder: (column) => column,
  );

  GeneratedColumn<double> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  GeneratedColumn<double> get weight =>
      $composableBuilder(column: $table.weight, builder: (column) => column);

  GeneratedColumn<int> get birthDate =>
      $composableBuilder(column: $table.birthDate, builder: (column) => column);

  GeneratedColumn<int> get level =>
      $composableBuilder(column: $table.level, builder: (column) => column);

  GeneratedColumn<int> get xp =>
      $composableBuilder(column: $table.xp, builder: (column) => column);

  GeneratedColumn<int> get gold =>
      $composableBuilder(column: $table.gold, builder: (column) => column);

  GeneratedColumn<int> get totalXp =>
      $composableBuilder(column: $table.totalXp, builder: (column) => column);

  GeneratedColumn<int> get vitalXp =>
      $composableBuilder(column: $table.vitalXp, builder: (column) => column);

  GeneratedColumn<int> get penaltyXp =>
      $composableBuilder(column: $table.penaltyXp, builder: (column) => column);

  GeneratedColumn<int> get questsCompleted => $composableBuilder(
    column: $table.questsCompleted,
    builder: (column) => column,
  );

  GeneratedColumn<int> get questsFailed => $composableBuilder(
    column: $table.questsFailed,
    builder: (column) => column,
  );

  GeneratedColumn<int> get questsAbandoned => $composableBuilder(
    column: $table.questsAbandoned,
    builder: (column) => column,
  );

  GeneratedColumn<int> get classLevel => $composableBuilder(
    column: $table.classLevel,
    builder: (column) => column,
  );

  GeneratedColumn<int> get classXp =>
      $composableBuilder(column: $table.classXp, builder: (column) => column);

  GeneratedColumn<int> get branchLevel => $composableBuilder(
    column: $table.branchLevel,
    builder: (column) => column,
  );

  GeneratedColumn<int> get branchXp =>
      $composableBuilder(column: $table.branchXp, builder: (column) => column);

  GeneratedColumn<int> get streakDays => $composableBuilder(
    column: $table.streakDays,
    builder: (column) => column,
  );

  GeneratedColumn<double> get disciplineMultiplier => $composableBuilder(
    column: $table.disciplineMultiplier,
    builder: (column) => column,
  );

  GeneratedColumn<int> get forca =>
      $composableBuilder(column: $table.forca, builder: (column) => column);

  GeneratedColumn<int> get destreza =>
      $composableBuilder(column: $table.destreza, builder: (column) => column);

  GeneratedColumn<int> get constituicao => $composableBuilder(
    column: $table.constituicao,
    builder: (column) => column,
  );

  GeneratedColumn<int> get inteligencia => $composableBuilder(
    column: $table.inteligencia,
    builder: (column) => column,
  );

  GeneratedColumn<int> get espirito =>
      $composableBuilder(column: $table.espirito, builder: (column) => column);

  GeneratedColumn<int> get carisma =>
      $composableBuilder(column: $table.carisma, builder: (column) => column);

  GeneratedColumn<int> get bonusForca => $composableBuilder(
    column: $table.bonusForca,
    builder: (column) => column,
  );

  GeneratedColumn<int> get bonusDestreza => $composableBuilder(
    column: $table.bonusDestreza,
    builder: (column) => column,
  );

  GeneratedColumn<int> get bonusConstituicao => $composableBuilder(
    column: $table.bonusConstituicao,
    builder: (column) => column,
  );

  GeneratedColumn<int> get bonusInteligencia => $composableBuilder(
    column: $table.bonusInteligencia,
    builder: (column) => column,
  );

  GeneratedColumn<int> get bonusEspirito => $composableBuilder(
    column: $table.bonusEspirito,
    builder: (column) => column,
  );

  GeneratedColumn<int> get bonusCarisma => $composableBuilder(
    column: $table.bonusCarisma,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalForca => $composableBuilder(
    column: $table.totalForca,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalDestreza => $composableBuilder(
    column: $table.totalDestreza,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalConstituicao => $composableBuilder(
    column: $table.totalConstituicao,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalInteligencia => $composableBuilder(
    column: $table.totalInteligencia,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalEspirito => $composableBuilder(
    column: $table.totalEspirito,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalCarisma => $composableBuilder(
    column: $table.totalCarisma,
    builder: (column) => column,
  );

  GeneratedColumn<String> get passiveTraits => $composableBuilder(
    column: $table.passiveTraits,
    builder: (column) => column,
  );

  GeneratedColumn<String> get activeBuffs => $composableBuilder(
    column: $table.activeBuffs,
    builder: (column) => column,
  );

  GeneratedColumn<String> get activeDebuffs => $composableBuilder(
    column: $table.activeDebuffs,
    builder: (column) => column,
  );

  GeneratedColumn<String> get temporalEffects => $composableBuilder(
    column: $table.temporalEffects,
    builder: (column) => column,
  );

  GeneratedColumn<String> get equippedSlots => $composableBuilder(
    column: $table.equippedSlots,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isTester =>
      $composableBuilder(column: $table.isTester, builder: (column) => column);

  GeneratedColumn<bool> get isBanned =>
      $composableBuilder(column: $table.isBanned, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$UsersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UsersTable,
          User,
          $$UsersTableFilterComposer,
          $$UsersTableOrderingComposer,
          $$UsersTableAnnotationComposer,
          $$UsersTableCreateCompanionBuilder,
          $$UsersTableUpdateCompanionBuilder,
          (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
          User,
          PrefetchHooks Function()
        > {
  $$UsersTableTableManager(_$AppDatabase db, $UsersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UsersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UsersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UsersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String?> name = const Value.absent(),
                Value<String> nickname = const Value.absent(),
                Value<String> email = const Value.absent(),
                Value<String> password = const Value.absent(),
                Value<String?> bio = const Value.absent(),
                Value<String?> avatarPath = const Value.absent(),
                Value<String> gender = const Value.absent(),
                Value<String?> classe = const Value.absent(),
                Value<String?> faccao = const Value.absent(),
                Value<String> estilo = const Value.absent(),
                Value<String> rank = const Value.absent(),
                Value<String> classeBaseId = const Value.absent(),
                Value<String?> classeBranchId = const Value.absent(),
                Value<double?> height = const Value.absent(),
                Value<double?> weight = const Value.absent(),
                Value<int?> birthDate = const Value.absent(),
                Value<int> level = const Value.absent(),
                Value<int> xp = const Value.absent(),
                Value<int> gold = const Value.absent(),
                Value<int> totalXp = const Value.absent(),
                Value<int> vitalXp = const Value.absent(),
                Value<int> penaltyXp = const Value.absent(),
                Value<int> questsCompleted = const Value.absent(),
                Value<int> questsFailed = const Value.absent(),
                Value<int> questsAbandoned = const Value.absent(),
                Value<int> classLevel = const Value.absent(),
                Value<int> classXp = const Value.absent(),
                Value<int> branchLevel = const Value.absent(),
                Value<int> branchXp = const Value.absent(),
                Value<int> streakDays = const Value.absent(),
                Value<double> disciplineMultiplier = const Value.absent(),
                Value<int> forca = const Value.absent(),
                Value<int> destreza = const Value.absent(),
                Value<int> constituicao = const Value.absent(),
                Value<int> inteligencia = const Value.absent(),
                Value<int> espirito = const Value.absent(),
                Value<int> carisma = const Value.absent(),
                Value<int> bonusForca = const Value.absent(),
                Value<int> bonusDestreza = const Value.absent(),
                Value<int> bonusConstituicao = const Value.absent(),
                Value<int> bonusInteligencia = const Value.absent(),
                Value<int> bonusEspirito = const Value.absent(),
                Value<int> bonusCarisma = const Value.absent(),
                Value<int> totalForca = const Value.absent(),
                Value<int> totalDestreza = const Value.absent(),
                Value<int> totalConstituicao = const Value.absent(),
                Value<int> totalInteligencia = const Value.absent(),
                Value<int> totalEspirito = const Value.absent(),
                Value<int> totalCarisma = const Value.absent(),
                Value<String> passiveTraits = const Value.absent(),
                Value<String> activeBuffs = const Value.absent(),
                Value<String> activeDebuffs = const Value.absent(),
                Value<String> temporalEffects = const Value.absent(),
                Value<String> equippedSlots = const Value.absent(),
                Value<bool> isTester = const Value.absent(),
                Value<bool> isBanned = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UsersCompanion(
                id: id,
                name: name,
                nickname: nickname,
                email: email,
                password: password,
                bio: bio,
                avatarPath: avatarPath,
                gender: gender,
                classe: classe,
                faccao: faccao,
                estilo: estilo,
                rank: rank,
                classeBaseId: classeBaseId,
                classeBranchId: classeBranchId,
                height: height,
                weight: weight,
                birthDate: birthDate,
                level: level,
                xp: xp,
                gold: gold,
                totalXp: totalXp,
                vitalXp: vitalXp,
                penaltyXp: penaltyXp,
                questsCompleted: questsCompleted,
                questsFailed: questsFailed,
                questsAbandoned: questsAbandoned,
                classLevel: classLevel,
                classXp: classXp,
                branchLevel: branchLevel,
                branchXp: branchXp,
                streakDays: streakDays,
                disciplineMultiplier: disciplineMultiplier,
                forca: forca,
                destreza: destreza,
                constituicao: constituicao,
                inteligencia: inteligencia,
                espirito: espirito,
                carisma: carisma,
                bonusForca: bonusForca,
                bonusDestreza: bonusDestreza,
                bonusConstituicao: bonusConstituicao,
                bonusInteligencia: bonusInteligencia,
                bonusEspirito: bonusEspirito,
                bonusCarisma: bonusCarisma,
                totalForca: totalForca,
                totalDestreza: totalDestreza,
                totalConstituicao: totalConstituicao,
                totalInteligencia: totalInteligencia,
                totalEspirito: totalEspirito,
                totalCarisma: totalCarisma,
                passiveTraits: passiveTraits,
                activeBuffs: activeBuffs,
                activeDebuffs: activeDebuffs,
                temporalEffects: temporalEffects,
                equippedSlots: equippedSlots,
                isTester: isTester,
                isBanned: isBanned,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<String?> name = const Value.absent(),
                required String nickname,
                required String email,
                required String password,
                Value<String?> bio = const Value.absent(),
                Value<String?> avatarPath = const Value.absent(),
                Value<String> gender = const Value.absent(),
                Value<String?> classe = const Value.absent(),
                Value<String?> faccao = const Value.absent(),
                Value<String> estilo = const Value.absent(),
                Value<String> rank = const Value.absent(),
                Value<String> classeBaseId = const Value.absent(),
                Value<String?> classeBranchId = const Value.absent(),
                Value<double?> height = const Value.absent(),
                Value<double?> weight = const Value.absent(),
                Value<int?> birthDate = const Value.absent(),
                Value<int> level = const Value.absent(),
                Value<int> xp = const Value.absent(),
                Value<int> gold = const Value.absent(),
                Value<int> totalXp = const Value.absent(),
                Value<int> vitalXp = const Value.absent(),
                Value<int> penaltyXp = const Value.absent(),
                Value<int> questsCompleted = const Value.absent(),
                Value<int> questsFailed = const Value.absent(),
                Value<int> questsAbandoned = const Value.absent(),
                Value<int> classLevel = const Value.absent(),
                Value<int> classXp = const Value.absent(),
                Value<int> branchLevel = const Value.absent(),
                Value<int> branchXp = const Value.absent(),
                Value<int> streakDays = const Value.absent(),
                Value<double> disciplineMultiplier = const Value.absent(),
                Value<int> forca = const Value.absent(),
                Value<int> destreza = const Value.absent(),
                Value<int> constituicao = const Value.absent(),
                Value<int> inteligencia = const Value.absent(),
                Value<int> espirito = const Value.absent(),
                Value<int> carisma = const Value.absent(),
                Value<int> bonusForca = const Value.absent(),
                Value<int> bonusDestreza = const Value.absent(),
                Value<int> bonusConstituicao = const Value.absent(),
                Value<int> bonusInteligencia = const Value.absent(),
                Value<int> bonusEspirito = const Value.absent(),
                Value<int> bonusCarisma = const Value.absent(),
                Value<int> totalForca = const Value.absent(),
                Value<int> totalDestreza = const Value.absent(),
                Value<int> totalConstituicao = const Value.absent(),
                Value<int> totalInteligencia = const Value.absent(),
                Value<int> totalEspirito = const Value.absent(),
                Value<int> totalCarisma = const Value.absent(),
                Value<String> passiveTraits = const Value.absent(),
                Value<String> activeBuffs = const Value.absent(),
                Value<String> activeDebuffs = const Value.absent(),
                Value<String> temporalEffects = const Value.absent(),
                Value<String> equippedSlots = const Value.absent(),
                Value<bool> isTester = const Value.absent(),
                Value<bool> isBanned = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UsersCompanion.insert(
                id: id,
                name: name,
                nickname: nickname,
                email: email,
                password: password,
                bio: bio,
                avatarPath: avatarPath,
                gender: gender,
                classe: classe,
                faccao: faccao,
                estilo: estilo,
                rank: rank,
                classeBaseId: classeBaseId,
                classeBranchId: classeBranchId,
                height: height,
                weight: weight,
                birthDate: birthDate,
                level: level,
                xp: xp,
                gold: gold,
                totalXp: totalXp,
                vitalXp: vitalXp,
                penaltyXp: penaltyXp,
                questsCompleted: questsCompleted,
                questsFailed: questsFailed,
                questsAbandoned: questsAbandoned,
                classLevel: classLevel,
                classXp: classXp,
                branchLevel: branchLevel,
                branchXp: branchXp,
                streakDays: streakDays,
                disciplineMultiplier: disciplineMultiplier,
                forca: forca,
                destreza: destreza,
                constituicao: constituicao,
                inteligencia: inteligencia,
                espirito: espirito,
                carisma: carisma,
                bonusForca: bonusForca,
                bonusDestreza: bonusDestreza,
                bonusConstituicao: bonusConstituicao,
                bonusInteligencia: bonusInteligencia,
                bonusEspirito: bonusEspirito,
                bonusCarisma: bonusCarisma,
                totalForca: totalForca,
                totalDestreza: totalDestreza,
                totalConstituicao: totalConstituicao,
                totalInteligencia: totalInteligencia,
                totalEspirito: totalEspirito,
                totalCarisma: totalCarisma,
                passiveTraits: passiveTraits,
                activeBuffs: activeBuffs,
                activeDebuffs: activeDebuffs,
                temporalEffects: temporalEffects,
                equippedSlots: equippedSlots,
                isTester: isTester,
                isBanned: isBanned,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UsersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UsersTable,
      User,
      $$UsersTableFilterComposer,
      $$UsersTableOrderingComposer,
      $$UsersTableAnnotationComposer,
      $$UsersTableCreateCompanionBuilder,
      $$UsersTableUpdateCompanionBuilder,
      (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
      User,
      PrefetchHooks Function()
    >;
typedef $$QuestTemplatesTableCreateCompanionBuilder =
    QuestTemplatesCompanion Function({
      required String id,
      required String title,
      Value<String?> subtitle,
      required String description,
      required String origin,
      Value<String?> createdByUserId,
      Value<bool> isEditable,
      Value<bool> isDeletable,
      Value<bool> isUserScoped,
      required String type,
      Value<String> categoriesJson,
      Value<String> difficulty,
      Value<String?> rank,
      Value<String?> requiredPlayerRank,
      Value<int?> requiredLevel,
      Value<String> requiredClassIdsJson,
      Value<String> requiredFactionIdsJson,
      Value<String> prerequisiteQuestIdsJson,
      Value<int> baseXpReward,
      Value<int> vitalXpReward,
      Value<int> penaltyXpOnFail,
      Value<int> goldReward,
      Value<String> itemRewardIdsJson,
      Value<String> attributeRewardsJson,
      Value<double?> itemDropChance,
      Value<String> possibleItemDropsJson,
      Value<bool> isDaily,
      Value<bool> isRepeatable,
      Value<int?> maxDailyCompletions,
      Value<DateTime?> availableFrom,
      Value<DateTime?> availableUntil,
      Value<bool> isCoop,
      Value<int?> minPartySize,
      Value<int?> maxPartySize,
      Value<String> trackingType,
      Value<String> trackingUnit,
      Value<int> defaultTargetProgress,
      Value<bool> autoCompleteFromApp,
      Value<String?> autoCompleteEventKey,
      Value<String> linkedContentType,
      Value<String?> linkedContentId,
      Value<String> trackingMetaJson,
      Value<String> stepsJson,
      Value<String> metaJson,
      Value<bool> autoRewardBySystem,
      Value<int> rowid,
    });
typedef $$QuestTemplatesTableUpdateCompanionBuilder =
    QuestTemplatesCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<String?> subtitle,
      Value<String> description,
      Value<String> origin,
      Value<String?> createdByUserId,
      Value<bool> isEditable,
      Value<bool> isDeletable,
      Value<bool> isUserScoped,
      Value<String> type,
      Value<String> categoriesJson,
      Value<String> difficulty,
      Value<String?> rank,
      Value<String?> requiredPlayerRank,
      Value<int?> requiredLevel,
      Value<String> requiredClassIdsJson,
      Value<String> requiredFactionIdsJson,
      Value<String> prerequisiteQuestIdsJson,
      Value<int> baseXpReward,
      Value<int> vitalXpReward,
      Value<int> penaltyXpOnFail,
      Value<int> goldReward,
      Value<String> itemRewardIdsJson,
      Value<String> attributeRewardsJson,
      Value<double?> itemDropChance,
      Value<String> possibleItemDropsJson,
      Value<bool> isDaily,
      Value<bool> isRepeatable,
      Value<int?> maxDailyCompletions,
      Value<DateTime?> availableFrom,
      Value<DateTime?> availableUntil,
      Value<bool> isCoop,
      Value<int?> minPartySize,
      Value<int?> maxPartySize,
      Value<String> trackingType,
      Value<String> trackingUnit,
      Value<int> defaultTargetProgress,
      Value<bool> autoCompleteFromApp,
      Value<String?> autoCompleteEventKey,
      Value<String> linkedContentType,
      Value<String?> linkedContentId,
      Value<String> trackingMetaJson,
      Value<String> stepsJson,
      Value<String> metaJson,
      Value<bool> autoRewardBySystem,
      Value<int> rowid,
    });

class $$QuestTemplatesTableFilterComposer
    extends Composer<_$AppDatabase, $QuestTemplatesTable> {
  $$QuestTemplatesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get subtitle => $composableBuilder(
    column: $table.subtitle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get origin => $composableBuilder(
    column: $table.origin,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get createdByUserId => $composableBuilder(
    column: $table.createdByUserId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isEditable => $composableBuilder(
    column: $table.isEditable,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDeletable => $composableBuilder(
    column: $table.isDeletable,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isUserScoped => $composableBuilder(
    column: $table.isUserScoped,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get categoriesJson => $composableBuilder(
    column: $table.categoriesJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get difficulty => $composableBuilder(
    column: $table.difficulty,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get rank => $composableBuilder(
    column: $table.rank,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get requiredPlayerRank => $composableBuilder(
    column: $table.requiredPlayerRank,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get requiredLevel => $composableBuilder(
    column: $table.requiredLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get requiredClassIdsJson => $composableBuilder(
    column: $table.requiredClassIdsJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get requiredFactionIdsJson => $composableBuilder(
    column: $table.requiredFactionIdsJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get prerequisiteQuestIdsJson => $composableBuilder(
    column: $table.prerequisiteQuestIdsJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get baseXpReward => $composableBuilder(
    column: $table.baseXpReward,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get vitalXpReward => $composableBuilder(
    column: $table.vitalXpReward,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get penaltyXpOnFail => $composableBuilder(
    column: $table.penaltyXpOnFail,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get goldReward => $composableBuilder(
    column: $table.goldReward,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get itemRewardIdsJson => $composableBuilder(
    column: $table.itemRewardIdsJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get attributeRewardsJson => $composableBuilder(
    column: $table.attributeRewardsJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get itemDropChance => $composableBuilder(
    column: $table.itemDropChance,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get possibleItemDropsJson => $composableBuilder(
    column: $table.possibleItemDropsJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDaily => $composableBuilder(
    column: $table.isDaily,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isRepeatable => $composableBuilder(
    column: $table.isRepeatable,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get maxDailyCompletions => $composableBuilder(
    column: $table.maxDailyCompletions,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get availableFrom => $composableBuilder(
    column: $table.availableFrom,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get availableUntil => $composableBuilder(
    column: $table.availableUntil,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isCoop => $composableBuilder(
    column: $table.isCoop,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minPartySize => $composableBuilder(
    column: $table.minPartySize,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get maxPartySize => $composableBuilder(
    column: $table.maxPartySize,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get trackingType => $composableBuilder(
    column: $table.trackingType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get trackingUnit => $composableBuilder(
    column: $table.trackingUnit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get defaultTargetProgress => $composableBuilder(
    column: $table.defaultTargetProgress,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get autoCompleteFromApp => $composableBuilder(
    column: $table.autoCompleteFromApp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get autoCompleteEventKey => $composableBuilder(
    column: $table.autoCompleteEventKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get linkedContentType => $composableBuilder(
    column: $table.linkedContentType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get linkedContentId => $composableBuilder(
    column: $table.linkedContentId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get trackingMetaJson => $composableBuilder(
    column: $table.trackingMetaJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get stepsJson => $composableBuilder(
    column: $table.stepsJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get metaJson => $composableBuilder(
    column: $table.metaJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get autoRewardBySystem => $composableBuilder(
    column: $table.autoRewardBySystem,
    builder: (column) => ColumnFilters(column),
  );
}

class $$QuestTemplatesTableOrderingComposer
    extends Composer<_$AppDatabase, $QuestTemplatesTable> {
  $$QuestTemplatesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get subtitle => $composableBuilder(
    column: $table.subtitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get origin => $composableBuilder(
    column: $table.origin,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get createdByUserId => $composableBuilder(
    column: $table.createdByUserId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isEditable => $composableBuilder(
    column: $table.isEditable,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDeletable => $composableBuilder(
    column: $table.isDeletable,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isUserScoped => $composableBuilder(
    column: $table.isUserScoped,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get categoriesJson => $composableBuilder(
    column: $table.categoriesJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get difficulty => $composableBuilder(
    column: $table.difficulty,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get rank => $composableBuilder(
    column: $table.rank,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get requiredPlayerRank => $composableBuilder(
    column: $table.requiredPlayerRank,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get requiredLevel => $composableBuilder(
    column: $table.requiredLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get requiredClassIdsJson => $composableBuilder(
    column: $table.requiredClassIdsJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get requiredFactionIdsJson => $composableBuilder(
    column: $table.requiredFactionIdsJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get prerequisiteQuestIdsJson => $composableBuilder(
    column: $table.prerequisiteQuestIdsJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get baseXpReward => $composableBuilder(
    column: $table.baseXpReward,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get vitalXpReward => $composableBuilder(
    column: $table.vitalXpReward,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get penaltyXpOnFail => $composableBuilder(
    column: $table.penaltyXpOnFail,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get goldReward => $composableBuilder(
    column: $table.goldReward,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get itemRewardIdsJson => $composableBuilder(
    column: $table.itemRewardIdsJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get attributeRewardsJson => $composableBuilder(
    column: $table.attributeRewardsJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get itemDropChance => $composableBuilder(
    column: $table.itemDropChance,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get possibleItemDropsJson => $composableBuilder(
    column: $table.possibleItemDropsJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDaily => $composableBuilder(
    column: $table.isDaily,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isRepeatable => $composableBuilder(
    column: $table.isRepeatable,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get maxDailyCompletions => $composableBuilder(
    column: $table.maxDailyCompletions,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get availableFrom => $composableBuilder(
    column: $table.availableFrom,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get availableUntil => $composableBuilder(
    column: $table.availableUntil,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isCoop => $composableBuilder(
    column: $table.isCoop,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minPartySize => $composableBuilder(
    column: $table.minPartySize,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get maxPartySize => $composableBuilder(
    column: $table.maxPartySize,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get trackingType => $composableBuilder(
    column: $table.trackingType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get trackingUnit => $composableBuilder(
    column: $table.trackingUnit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get defaultTargetProgress => $composableBuilder(
    column: $table.defaultTargetProgress,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get autoCompleteFromApp => $composableBuilder(
    column: $table.autoCompleteFromApp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get autoCompleteEventKey => $composableBuilder(
    column: $table.autoCompleteEventKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get linkedContentType => $composableBuilder(
    column: $table.linkedContentType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get linkedContentId => $composableBuilder(
    column: $table.linkedContentId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get trackingMetaJson => $composableBuilder(
    column: $table.trackingMetaJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get stepsJson => $composableBuilder(
    column: $table.stepsJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get metaJson => $composableBuilder(
    column: $table.metaJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get autoRewardBySystem => $composableBuilder(
    column: $table.autoRewardBySystem,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$QuestTemplatesTableAnnotationComposer
    extends Composer<_$AppDatabase, $QuestTemplatesTable> {
  $$QuestTemplatesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get subtitle =>
      $composableBuilder(column: $table.subtitle, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get origin =>
      $composableBuilder(column: $table.origin, builder: (column) => column);

  GeneratedColumn<String> get createdByUserId => $composableBuilder(
    column: $table.createdByUserId,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isEditable => $composableBuilder(
    column: $table.isEditable,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isDeletable => $composableBuilder(
    column: $table.isDeletable,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isUserScoped => $composableBuilder(
    column: $table.isUserScoped,
    builder: (column) => column,
  );

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get categoriesJson => $composableBuilder(
    column: $table.categoriesJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get difficulty => $composableBuilder(
    column: $table.difficulty,
    builder: (column) => column,
  );

  GeneratedColumn<String> get rank =>
      $composableBuilder(column: $table.rank, builder: (column) => column);

  GeneratedColumn<String> get requiredPlayerRank => $composableBuilder(
    column: $table.requiredPlayerRank,
    builder: (column) => column,
  );

  GeneratedColumn<int> get requiredLevel => $composableBuilder(
    column: $table.requiredLevel,
    builder: (column) => column,
  );

  GeneratedColumn<String> get requiredClassIdsJson => $composableBuilder(
    column: $table.requiredClassIdsJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get requiredFactionIdsJson => $composableBuilder(
    column: $table.requiredFactionIdsJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get prerequisiteQuestIdsJson => $composableBuilder(
    column: $table.prerequisiteQuestIdsJson,
    builder: (column) => column,
  );

  GeneratedColumn<int> get baseXpReward => $composableBuilder(
    column: $table.baseXpReward,
    builder: (column) => column,
  );

  GeneratedColumn<int> get vitalXpReward => $composableBuilder(
    column: $table.vitalXpReward,
    builder: (column) => column,
  );

  GeneratedColumn<int> get penaltyXpOnFail => $composableBuilder(
    column: $table.penaltyXpOnFail,
    builder: (column) => column,
  );

  GeneratedColumn<int> get goldReward => $composableBuilder(
    column: $table.goldReward,
    builder: (column) => column,
  );

  GeneratedColumn<String> get itemRewardIdsJson => $composableBuilder(
    column: $table.itemRewardIdsJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get attributeRewardsJson => $composableBuilder(
    column: $table.attributeRewardsJson,
    builder: (column) => column,
  );

  GeneratedColumn<double> get itemDropChance => $composableBuilder(
    column: $table.itemDropChance,
    builder: (column) => column,
  );

  GeneratedColumn<String> get possibleItemDropsJson => $composableBuilder(
    column: $table.possibleItemDropsJson,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isDaily =>
      $composableBuilder(column: $table.isDaily, builder: (column) => column);

  GeneratedColumn<bool> get isRepeatable => $composableBuilder(
    column: $table.isRepeatable,
    builder: (column) => column,
  );

  GeneratedColumn<int> get maxDailyCompletions => $composableBuilder(
    column: $table.maxDailyCompletions,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get availableFrom => $composableBuilder(
    column: $table.availableFrom,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get availableUntil => $composableBuilder(
    column: $table.availableUntil,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isCoop =>
      $composableBuilder(column: $table.isCoop, builder: (column) => column);

  GeneratedColumn<int> get minPartySize => $composableBuilder(
    column: $table.minPartySize,
    builder: (column) => column,
  );

  GeneratedColumn<int> get maxPartySize => $composableBuilder(
    column: $table.maxPartySize,
    builder: (column) => column,
  );

  GeneratedColumn<String> get trackingType => $composableBuilder(
    column: $table.trackingType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get trackingUnit => $composableBuilder(
    column: $table.trackingUnit,
    builder: (column) => column,
  );

  GeneratedColumn<int> get defaultTargetProgress => $composableBuilder(
    column: $table.defaultTargetProgress,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get autoCompleteFromApp => $composableBuilder(
    column: $table.autoCompleteFromApp,
    builder: (column) => column,
  );

  GeneratedColumn<String> get autoCompleteEventKey => $composableBuilder(
    column: $table.autoCompleteEventKey,
    builder: (column) => column,
  );

  GeneratedColumn<String> get linkedContentType => $composableBuilder(
    column: $table.linkedContentType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get linkedContentId => $composableBuilder(
    column: $table.linkedContentId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get trackingMetaJson => $composableBuilder(
    column: $table.trackingMetaJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get stepsJson =>
      $composableBuilder(column: $table.stepsJson, builder: (column) => column);

  GeneratedColumn<String> get metaJson =>
      $composableBuilder(column: $table.metaJson, builder: (column) => column);

  GeneratedColumn<bool> get autoRewardBySystem => $composableBuilder(
    column: $table.autoRewardBySystem,
    builder: (column) => column,
  );
}

class $$QuestTemplatesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $QuestTemplatesTable,
          QuestTemplate,
          $$QuestTemplatesTableFilterComposer,
          $$QuestTemplatesTableOrderingComposer,
          $$QuestTemplatesTableAnnotationComposer,
          $$QuestTemplatesTableCreateCompanionBuilder,
          $$QuestTemplatesTableUpdateCompanionBuilder,
          (
            QuestTemplate,
            BaseReferences<_$AppDatabase, $QuestTemplatesTable, QuestTemplate>,
          ),
          QuestTemplate,
          PrefetchHooks Function()
        > {
  $$QuestTemplatesTableTableManager(
    _$AppDatabase db,
    $QuestTemplatesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$QuestTemplatesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$QuestTemplatesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$QuestTemplatesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String?> subtitle = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> origin = const Value.absent(),
                Value<String?> createdByUserId = const Value.absent(),
                Value<bool> isEditable = const Value.absent(),
                Value<bool> isDeletable = const Value.absent(),
                Value<bool> isUserScoped = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> categoriesJson = const Value.absent(),
                Value<String> difficulty = const Value.absent(),
                Value<String?> rank = const Value.absent(),
                Value<String?> requiredPlayerRank = const Value.absent(),
                Value<int?> requiredLevel = const Value.absent(),
                Value<String> requiredClassIdsJson = const Value.absent(),
                Value<String> requiredFactionIdsJson = const Value.absent(),
                Value<String> prerequisiteQuestIdsJson = const Value.absent(),
                Value<int> baseXpReward = const Value.absent(),
                Value<int> vitalXpReward = const Value.absent(),
                Value<int> penaltyXpOnFail = const Value.absent(),
                Value<int> goldReward = const Value.absent(),
                Value<String> itemRewardIdsJson = const Value.absent(),
                Value<String> attributeRewardsJson = const Value.absent(),
                Value<double?> itemDropChance = const Value.absent(),
                Value<String> possibleItemDropsJson = const Value.absent(),
                Value<bool> isDaily = const Value.absent(),
                Value<bool> isRepeatable = const Value.absent(),
                Value<int?> maxDailyCompletions = const Value.absent(),
                Value<DateTime?> availableFrom = const Value.absent(),
                Value<DateTime?> availableUntil = const Value.absent(),
                Value<bool> isCoop = const Value.absent(),
                Value<int?> minPartySize = const Value.absent(),
                Value<int?> maxPartySize = const Value.absent(),
                Value<String> trackingType = const Value.absent(),
                Value<String> trackingUnit = const Value.absent(),
                Value<int> defaultTargetProgress = const Value.absent(),
                Value<bool> autoCompleteFromApp = const Value.absent(),
                Value<String?> autoCompleteEventKey = const Value.absent(),
                Value<String> linkedContentType = const Value.absent(),
                Value<String?> linkedContentId = const Value.absent(),
                Value<String> trackingMetaJson = const Value.absent(),
                Value<String> stepsJson = const Value.absent(),
                Value<String> metaJson = const Value.absent(),
                Value<bool> autoRewardBySystem = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => QuestTemplatesCompanion(
                id: id,
                title: title,
                subtitle: subtitle,
                description: description,
                origin: origin,
                createdByUserId: createdByUserId,
                isEditable: isEditable,
                isDeletable: isDeletable,
                isUserScoped: isUserScoped,
                type: type,
                categoriesJson: categoriesJson,
                difficulty: difficulty,
                rank: rank,
                requiredPlayerRank: requiredPlayerRank,
                requiredLevel: requiredLevel,
                requiredClassIdsJson: requiredClassIdsJson,
                requiredFactionIdsJson: requiredFactionIdsJson,
                prerequisiteQuestIdsJson: prerequisiteQuestIdsJson,
                baseXpReward: baseXpReward,
                vitalXpReward: vitalXpReward,
                penaltyXpOnFail: penaltyXpOnFail,
                goldReward: goldReward,
                itemRewardIdsJson: itemRewardIdsJson,
                attributeRewardsJson: attributeRewardsJson,
                itemDropChance: itemDropChance,
                possibleItemDropsJson: possibleItemDropsJson,
                isDaily: isDaily,
                isRepeatable: isRepeatable,
                maxDailyCompletions: maxDailyCompletions,
                availableFrom: availableFrom,
                availableUntil: availableUntil,
                isCoop: isCoop,
                minPartySize: minPartySize,
                maxPartySize: maxPartySize,
                trackingType: trackingType,
                trackingUnit: trackingUnit,
                defaultTargetProgress: defaultTargetProgress,
                autoCompleteFromApp: autoCompleteFromApp,
                autoCompleteEventKey: autoCompleteEventKey,
                linkedContentType: linkedContentType,
                linkedContentId: linkedContentId,
                trackingMetaJson: trackingMetaJson,
                stepsJson: stepsJson,
                metaJson: metaJson,
                autoRewardBySystem: autoRewardBySystem,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                Value<String?> subtitle = const Value.absent(),
                required String description,
                required String origin,
                Value<String?> createdByUserId = const Value.absent(),
                Value<bool> isEditable = const Value.absent(),
                Value<bool> isDeletable = const Value.absent(),
                Value<bool> isUserScoped = const Value.absent(),
                required String type,
                Value<String> categoriesJson = const Value.absent(),
                Value<String> difficulty = const Value.absent(),
                Value<String?> rank = const Value.absent(),
                Value<String?> requiredPlayerRank = const Value.absent(),
                Value<int?> requiredLevel = const Value.absent(),
                Value<String> requiredClassIdsJson = const Value.absent(),
                Value<String> requiredFactionIdsJson = const Value.absent(),
                Value<String> prerequisiteQuestIdsJson = const Value.absent(),
                Value<int> baseXpReward = const Value.absent(),
                Value<int> vitalXpReward = const Value.absent(),
                Value<int> penaltyXpOnFail = const Value.absent(),
                Value<int> goldReward = const Value.absent(),
                Value<String> itemRewardIdsJson = const Value.absent(),
                Value<String> attributeRewardsJson = const Value.absent(),
                Value<double?> itemDropChance = const Value.absent(),
                Value<String> possibleItemDropsJson = const Value.absent(),
                Value<bool> isDaily = const Value.absent(),
                Value<bool> isRepeatable = const Value.absent(),
                Value<int?> maxDailyCompletions = const Value.absent(),
                Value<DateTime?> availableFrom = const Value.absent(),
                Value<DateTime?> availableUntil = const Value.absent(),
                Value<bool> isCoop = const Value.absent(),
                Value<int?> minPartySize = const Value.absent(),
                Value<int?> maxPartySize = const Value.absent(),
                Value<String> trackingType = const Value.absent(),
                Value<String> trackingUnit = const Value.absent(),
                Value<int> defaultTargetProgress = const Value.absent(),
                Value<bool> autoCompleteFromApp = const Value.absent(),
                Value<String?> autoCompleteEventKey = const Value.absent(),
                Value<String> linkedContentType = const Value.absent(),
                Value<String?> linkedContentId = const Value.absent(),
                Value<String> trackingMetaJson = const Value.absent(),
                Value<String> stepsJson = const Value.absent(),
                Value<String> metaJson = const Value.absent(),
                Value<bool> autoRewardBySystem = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => QuestTemplatesCompanion.insert(
                id: id,
                title: title,
                subtitle: subtitle,
                description: description,
                origin: origin,
                createdByUserId: createdByUserId,
                isEditable: isEditable,
                isDeletable: isDeletable,
                isUserScoped: isUserScoped,
                type: type,
                categoriesJson: categoriesJson,
                difficulty: difficulty,
                rank: rank,
                requiredPlayerRank: requiredPlayerRank,
                requiredLevel: requiredLevel,
                requiredClassIdsJson: requiredClassIdsJson,
                requiredFactionIdsJson: requiredFactionIdsJson,
                prerequisiteQuestIdsJson: prerequisiteQuestIdsJson,
                baseXpReward: baseXpReward,
                vitalXpReward: vitalXpReward,
                penaltyXpOnFail: penaltyXpOnFail,
                goldReward: goldReward,
                itemRewardIdsJson: itemRewardIdsJson,
                attributeRewardsJson: attributeRewardsJson,
                itemDropChance: itemDropChance,
                possibleItemDropsJson: possibleItemDropsJson,
                isDaily: isDaily,
                isRepeatable: isRepeatable,
                maxDailyCompletions: maxDailyCompletions,
                availableFrom: availableFrom,
                availableUntil: availableUntil,
                isCoop: isCoop,
                minPartySize: minPartySize,
                maxPartySize: maxPartySize,
                trackingType: trackingType,
                trackingUnit: trackingUnit,
                defaultTargetProgress: defaultTargetProgress,
                autoCompleteFromApp: autoCompleteFromApp,
                autoCompleteEventKey: autoCompleteEventKey,
                linkedContentType: linkedContentType,
                linkedContentId: linkedContentId,
                trackingMetaJson: trackingMetaJson,
                stepsJson: stepsJson,
                metaJson: metaJson,
                autoRewardBySystem: autoRewardBySystem,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$QuestTemplatesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $QuestTemplatesTable,
      QuestTemplate,
      $$QuestTemplatesTableFilterComposer,
      $$QuestTemplatesTableOrderingComposer,
      $$QuestTemplatesTableAnnotationComposer,
      $$QuestTemplatesTableCreateCompanionBuilder,
      $$QuestTemplatesTableUpdateCompanionBuilder,
      (
        QuestTemplate,
        BaseReferences<_$AppDatabase, $QuestTemplatesTable, QuestTemplate>,
      ),
      QuestTemplate,
      PrefetchHooks Function()
    >;
typedef $$QuestInstancesTableCreateCompanionBuilder =
    QuestInstancesCompanion Function({
      required String id,
      required String userId,
      required String questId,
      Value<String> status,
      Value<bool> isCustomUserQuest,
      Value<int?> userCustomSlotIndex,
      Value<String> userCustomConfigJson,
      Value<int> currentProgress,
      Value<int> targetProgress,
      Value<int?> streakDayRef,
      Value<DateTime> createdAt,
      Value<DateTime?> startedAt,
      Value<DateTime?> completedAt,
      Value<DateTime?> failedAt,
      Value<DateTime?> expiresAt,
      Value<DateTime?> lastUpdatedAt,
      Value<int> timesCompleted,
      Value<String> stepProgressJson,
      Value<String> completedStepIdsJson,
      Value<String> resultMetaJson,
      Value<int> rowid,
    });
typedef $$QuestInstancesTableUpdateCompanionBuilder =
    QuestInstancesCompanion Function({
      Value<String> id,
      Value<String> userId,
      Value<String> questId,
      Value<String> status,
      Value<bool> isCustomUserQuest,
      Value<int?> userCustomSlotIndex,
      Value<String> userCustomConfigJson,
      Value<int> currentProgress,
      Value<int> targetProgress,
      Value<int?> streakDayRef,
      Value<DateTime> createdAt,
      Value<DateTime?> startedAt,
      Value<DateTime?> completedAt,
      Value<DateTime?> failedAt,
      Value<DateTime?> expiresAt,
      Value<DateTime?> lastUpdatedAt,
      Value<int> timesCompleted,
      Value<String> stepProgressJson,
      Value<String> completedStepIdsJson,
      Value<String> resultMetaJson,
      Value<int> rowid,
    });

final class $$QuestInstancesTableReferences
    extends BaseReferences<_$AppDatabase, $QuestInstancesTable, QuestInstance> {
  $$QuestInstancesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$QuestLogsTable, List<QuestLog>>
  _questLogsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.questLogs,
    aliasName: $_aliasNameGenerator(
      db.questInstances.id,
      db.questLogs.questInstanceId,
    ),
  );

  $$QuestLogsTableProcessedTableManager get questLogsRefs {
    final manager = $$QuestLogsTableTableManager($_db, $_db.questLogs).filter(
      (f) => f.questInstanceId.id.sqlEquals($_itemColumn<String>('id')!),
    );

    final cache = $_typedResult.readTableOrNull(_questLogsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$QuestInstancesTableFilterComposer
    extends Composer<_$AppDatabase, $QuestInstancesTable> {
  $$QuestInstancesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get questId => $composableBuilder(
    column: $table.questId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isCustomUserQuest => $composableBuilder(
    column: $table.isCustomUserQuest,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get userCustomSlotIndex => $composableBuilder(
    column: $table.userCustomSlotIndex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userCustomConfigJson => $composableBuilder(
    column: $table.userCustomConfigJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get currentProgress => $composableBuilder(
    column: $table.currentProgress,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get targetProgress => $composableBuilder(
    column: $table.targetProgress,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get streakDayRef => $composableBuilder(
    column: $table.streakDayRef,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startedAt => $composableBuilder(
    column: $table.startedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get failedAt => $composableBuilder(
    column: $table.failedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get expiresAt => $composableBuilder(
    column: $table.expiresAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastUpdatedAt => $composableBuilder(
    column: $table.lastUpdatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get timesCompleted => $composableBuilder(
    column: $table.timesCompleted,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get stepProgressJson => $composableBuilder(
    column: $table.stepProgressJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get completedStepIdsJson => $composableBuilder(
    column: $table.completedStepIdsJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get resultMetaJson => $composableBuilder(
    column: $table.resultMetaJson,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> questLogsRefs(
    Expression<bool> Function($$QuestLogsTableFilterComposer f) f,
  ) {
    final $$QuestLogsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.questLogs,
      getReferencedColumn: (t) => t.questInstanceId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$QuestLogsTableFilterComposer(
            $db: $db,
            $table: $db.questLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$QuestInstancesTableOrderingComposer
    extends Composer<_$AppDatabase, $QuestInstancesTable> {
  $$QuestInstancesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get questId => $composableBuilder(
    column: $table.questId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isCustomUserQuest => $composableBuilder(
    column: $table.isCustomUserQuest,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get userCustomSlotIndex => $composableBuilder(
    column: $table.userCustomSlotIndex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userCustomConfigJson => $composableBuilder(
    column: $table.userCustomConfigJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get currentProgress => $composableBuilder(
    column: $table.currentProgress,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get targetProgress => $composableBuilder(
    column: $table.targetProgress,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get streakDayRef => $composableBuilder(
    column: $table.streakDayRef,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startedAt => $composableBuilder(
    column: $table.startedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get failedAt => $composableBuilder(
    column: $table.failedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get expiresAt => $composableBuilder(
    column: $table.expiresAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastUpdatedAt => $composableBuilder(
    column: $table.lastUpdatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get timesCompleted => $composableBuilder(
    column: $table.timesCompleted,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get stepProgressJson => $composableBuilder(
    column: $table.stepProgressJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get completedStepIdsJson => $composableBuilder(
    column: $table.completedStepIdsJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get resultMetaJson => $composableBuilder(
    column: $table.resultMetaJson,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$QuestInstancesTableAnnotationComposer
    extends Composer<_$AppDatabase, $QuestInstancesTable> {
  $$QuestInstancesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get questId =>
      $composableBuilder(column: $table.questId, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<bool> get isCustomUserQuest => $composableBuilder(
    column: $table.isCustomUserQuest,
    builder: (column) => column,
  );

  GeneratedColumn<int> get userCustomSlotIndex => $composableBuilder(
    column: $table.userCustomSlotIndex,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userCustomConfigJson => $composableBuilder(
    column: $table.userCustomConfigJson,
    builder: (column) => column,
  );

  GeneratedColumn<int> get currentProgress => $composableBuilder(
    column: $table.currentProgress,
    builder: (column) => column,
  );

  GeneratedColumn<int> get targetProgress => $composableBuilder(
    column: $table.targetProgress,
    builder: (column) => column,
  );

  GeneratedColumn<int> get streakDayRef => $composableBuilder(
    column: $table.streakDayRef,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get startedAt =>
      $composableBuilder(column: $table.startedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get failedAt =>
      $composableBuilder(column: $table.failedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get expiresAt =>
      $composableBuilder(column: $table.expiresAt, builder: (column) => column);

  GeneratedColumn<DateTime> get lastUpdatedAt => $composableBuilder(
    column: $table.lastUpdatedAt,
    builder: (column) => column,
  );

  GeneratedColumn<int> get timesCompleted => $composableBuilder(
    column: $table.timesCompleted,
    builder: (column) => column,
  );

  GeneratedColumn<String> get stepProgressJson => $composableBuilder(
    column: $table.stepProgressJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get completedStepIdsJson => $composableBuilder(
    column: $table.completedStepIdsJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get resultMetaJson => $composableBuilder(
    column: $table.resultMetaJson,
    builder: (column) => column,
  );

  Expression<T> questLogsRefs<T extends Object>(
    Expression<T> Function($$QuestLogsTableAnnotationComposer a) f,
  ) {
    final $$QuestLogsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.questLogs,
      getReferencedColumn: (t) => t.questInstanceId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$QuestLogsTableAnnotationComposer(
            $db: $db,
            $table: $db.questLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$QuestInstancesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $QuestInstancesTable,
          QuestInstance,
          $$QuestInstancesTableFilterComposer,
          $$QuestInstancesTableOrderingComposer,
          $$QuestInstancesTableAnnotationComposer,
          $$QuestInstancesTableCreateCompanionBuilder,
          $$QuestInstancesTableUpdateCompanionBuilder,
          (QuestInstance, $$QuestInstancesTableReferences),
          QuestInstance,
          PrefetchHooks Function({bool questLogsRefs})
        > {
  $$QuestInstancesTableTableManager(
    _$AppDatabase db,
    $QuestInstancesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$QuestInstancesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$QuestInstancesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$QuestInstancesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> questId = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<bool> isCustomUserQuest = const Value.absent(),
                Value<int?> userCustomSlotIndex = const Value.absent(),
                Value<String> userCustomConfigJson = const Value.absent(),
                Value<int> currentProgress = const Value.absent(),
                Value<int> targetProgress = const Value.absent(),
                Value<int?> streakDayRef = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> startedAt = const Value.absent(),
                Value<DateTime?> completedAt = const Value.absent(),
                Value<DateTime?> failedAt = const Value.absent(),
                Value<DateTime?> expiresAt = const Value.absent(),
                Value<DateTime?> lastUpdatedAt = const Value.absent(),
                Value<int> timesCompleted = const Value.absent(),
                Value<String> stepProgressJson = const Value.absent(),
                Value<String> completedStepIdsJson = const Value.absent(),
                Value<String> resultMetaJson = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => QuestInstancesCompanion(
                id: id,
                userId: userId,
                questId: questId,
                status: status,
                isCustomUserQuest: isCustomUserQuest,
                userCustomSlotIndex: userCustomSlotIndex,
                userCustomConfigJson: userCustomConfigJson,
                currentProgress: currentProgress,
                targetProgress: targetProgress,
                streakDayRef: streakDayRef,
                createdAt: createdAt,
                startedAt: startedAt,
                completedAt: completedAt,
                failedAt: failedAt,
                expiresAt: expiresAt,
                lastUpdatedAt: lastUpdatedAt,
                timesCompleted: timesCompleted,
                stepProgressJson: stepProgressJson,
                completedStepIdsJson: completedStepIdsJson,
                resultMetaJson: resultMetaJson,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String userId,
                required String questId,
                Value<String> status = const Value.absent(),
                Value<bool> isCustomUserQuest = const Value.absent(),
                Value<int?> userCustomSlotIndex = const Value.absent(),
                Value<String> userCustomConfigJson = const Value.absent(),
                Value<int> currentProgress = const Value.absent(),
                Value<int> targetProgress = const Value.absent(),
                Value<int?> streakDayRef = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> startedAt = const Value.absent(),
                Value<DateTime?> completedAt = const Value.absent(),
                Value<DateTime?> failedAt = const Value.absent(),
                Value<DateTime?> expiresAt = const Value.absent(),
                Value<DateTime?> lastUpdatedAt = const Value.absent(),
                Value<int> timesCompleted = const Value.absent(),
                Value<String> stepProgressJson = const Value.absent(),
                Value<String> completedStepIdsJson = const Value.absent(),
                Value<String> resultMetaJson = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => QuestInstancesCompanion.insert(
                id: id,
                userId: userId,
                questId: questId,
                status: status,
                isCustomUserQuest: isCustomUserQuest,
                userCustomSlotIndex: userCustomSlotIndex,
                userCustomConfigJson: userCustomConfigJson,
                currentProgress: currentProgress,
                targetProgress: targetProgress,
                streakDayRef: streakDayRef,
                createdAt: createdAt,
                startedAt: startedAt,
                completedAt: completedAt,
                failedAt: failedAt,
                expiresAt: expiresAt,
                lastUpdatedAt: lastUpdatedAt,
                timesCompleted: timesCompleted,
                stepProgressJson: stepProgressJson,
                completedStepIdsJson: completedStepIdsJson,
                resultMetaJson: resultMetaJson,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$QuestInstancesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({questLogsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (questLogsRefs) db.questLogs],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (questLogsRefs)
                    await $_getPrefetchedData<
                      QuestInstance,
                      $QuestInstancesTable,
                      QuestLog
                    >(
                      currentTable: table,
                      referencedTable: $$QuestInstancesTableReferences
                          ._questLogsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$QuestInstancesTableReferences(
                            db,
                            table,
                            p0,
                          ).questLogsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where(
                            (e) => e.questInstanceId == item.id,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$QuestInstancesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $QuestInstancesTable,
      QuestInstance,
      $$QuestInstancesTableFilterComposer,
      $$QuestInstancesTableOrderingComposer,
      $$QuestInstancesTableAnnotationComposer,
      $$QuestInstancesTableCreateCompanionBuilder,
      $$QuestInstancesTableUpdateCompanionBuilder,
      (QuestInstance, $$QuestInstancesTableReferences),
      QuestInstance,
      PrefetchHooks Function({bool questLogsRefs})
    >;
typedef $$ItemsTableCreateCompanionBuilder =
    ItemsCompanion Function({
      required String id,
      required String jsonData,
      Value<int> version,
      Value<int> rowid,
    });
typedef $$ItemsTableUpdateCompanionBuilder =
    ItemsCompanion Function({
      Value<String> id,
      Value<String> jsonData,
      Value<int> version,
      Value<int> rowid,
    });

final class $$ItemsTableReferences
    extends BaseReferences<_$AppDatabase, $ItemsTable, Item> {
  $$ItemsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$InventoryTable, List<InventoryData>>
  _inventoryRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.inventory,
    aliasName: $_aliasNameGenerator(db.items.id, db.inventory.itemId),
  );

  $$InventoryTableProcessedTableManager get inventoryRefs {
    final manager = $$InventoryTableTableManager(
      $_db,
      $_db.inventory,
    ).filter((f) => f.itemId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_inventoryRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ItemsTableFilterComposer extends Composer<_$AppDatabase, $ItemsTable> {
  $$ItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get jsonData => $composableBuilder(
    column: $table.jsonData,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> inventoryRefs(
    Expression<bool> Function($$InventoryTableFilterComposer f) f,
  ) {
    final $$InventoryTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.inventory,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$InventoryTableFilterComposer(
            $db: $db,
            $table: $db.inventory,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemsTable> {
  $$ItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get jsonData => $composableBuilder(
    column: $table.jsonData,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemsTable> {
  $$ItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get jsonData =>
      $composableBuilder(column: $table.jsonData, builder: (column) => column);

  GeneratedColumn<int> get version =>
      $composableBuilder(column: $table.version, builder: (column) => column);

  Expression<T> inventoryRefs<T extends Object>(
    Expression<T> Function($$InventoryTableAnnotationComposer a) f,
  ) {
    final $$InventoryTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.inventory,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$InventoryTableAnnotationComposer(
            $db: $db,
            $table: $db.inventory,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ItemsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ItemsTable,
          Item,
          $$ItemsTableFilterComposer,
          $$ItemsTableOrderingComposer,
          $$ItemsTableAnnotationComposer,
          $$ItemsTableCreateCompanionBuilder,
          $$ItemsTableUpdateCompanionBuilder,
          (Item, $$ItemsTableReferences),
          Item,
          PrefetchHooks Function({bool inventoryRefs})
        > {
  $$ItemsTableTableManager(_$AppDatabase db, $ItemsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> jsonData = const Value.absent(),
                Value<int> version = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ItemsCompanion(
                id: id,
                jsonData: jsonData,
                version: version,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String jsonData,
                Value<int> version = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ItemsCompanion.insert(
                id: id,
                jsonData: jsonData,
                version: version,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$ItemsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({inventoryRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (inventoryRefs) db.inventory],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (inventoryRefs)
                    await $_getPrefetchedData<Item, $ItemsTable, InventoryData>(
                      currentTable: table,
                      referencedTable: $$ItemsTableReferences
                          ._inventoryRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$ItemsTableReferences(db, table, p0).inventoryRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.itemId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ItemsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ItemsTable,
      Item,
      $$ItemsTableFilterComposer,
      $$ItemsTableOrderingComposer,
      $$ItemsTableAnnotationComposer,
      $$ItemsTableCreateCompanionBuilder,
      $$ItemsTableUpdateCompanionBuilder,
      (Item, $$ItemsTableReferences),
      Item,
      PrefetchHooks Function({bool inventoryRefs})
    >;
typedef $$InventoryTableCreateCompanionBuilder =
    InventoryCompanion Function({
      required String id,
      required String itemId,
      Value<int> quantity,
      Value<int> durability,
      Value<String?> equippedSlot,
      Value<bool> isIndestructible,
      Value<DateTime> obtainedAt,
      Value<DateTime?> lastUsedAt,
      Value<DateTime?> cooldownEndsAt,
      Value<String> upgradeHistory,
      Value<String?> uniqueData,
      Value<int> rowid,
    });
typedef $$InventoryTableUpdateCompanionBuilder =
    InventoryCompanion Function({
      Value<String> id,
      Value<String> itemId,
      Value<int> quantity,
      Value<int> durability,
      Value<String?> equippedSlot,
      Value<bool> isIndestructible,
      Value<DateTime> obtainedAt,
      Value<DateTime?> lastUsedAt,
      Value<DateTime?> cooldownEndsAt,
      Value<String> upgradeHistory,
      Value<String?> uniqueData,
      Value<int> rowid,
    });

final class $$InventoryTableReferences
    extends BaseReferences<_$AppDatabase, $InventoryTable, InventoryData> {
  $$InventoryTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ItemsTable _itemIdTable(_$AppDatabase db) => db.items.createAlias(
    $_aliasNameGenerator(db.inventory.itemId, db.items.id),
  );

  $$ItemsTableProcessedTableManager get itemId {
    final $_column = $_itemColumn<String>('item_id')!;

    final manager = $$ItemsTableTableManager(
      $_db,
      $_db.items,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$InventoryTableFilterComposer
    extends Composer<_$AppDatabase, $InventoryTable> {
  $$InventoryTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get durability => $composableBuilder(
    column: $table.durability,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get equippedSlot => $composableBuilder(
    column: $table.equippedSlot,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isIndestructible => $composableBuilder(
    column: $table.isIndestructible,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get obtainedAt => $composableBuilder(
    column: $table.obtainedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastUsedAt => $composableBuilder(
    column: $table.lastUsedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get cooldownEndsAt => $composableBuilder(
    column: $table.cooldownEndsAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get upgradeHistory => $composableBuilder(
    column: $table.upgradeHistory,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get uniqueData => $composableBuilder(
    column: $table.uniqueData,
    builder: (column) => ColumnFilters(column),
  );

  $$ItemsTableFilterComposer get itemId {
    final $$ItemsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.items,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemsTableFilterComposer(
            $db: $db,
            $table: $db.items,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$InventoryTableOrderingComposer
    extends Composer<_$AppDatabase, $InventoryTable> {
  $$InventoryTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get durability => $composableBuilder(
    column: $table.durability,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get equippedSlot => $composableBuilder(
    column: $table.equippedSlot,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isIndestructible => $composableBuilder(
    column: $table.isIndestructible,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get obtainedAt => $composableBuilder(
    column: $table.obtainedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastUsedAt => $composableBuilder(
    column: $table.lastUsedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get cooldownEndsAt => $composableBuilder(
    column: $table.cooldownEndsAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get upgradeHistory => $composableBuilder(
    column: $table.upgradeHistory,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get uniqueData => $composableBuilder(
    column: $table.uniqueData,
    builder: (column) => ColumnOrderings(column),
  );

  $$ItemsTableOrderingComposer get itemId {
    final $$ItemsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.items,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemsTableOrderingComposer(
            $db: $db,
            $table: $db.items,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$InventoryTableAnnotationComposer
    extends Composer<_$AppDatabase, $InventoryTable> {
  $$InventoryTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<int> get durability => $composableBuilder(
    column: $table.durability,
    builder: (column) => column,
  );

  GeneratedColumn<String> get equippedSlot => $composableBuilder(
    column: $table.equippedSlot,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isIndestructible => $composableBuilder(
    column: $table.isIndestructible,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get obtainedAt => $composableBuilder(
    column: $table.obtainedAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastUsedAt => $composableBuilder(
    column: $table.lastUsedAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get cooldownEndsAt => $composableBuilder(
    column: $table.cooldownEndsAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get upgradeHistory => $composableBuilder(
    column: $table.upgradeHistory,
    builder: (column) => column,
  );

  GeneratedColumn<String> get uniqueData => $composableBuilder(
    column: $table.uniqueData,
    builder: (column) => column,
  );

  $$ItemsTableAnnotationComposer get itemId {
    final $$ItemsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.items,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemsTableAnnotationComposer(
            $db: $db,
            $table: $db.items,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$InventoryTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $InventoryTable,
          InventoryData,
          $$InventoryTableFilterComposer,
          $$InventoryTableOrderingComposer,
          $$InventoryTableAnnotationComposer,
          $$InventoryTableCreateCompanionBuilder,
          $$InventoryTableUpdateCompanionBuilder,
          (InventoryData, $$InventoryTableReferences),
          InventoryData,
          PrefetchHooks Function({bool itemId})
        > {
  $$InventoryTableTableManager(_$AppDatabase db, $InventoryTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$InventoryTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$InventoryTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$InventoryTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> itemId = const Value.absent(),
                Value<int> quantity = const Value.absent(),
                Value<int> durability = const Value.absent(),
                Value<String?> equippedSlot = const Value.absent(),
                Value<bool> isIndestructible = const Value.absent(),
                Value<DateTime> obtainedAt = const Value.absent(),
                Value<DateTime?> lastUsedAt = const Value.absent(),
                Value<DateTime?> cooldownEndsAt = const Value.absent(),
                Value<String> upgradeHistory = const Value.absent(),
                Value<String?> uniqueData = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => InventoryCompanion(
                id: id,
                itemId: itemId,
                quantity: quantity,
                durability: durability,
                equippedSlot: equippedSlot,
                isIndestructible: isIndestructible,
                obtainedAt: obtainedAt,
                lastUsedAt: lastUsedAt,
                cooldownEndsAt: cooldownEndsAt,
                upgradeHistory: upgradeHistory,
                uniqueData: uniqueData,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String itemId,
                Value<int> quantity = const Value.absent(),
                Value<int> durability = const Value.absent(),
                Value<String?> equippedSlot = const Value.absent(),
                Value<bool> isIndestructible = const Value.absent(),
                Value<DateTime> obtainedAt = const Value.absent(),
                Value<DateTime?> lastUsedAt = const Value.absent(),
                Value<DateTime?> cooldownEndsAt = const Value.absent(),
                Value<String> upgradeHistory = const Value.absent(),
                Value<String?> uniqueData = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => InventoryCompanion.insert(
                id: id,
                itemId: itemId,
                quantity: quantity,
                durability: durability,
                equippedSlot: equippedSlot,
                isIndestructible: isIndestructible,
                obtainedAt: obtainedAt,
                lastUsedAt: lastUsedAt,
                cooldownEndsAt: cooldownEndsAt,
                upgradeHistory: upgradeHistory,
                uniqueData: uniqueData,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$InventoryTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({itemId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (itemId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.itemId,
                                referencedTable: $$InventoryTableReferences
                                    ._itemIdTable(db),
                                referencedColumn: $$InventoryTableReferences
                                    ._itemIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$InventoryTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $InventoryTable,
      InventoryData,
      $$InventoryTableFilterComposer,
      $$InventoryTableOrderingComposer,
      $$InventoryTableAnnotationComposer,
      $$InventoryTableCreateCompanionBuilder,
      $$InventoryTableUpdateCompanionBuilder,
      (InventoryData, $$InventoryTableReferences),
      InventoryData,
      PrefetchHooks Function({bool itemId})
    >;
typedef $$QuestLogsTableCreateCompanionBuilder =
    QuestLogsCompanion Function({
      required String id,
      required String questInstanceId,
      required String action,
      Value<int> xpDelta,
      Value<int> goldDelta,
      Value<DateTime> at,
      Value<int> rowid,
    });
typedef $$QuestLogsTableUpdateCompanionBuilder =
    QuestLogsCompanion Function({
      Value<String> id,
      Value<String> questInstanceId,
      Value<String> action,
      Value<int> xpDelta,
      Value<int> goldDelta,
      Value<DateTime> at,
      Value<int> rowid,
    });

final class $$QuestLogsTableReferences
    extends BaseReferences<_$AppDatabase, $QuestLogsTable, QuestLog> {
  $$QuestLogsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $QuestInstancesTable _questInstanceIdTable(_$AppDatabase db) =>
      db.questInstances.createAlias(
        $_aliasNameGenerator(
          db.questLogs.questInstanceId,
          db.questInstances.id,
        ),
      );

  $$QuestInstancesTableProcessedTableManager get questInstanceId {
    final $_column = $_itemColumn<String>('quest_instance_id')!;

    final manager = $$QuestInstancesTableTableManager(
      $_db,
      $_db.questInstances,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_questInstanceIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$QuestLogsTableFilterComposer
    extends Composer<_$AppDatabase, $QuestLogsTable> {
  $$QuestLogsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get action => $composableBuilder(
    column: $table.action,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get xpDelta => $composableBuilder(
    column: $table.xpDelta,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get goldDelta => $composableBuilder(
    column: $table.goldDelta,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get at => $composableBuilder(
    column: $table.at,
    builder: (column) => ColumnFilters(column),
  );

  $$QuestInstancesTableFilterComposer get questInstanceId {
    final $$QuestInstancesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.questInstanceId,
      referencedTable: $db.questInstances,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$QuestInstancesTableFilterComposer(
            $db: $db,
            $table: $db.questInstances,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$QuestLogsTableOrderingComposer
    extends Composer<_$AppDatabase, $QuestLogsTable> {
  $$QuestLogsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get action => $composableBuilder(
    column: $table.action,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get xpDelta => $composableBuilder(
    column: $table.xpDelta,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get goldDelta => $composableBuilder(
    column: $table.goldDelta,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get at => $composableBuilder(
    column: $table.at,
    builder: (column) => ColumnOrderings(column),
  );

  $$QuestInstancesTableOrderingComposer get questInstanceId {
    final $$QuestInstancesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.questInstanceId,
      referencedTable: $db.questInstances,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$QuestInstancesTableOrderingComposer(
            $db: $db,
            $table: $db.questInstances,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$QuestLogsTableAnnotationComposer
    extends Composer<_$AppDatabase, $QuestLogsTable> {
  $$QuestLogsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get action =>
      $composableBuilder(column: $table.action, builder: (column) => column);

  GeneratedColumn<int> get xpDelta =>
      $composableBuilder(column: $table.xpDelta, builder: (column) => column);

  GeneratedColumn<int> get goldDelta =>
      $composableBuilder(column: $table.goldDelta, builder: (column) => column);

  GeneratedColumn<DateTime> get at =>
      $composableBuilder(column: $table.at, builder: (column) => column);

  $$QuestInstancesTableAnnotationComposer get questInstanceId {
    final $$QuestInstancesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.questInstanceId,
      referencedTable: $db.questInstances,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$QuestInstancesTableAnnotationComposer(
            $db: $db,
            $table: $db.questInstances,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$QuestLogsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $QuestLogsTable,
          QuestLog,
          $$QuestLogsTableFilterComposer,
          $$QuestLogsTableOrderingComposer,
          $$QuestLogsTableAnnotationComposer,
          $$QuestLogsTableCreateCompanionBuilder,
          $$QuestLogsTableUpdateCompanionBuilder,
          (QuestLog, $$QuestLogsTableReferences),
          QuestLog,
          PrefetchHooks Function({bool questInstanceId})
        > {
  $$QuestLogsTableTableManager(_$AppDatabase db, $QuestLogsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$QuestLogsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$QuestLogsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$QuestLogsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> questInstanceId = const Value.absent(),
                Value<String> action = const Value.absent(),
                Value<int> xpDelta = const Value.absent(),
                Value<int> goldDelta = const Value.absent(),
                Value<DateTime> at = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => QuestLogsCompanion(
                id: id,
                questInstanceId: questInstanceId,
                action: action,
                xpDelta: xpDelta,
                goldDelta: goldDelta,
                at: at,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String questInstanceId,
                required String action,
                Value<int> xpDelta = const Value.absent(),
                Value<int> goldDelta = const Value.absent(),
                Value<DateTime> at = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => QuestLogsCompanion.insert(
                id: id,
                questInstanceId: questInstanceId,
                action: action,
                xpDelta: xpDelta,
                goldDelta: goldDelta,
                at: at,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$QuestLogsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({questInstanceId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (questInstanceId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.questInstanceId,
                                referencedTable: $$QuestLogsTableReferences
                                    ._questInstanceIdTable(db),
                                referencedColumn: $$QuestLogsTableReferences
                                    ._questInstanceIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$QuestLogsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $QuestLogsTable,
      QuestLog,
      $$QuestLogsTableFilterComposer,
      $$QuestLogsTableOrderingComposer,
      $$QuestLogsTableAnnotationComposer,
      $$QuestLogsTableCreateCompanionBuilder,
      $$QuestLogsTableUpdateCompanionBuilder,
      (QuestLog, $$QuestLogsTableReferences),
      QuestLog,
      PrefetchHooks Function({bool questInstanceId})
    >;
typedef $$AchievementsTableCreateCompanionBuilder =
    AchievementsCompanion Function({
      required String id,
      required String category,
      Value<int> progress,
      Value<int> goal,
      Value<int> gemsReward,
      Value<DateTime?> unlockedAt,
      Value<int> rowid,
    });
typedef $$AchievementsTableUpdateCompanionBuilder =
    AchievementsCompanion Function({
      Value<String> id,
      Value<String> category,
      Value<int> progress,
      Value<int> goal,
      Value<int> gemsReward,
      Value<DateTime?> unlockedAt,
      Value<int> rowid,
    });

class $$AchievementsTableFilterComposer
    extends Composer<_$AppDatabase, $AchievementsTable> {
  $$AchievementsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get progress => $composableBuilder(
    column: $table.progress,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get goal => $composableBuilder(
    column: $table.goal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get gemsReward => $composableBuilder(
    column: $table.gemsReward,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get unlockedAt => $composableBuilder(
    column: $table.unlockedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AchievementsTableOrderingComposer
    extends Composer<_$AppDatabase, $AchievementsTable> {
  $$AchievementsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get progress => $composableBuilder(
    column: $table.progress,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get goal => $composableBuilder(
    column: $table.goal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get gemsReward => $composableBuilder(
    column: $table.gemsReward,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get unlockedAt => $composableBuilder(
    column: $table.unlockedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AchievementsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AchievementsTable> {
  $$AchievementsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<int> get progress =>
      $composableBuilder(column: $table.progress, builder: (column) => column);

  GeneratedColumn<int> get goal =>
      $composableBuilder(column: $table.goal, builder: (column) => column);

  GeneratedColumn<int> get gemsReward => $composableBuilder(
    column: $table.gemsReward,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get unlockedAt => $composableBuilder(
    column: $table.unlockedAt,
    builder: (column) => column,
  );
}

class $$AchievementsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AchievementsTable,
          Achievement,
          $$AchievementsTableFilterComposer,
          $$AchievementsTableOrderingComposer,
          $$AchievementsTableAnnotationComposer,
          $$AchievementsTableCreateCompanionBuilder,
          $$AchievementsTableUpdateCompanionBuilder,
          (
            Achievement,
            BaseReferences<_$AppDatabase, $AchievementsTable, Achievement>,
          ),
          Achievement,
          PrefetchHooks Function()
        > {
  $$AchievementsTableTableManager(_$AppDatabase db, $AchievementsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AchievementsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AchievementsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AchievementsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<int> progress = const Value.absent(),
                Value<int> goal = const Value.absent(),
                Value<int> gemsReward = const Value.absent(),
                Value<DateTime?> unlockedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AchievementsCompanion(
                id: id,
                category: category,
                progress: progress,
                goal: goal,
                gemsReward: gemsReward,
                unlockedAt: unlockedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String category,
                Value<int> progress = const Value.absent(),
                Value<int> goal = const Value.absent(),
                Value<int> gemsReward = const Value.absent(),
                Value<DateTime?> unlockedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AchievementsCompanion.insert(
                id: id,
                category: category,
                progress: progress,
                goal: goal,
                gemsReward: gemsReward,
                unlockedAt: unlockedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AchievementsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AchievementsTable,
      Achievement,
      $$AchievementsTableFilterComposer,
      $$AchievementsTableOrderingComposer,
      $$AchievementsTableAnnotationComposer,
      $$AchievementsTableCreateCompanionBuilder,
      $$AchievementsTableUpdateCompanionBuilder,
      (
        Achievement,
        BaseReferences<_$AppDatabase, $AchievementsTable, Achievement>,
      ),
      Achievement,
      PrefetchHooks Function()
    >;
typedef $$JournalEntriesTableCreateCompanionBuilder =
    JournalEntriesCompanion Function({
      required String id,
      required String userId,
      Value<String?> sectionId,
      required String title,
      required String body,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<String> metaJson,
      Value<int> rowid,
    });
typedef $$JournalEntriesTableUpdateCompanionBuilder =
    JournalEntriesCompanion Function({
      Value<String> id,
      Value<String> userId,
      Value<String?> sectionId,
      Value<String> title,
      Value<String> body,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<String> metaJson,
      Value<int> rowid,
    });

class $$JournalEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $JournalEntriesTable> {
  $$JournalEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sectionId => $composableBuilder(
    column: $table.sectionId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get metaJson => $composableBuilder(
    column: $table.metaJson,
    builder: (column) => ColumnFilters(column),
  );
}

class $$JournalEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $JournalEntriesTable> {
  $$JournalEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sectionId => $composableBuilder(
    column: $table.sectionId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get metaJson => $composableBuilder(
    column: $table.metaJson,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$JournalEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $JournalEntriesTable> {
  $$JournalEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get sectionId =>
      $composableBuilder(column: $table.sectionId, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get body =>
      $composableBuilder(column: $table.body, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get metaJson =>
      $composableBuilder(column: $table.metaJson, builder: (column) => column);
}

class $$JournalEntriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $JournalEntriesTable,
          JournalEntry,
          $$JournalEntriesTableFilterComposer,
          $$JournalEntriesTableOrderingComposer,
          $$JournalEntriesTableAnnotationComposer,
          $$JournalEntriesTableCreateCompanionBuilder,
          $$JournalEntriesTableUpdateCompanionBuilder,
          (
            JournalEntry,
            BaseReferences<_$AppDatabase, $JournalEntriesTable, JournalEntry>,
          ),
          JournalEntry,
          PrefetchHooks Function()
        > {
  $$JournalEntriesTableTableManager(
    _$AppDatabase db,
    $JournalEntriesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$JournalEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$JournalEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$JournalEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String?> sectionId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> body = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<String> metaJson = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => JournalEntriesCompanion(
                id: id,
                userId: userId,
                sectionId: sectionId,
                title: title,
                body: body,
                createdAt: createdAt,
                updatedAt: updatedAt,
                metaJson: metaJson,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String userId,
                Value<String?> sectionId = const Value.absent(),
                required String title,
                required String body,
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<String> metaJson = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => JournalEntriesCompanion.insert(
                id: id,
                userId: userId,
                sectionId: sectionId,
                title: title,
                body: body,
                createdAt: createdAt,
                updatedAt: updatedAt,
                metaJson: metaJson,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$JournalEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $JournalEntriesTable,
      JournalEntry,
      $$JournalEntriesTableFilterComposer,
      $$JournalEntriesTableOrderingComposer,
      $$JournalEntriesTableAnnotationComposer,
      $$JournalEntriesTableCreateCompanionBuilder,
      $$JournalEntriesTableUpdateCompanionBuilder,
      (
        JournalEntry,
        BaseReferences<_$AppDatabase, $JournalEntriesTable, JournalEntry>,
      ),
      JournalEntry,
      PrefetchHooks Function()
    >;
typedef $$JournalSectionsTableCreateCompanionBuilder =
    JournalSectionsCompanion Function({
      required String id,
      required String userId,
      required String name,
      Value<String?> description,
      required DateTime createdAt,
      Value<int> rowid,
    });
typedef $$JournalSectionsTableUpdateCompanionBuilder =
    JournalSectionsCompanion Function({
      Value<String> id,
      Value<String> userId,
      Value<String> name,
      Value<String?> description,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

class $$JournalSectionsTableFilterComposer
    extends Composer<_$AppDatabase, $JournalSectionsTable> {
  $$JournalSectionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$JournalSectionsTableOrderingComposer
    extends Composer<_$AppDatabase, $JournalSectionsTable> {
  $$JournalSectionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$JournalSectionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $JournalSectionsTable> {
  $$JournalSectionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$JournalSectionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $JournalSectionsTable,
          JournalSection,
          $$JournalSectionsTableFilterComposer,
          $$JournalSectionsTableOrderingComposer,
          $$JournalSectionsTableAnnotationComposer,
          $$JournalSectionsTableCreateCompanionBuilder,
          $$JournalSectionsTableUpdateCompanionBuilder,
          (
            JournalSection,
            BaseReferences<
              _$AppDatabase,
              $JournalSectionsTable,
              JournalSection
            >,
          ),
          JournalSection,
          PrefetchHooks Function()
        > {
  $$JournalSectionsTableTableManager(
    _$AppDatabase db,
    $JournalSectionsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$JournalSectionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$JournalSectionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$JournalSectionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => JournalSectionsCompanion(
                id: id,
                userId: userId,
                name: name,
                description: description,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String userId,
                required String name,
                Value<String?> description = const Value.absent(),
                required DateTime createdAt,
                Value<int> rowid = const Value.absent(),
              }) => JournalSectionsCompanion.insert(
                id: id,
                userId: userId,
                name: name,
                description: description,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$JournalSectionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $JournalSectionsTable,
      JournalSection,
      $$JournalSectionsTableFilterComposer,
      $$JournalSectionsTableOrderingComposer,
      $$JournalSectionsTableAnnotationComposer,
      $$JournalSectionsTableCreateCompanionBuilder,
      $$JournalSectionsTableUpdateCompanionBuilder,
      (
        JournalSection,
        BaseReferences<_$AppDatabase, $JournalSectionsTable, JournalSection>,
      ),
      JournalSection,
      PrefetchHooks Function()
    >;
typedef $$HabitDefinitionsTableCreateCompanionBuilder =
    HabitDefinitionsCompanion Function({
      required String id,
      required String title,
      required String description,
      required String category,
      required String habitArchetype,
      required String trackingType,
      required String metricUnit,
      Value<int> defaultTarget,
      Value<int> baseXpReward,
      Value<int> vitalXpReward,
      Value<int> shadowPenalty,
      Value<bool> difficultyScaling,
      Value<String> metaJson,
      Value<int> rowid,
    });
typedef $$HabitDefinitionsTableUpdateCompanionBuilder =
    HabitDefinitionsCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<String> description,
      Value<String> category,
      Value<String> habitArchetype,
      Value<String> trackingType,
      Value<String> metricUnit,
      Value<int> defaultTarget,
      Value<int> baseXpReward,
      Value<int> vitalXpReward,
      Value<int> shadowPenalty,
      Value<bool> difficultyScaling,
      Value<String> metaJson,
      Value<int> rowid,
    });

class $$HabitDefinitionsTableFilterComposer
    extends Composer<_$AppDatabase, $HabitDefinitionsTable> {
  $$HabitDefinitionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get habitArchetype => $composableBuilder(
    column: $table.habitArchetype,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get trackingType => $composableBuilder(
    column: $table.trackingType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get metricUnit => $composableBuilder(
    column: $table.metricUnit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get defaultTarget => $composableBuilder(
    column: $table.defaultTarget,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get baseXpReward => $composableBuilder(
    column: $table.baseXpReward,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get vitalXpReward => $composableBuilder(
    column: $table.vitalXpReward,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get shadowPenalty => $composableBuilder(
    column: $table.shadowPenalty,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get difficultyScaling => $composableBuilder(
    column: $table.difficultyScaling,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get metaJson => $composableBuilder(
    column: $table.metaJson,
    builder: (column) => ColumnFilters(column),
  );
}

class $$HabitDefinitionsTableOrderingComposer
    extends Composer<_$AppDatabase, $HabitDefinitionsTable> {
  $$HabitDefinitionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get habitArchetype => $composableBuilder(
    column: $table.habitArchetype,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get trackingType => $composableBuilder(
    column: $table.trackingType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get metricUnit => $composableBuilder(
    column: $table.metricUnit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get defaultTarget => $composableBuilder(
    column: $table.defaultTarget,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get baseXpReward => $composableBuilder(
    column: $table.baseXpReward,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get vitalXpReward => $composableBuilder(
    column: $table.vitalXpReward,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get shadowPenalty => $composableBuilder(
    column: $table.shadowPenalty,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get difficultyScaling => $composableBuilder(
    column: $table.difficultyScaling,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get metaJson => $composableBuilder(
    column: $table.metaJson,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$HabitDefinitionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $HabitDefinitionsTable> {
  $$HabitDefinitionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<String> get habitArchetype => $composableBuilder(
    column: $table.habitArchetype,
    builder: (column) => column,
  );

  GeneratedColumn<String> get trackingType => $composableBuilder(
    column: $table.trackingType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get metricUnit => $composableBuilder(
    column: $table.metricUnit,
    builder: (column) => column,
  );

  GeneratedColumn<int> get defaultTarget => $composableBuilder(
    column: $table.defaultTarget,
    builder: (column) => column,
  );

  GeneratedColumn<int> get baseXpReward => $composableBuilder(
    column: $table.baseXpReward,
    builder: (column) => column,
  );

  GeneratedColumn<int> get vitalXpReward => $composableBuilder(
    column: $table.vitalXpReward,
    builder: (column) => column,
  );

  GeneratedColumn<int> get shadowPenalty => $composableBuilder(
    column: $table.shadowPenalty,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get difficultyScaling => $composableBuilder(
    column: $table.difficultyScaling,
    builder: (column) => column,
  );

  GeneratedColumn<String> get metaJson =>
      $composableBuilder(column: $table.metaJson, builder: (column) => column);
}

class $$HabitDefinitionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HabitDefinitionsTable,
          HabitDefinition,
          $$HabitDefinitionsTableFilterComposer,
          $$HabitDefinitionsTableOrderingComposer,
          $$HabitDefinitionsTableAnnotationComposer,
          $$HabitDefinitionsTableCreateCompanionBuilder,
          $$HabitDefinitionsTableUpdateCompanionBuilder,
          (
            HabitDefinition,
            BaseReferences<
              _$AppDatabase,
              $HabitDefinitionsTable,
              HabitDefinition
            >,
          ),
          HabitDefinition,
          PrefetchHooks Function()
        > {
  $$HabitDefinitionsTableTableManager(
    _$AppDatabase db,
    $HabitDefinitionsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HabitDefinitionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HabitDefinitionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HabitDefinitionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<String> habitArchetype = const Value.absent(),
                Value<String> trackingType = const Value.absent(),
                Value<String> metricUnit = const Value.absent(),
                Value<int> defaultTarget = const Value.absent(),
                Value<int> baseXpReward = const Value.absent(),
                Value<int> vitalXpReward = const Value.absent(),
                Value<int> shadowPenalty = const Value.absent(),
                Value<bool> difficultyScaling = const Value.absent(),
                Value<String> metaJson = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HabitDefinitionsCompanion(
                id: id,
                title: title,
                description: description,
                category: category,
                habitArchetype: habitArchetype,
                trackingType: trackingType,
                metricUnit: metricUnit,
                defaultTarget: defaultTarget,
                baseXpReward: baseXpReward,
                vitalXpReward: vitalXpReward,
                shadowPenalty: shadowPenalty,
                difficultyScaling: difficultyScaling,
                metaJson: metaJson,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                required String description,
                required String category,
                required String habitArchetype,
                required String trackingType,
                required String metricUnit,
                Value<int> defaultTarget = const Value.absent(),
                Value<int> baseXpReward = const Value.absent(),
                Value<int> vitalXpReward = const Value.absent(),
                Value<int> shadowPenalty = const Value.absent(),
                Value<bool> difficultyScaling = const Value.absent(),
                Value<String> metaJson = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HabitDefinitionsCompanion.insert(
                id: id,
                title: title,
                description: description,
                category: category,
                habitArchetype: habitArchetype,
                trackingType: trackingType,
                metricUnit: metricUnit,
                defaultTarget: defaultTarget,
                baseXpReward: baseXpReward,
                vitalXpReward: vitalXpReward,
                shadowPenalty: shadowPenalty,
                difficultyScaling: difficultyScaling,
                metaJson: metaJson,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$HabitDefinitionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HabitDefinitionsTable,
      HabitDefinition,
      $$HabitDefinitionsTableFilterComposer,
      $$HabitDefinitionsTableOrderingComposer,
      $$HabitDefinitionsTableAnnotationComposer,
      $$HabitDefinitionsTableCreateCompanionBuilder,
      $$HabitDefinitionsTableUpdateCompanionBuilder,
      (
        HabitDefinition,
        BaseReferences<_$AppDatabase, $HabitDefinitionsTable, HabitDefinition>,
      ),
      HabitDefinition,
      PrefetchHooks Function()
    >;
typedef $$HabitInstancesTableCreateCompanionBuilder =
    HabitInstancesCompanion Function({
      required String id,
      required String userId,
      required String habitId,
      required int dayKey,
      Value<int> current,
      Value<int> target,
      Value<String> status,
      Value<DateTime> createdAt,
      Value<DateTime?> completedAt,
      Value<DateTime?> failedAt,
      Value<DateTime?> lastUpdatedAt,
      Value<String> trackingMetaJson,
      Value<int> rowid,
    });
typedef $$HabitInstancesTableUpdateCompanionBuilder =
    HabitInstancesCompanion Function({
      Value<String> id,
      Value<String> userId,
      Value<String> habitId,
      Value<int> dayKey,
      Value<int> current,
      Value<int> target,
      Value<String> status,
      Value<DateTime> createdAt,
      Value<DateTime?> completedAt,
      Value<DateTime?> failedAt,
      Value<DateTime?> lastUpdatedAt,
      Value<String> trackingMetaJson,
      Value<int> rowid,
    });

class $$HabitInstancesTableFilterComposer
    extends Composer<_$AppDatabase, $HabitInstancesTable> {
  $$HabitInstancesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get habitId => $composableBuilder(
    column: $table.habitId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get dayKey => $composableBuilder(
    column: $table.dayKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get current => $composableBuilder(
    column: $table.current,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get target => $composableBuilder(
    column: $table.target,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get failedAt => $composableBuilder(
    column: $table.failedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastUpdatedAt => $composableBuilder(
    column: $table.lastUpdatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get trackingMetaJson => $composableBuilder(
    column: $table.trackingMetaJson,
    builder: (column) => ColumnFilters(column),
  );
}

class $$HabitInstancesTableOrderingComposer
    extends Composer<_$AppDatabase, $HabitInstancesTable> {
  $$HabitInstancesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get habitId => $composableBuilder(
    column: $table.habitId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get dayKey => $composableBuilder(
    column: $table.dayKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get current => $composableBuilder(
    column: $table.current,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get target => $composableBuilder(
    column: $table.target,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get failedAt => $composableBuilder(
    column: $table.failedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastUpdatedAt => $composableBuilder(
    column: $table.lastUpdatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get trackingMetaJson => $composableBuilder(
    column: $table.trackingMetaJson,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$HabitInstancesTableAnnotationComposer
    extends Composer<_$AppDatabase, $HabitInstancesTable> {
  $$HabitInstancesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get habitId =>
      $composableBuilder(column: $table.habitId, builder: (column) => column);

  GeneratedColumn<int> get dayKey =>
      $composableBuilder(column: $table.dayKey, builder: (column) => column);

  GeneratedColumn<int> get current =>
      $composableBuilder(column: $table.current, builder: (column) => column);

  GeneratedColumn<int> get target =>
      $composableBuilder(column: $table.target, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get failedAt =>
      $composableBuilder(column: $table.failedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get lastUpdatedAt => $composableBuilder(
    column: $table.lastUpdatedAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get trackingMetaJson => $composableBuilder(
    column: $table.trackingMetaJson,
    builder: (column) => column,
  );
}

class $$HabitInstancesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HabitInstancesTable,
          HabitInstance,
          $$HabitInstancesTableFilterComposer,
          $$HabitInstancesTableOrderingComposer,
          $$HabitInstancesTableAnnotationComposer,
          $$HabitInstancesTableCreateCompanionBuilder,
          $$HabitInstancesTableUpdateCompanionBuilder,
          (
            HabitInstance,
            BaseReferences<_$AppDatabase, $HabitInstancesTable, HabitInstance>,
          ),
          HabitInstance,
          PrefetchHooks Function()
        > {
  $$HabitInstancesTableTableManager(
    _$AppDatabase db,
    $HabitInstancesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HabitInstancesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HabitInstancesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HabitInstancesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> habitId = const Value.absent(),
                Value<int> dayKey = const Value.absent(),
                Value<int> current = const Value.absent(),
                Value<int> target = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> completedAt = const Value.absent(),
                Value<DateTime?> failedAt = const Value.absent(),
                Value<DateTime?> lastUpdatedAt = const Value.absent(),
                Value<String> trackingMetaJson = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HabitInstancesCompanion(
                id: id,
                userId: userId,
                habitId: habitId,
                dayKey: dayKey,
                current: current,
                target: target,
                status: status,
                createdAt: createdAt,
                completedAt: completedAt,
                failedAt: failedAt,
                lastUpdatedAt: lastUpdatedAt,
                trackingMetaJson: trackingMetaJson,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String userId,
                required String habitId,
                required int dayKey,
                Value<int> current = const Value.absent(),
                Value<int> target = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> completedAt = const Value.absent(),
                Value<DateTime?> failedAt = const Value.absent(),
                Value<DateTime?> lastUpdatedAt = const Value.absent(),
                Value<String> trackingMetaJson = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HabitInstancesCompanion.insert(
                id: id,
                userId: userId,
                habitId: habitId,
                dayKey: dayKey,
                current: current,
                target: target,
                status: status,
                createdAt: createdAt,
                completedAt: completedAt,
                failedAt: failedAt,
                lastUpdatedAt: lastUpdatedAt,
                trackingMetaJson: trackingMetaJson,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$HabitInstancesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HabitInstancesTable,
      HabitInstance,
      $$HabitInstancesTableFilterComposer,
      $$HabitInstancesTableOrderingComposer,
      $$HabitInstancesTableAnnotationComposer,
      $$HabitInstancesTableCreateCompanionBuilder,
      $$HabitInstancesTableUpdateCompanionBuilder,
      (
        HabitInstance,
        BaseReferences<_$AppDatabase, $HabitInstancesTable, HabitInstance>,
      ),
      HabitInstance,
      PrefetchHooks Function()
    >;
typedef $$ShadowProfilesTableCreateCompanionBuilder =
    ShadowProfilesCompanion Function({
      required String userId,
      Value<String> archetypeScoresJson,
      Value<int> totalShadowScore,
      Value<String?> dominantArchetypeId,
      Value<String> crisisLevel,
      Value<int> resilienceScore,
      Value<int> totalNegativeEvents,
      Value<int> totalPositiveEvents,
      Value<int> totalCrises,
      Value<int> totalBreakthroughs,
      Value<DateTime?> lastNegativeEventAt,
      Value<DateTime?> lastPositiveEventAt,
      Value<DateTime?> lastCrisisAt,
      Value<DateTime?> lastBreakthroughAt,
      Value<DateTime> updatedAt,
      Value<String> metaJson,
      Value<int> rowid,
    });
typedef $$ShadowProfilesTableUpdateCompanionBuilder =
    ShadowProfilesCompanion Function({
      Value<String> userId,
      Value<String> archetypeScoresJson,
      Value<int> totalShadowScore,
      Value<String?> dominantArchetypeId,
      Value<String> crisisLevel,
      Value<int> resilienceScore,
      Value<int> totalNegativeEvents,
      Value<int> totalPositiveEvents,
      Value<int> totalCrises,
      Value<int> totalBreakthroughs,
      Value<DateTime?> lastNegativeEventAt,
      Value<DateTime?> lastPositiveEventAt,
      Value<DateTime?> lastCrisisAt,
      Value<DateTime?> lastBreakthroughAt,
      Value<DateTime> updatedAt,
      Value<String> metaJson,
      Value<int> rowid,
    });

class $$ShadowProfilesTableFilterComposer
    extends Composer<_$AppDatabase, $ShadowProfilesTable> {
  $$ShadowProfilesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get archetypeScoresJson => $composableBuilder(
    column: $table.archetypeScoresJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalShadowScore => $composableBuilder(
    column: $table.totalShadowScore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get dominantArchetypeId => $composableBuilder(
    column: $table.dominantArchetypeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get crisisLevel => $composableBuilder(
    column: $table.crisisLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get resilienceScore => $composableBuilder(
    column: $table.resilienceScore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalNegativeEvents => $composableBuilder(
    column: $table.totalNegativeEvents,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalPositiveEvents => $composableBuilder(
    column: $table.totalPositiveEvents,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalCrises => $composableBuilder(
    column: $table.totalCrises,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalBreakthroughs => $composableBuilder(
    column: $table.totalBreakthroughs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastNegativeEventAt => $composableBuilder(
    column: $table.lastNegativeEventAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastPositiveEventAt => $composableBuilder(
    column: $table.lastPositiveEventAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastCrisisAt => $composableBuilder(
    column: $table.lastCrisisAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastBreakthroughAt => $composableBuilder(
    column: $table.lastBreakthroughAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get metaJson => $composableBuilder(
    column: $table.metaJson,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ShadowProfilesTableOrderingComposer
    extends Composer<_$AppDatabase, $ShadowProfilesTable> {
  $$ShadowProfilesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get archetypeScoresJson => $composableBuilder(
    column: $table.archetypeScoresJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalShadowScore => $composableBuilder(
    column: $table.totalShadowScore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dominantArchetypeId => $composableBuilder(
    column: $table.dominantArchetypeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get crisisLevel => $composableBuilder(
    column: $table.crisisLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get resilienceScore => $composableBuilder(
    column: $table.resilienceScore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalNegativeEvents => $composableBuilder(
    column: $table.totalNegativeEvents,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalPositiveEvents => $composableBuilder(
    column: $table.totalPositiveEvents,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalCrises => $composableBuilder(
    column: $table.totalCrises,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalBreakthroughs => $composableBuilder(
    column: $table.totalBreakthroughs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastNegativeEventAt => $composableBuilder(
    column: $table.lastNegativeEventAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastPositiveEventAt => $composableBuilder(
    column: $table.lastPositiveEventAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastCrisisAt => $composableBuilder(
    column: $table.lastCrisisAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastBreakthroughAt => $composableBuilder(
    column: $table.lastBreakthroughAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get metaJson => $composableBuilder(
    column: $table.metaJson,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ShadowProfilesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ShadowProfilesTable> {
  $$ShadowProfilesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get archetypeScoresJson => $composableBuilder(
    column: $table.archetypeScoresJson,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalShadowScore => $composableBuilder(
    column: $table.totalShadowScore,
    builder: (column) => column,
  );

  GeneratedColumn<String> get dominantArchetypeId => $composableBuilder(
    column: $table.dominantArchetypeId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get crisisLevel => $composableBuilder(
    column: $table.crisisLevel,
    builder: (column) => column,
  );

  GeneratedColumn<int> get resilienceScore => $composableBuilder(
    column: $table.resilienceScore,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalNegativeEvents => $composableBuilder(
    column: $table.totalNegativeEvents,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalPositiveEvents => $composableBuilder(
    column: $table.totalPositiveEvents,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalCrises => $composableBuilder(
    column: $table.totalCrises,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalBreakthroughs => $composableBuilder(
    column: $table.totalBreakthroughs,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastNegativeEventAt => $composableBuilder(
    column: $table.lastNegativeEventAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastPositiveEventAt => $composableBuilder(
    column: $table.lastPositiveEventAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastCrisisAt => $composableBuilder(
    column: $table.lastCrisisAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastBreakthroughAt => $composableBuilder(
    column: $table.lastBreakthroughAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get metaJson =>
      $composableBuilder(column: $table.metaJson, builder: (column) => column);
}

class $$ShadowProfilesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ShadowProfilesTable,
          ShadowProfile,
          $$ShadowProfilesTableFilterComposer,
          $$ShadowProfilesTableOrderingComposer,
          $$ShadowProfilesTableAnnotationComposer,
          $$ShadowProfilesTableCreateCompanionBuilder,
          $$ShadowProfilesTableUpdateCompanionBuilder,
          (
            ShadowProfile,
            BaseReferences<_$AppDatabase, $ShadowProfilesTable, ShadowProfile>,
          ),
          ShadowProfile,
          PrefetchHooks Function()
        > {
  $$ShadowProfilesTableTableManager(
    _$AppDatabase db,
    $ShadowProfilesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ShadowProfilesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ShadowProfilesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ShadowProfilesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> userId = const Value.absent(),
                Value<String> archetypeScoresJson = const Value.absent(),
                Value<int> totalShadowScore = const Value.absent(),
                Value<String?> dominantArchetypeId = const Value.absent(),
                Value<String> crisisLevel = const Value.absent(),
                Value<int> resilienceScore = const Value.absent(),
                Value<int> totalNegativeEvents = const Value.absent(),
                Value<int> totalPositiveEvents = const Value.absent(),
                Value<int> totalCrises = const Value.absent(),
                Value<int> totalBreakthroughs = const Value.absent(),
                Value<DateTime?> lastNegativeEventAt = const Value.absent(),
                Value<DateTime?> lastPositiveEventAt = const Value.absent(),
                Value<DateTime?> lastCrisisAt = const Value.absent(),
                Value<DateTime?> lastBreakthroughAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<String> metaJson = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ShadowProfilesCompanion(
                userId: userId,
                archetypeScoresJson: archetypeScoresJson,
                totalShadowScore: totalShadowScore,
                dominantArchetypeId: dominantArchetypeId,
                crisisLevel: crisisLevel,
                resilienceScore: resilienceScore,
                totalNegativeEvents: totalNegativeEvents,
                totalPositiveEvents: totalPositiveEvents,
                totalCrises: totalCrises,
                totalBreakthroughs: totalBreakthroughs,
                lastNegativeEventAt: lastNegativeEventAt,
                lastPositiveEventAt: lastPositiveEventAt,
                lastCrisisAt: lastCrisisAt,
                lastBreakthroughAt: lastBreakthroughAt,
                updatedAt: updatedAt,
                metaJson: metaJson,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String userId,
                Value<String> archetypeScoresJson = const Value.absent(),
                Value<int> totalShadowScore = const Value.absent(),
                Value<String?> dominantArchetypeId = const Value.absent(),
                Value<String> crisisLevel = const Value.absent(),
                Value<int> resilienceScore = const Value.absent(),
                Value<int> totalNegativeEvents = const Value.absent(),
                Value<int> totalPositiveEvents = const Value.absent(),
                Value<int> totalCrises = const Value.absent(),
                Value<int> totalBreakthroughs = const Value.absent(),
                Value<DateTime?> lastNegativeEventAt = const Value.absent(),
                Value<DateTime?> lastPositiveEventAt = const Value.absent(),
                Value<DateTime?> lastCrisisAt = const Value.absent(),
                Value<DateTime?> lastBreakthroughAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<String> metaJson = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ShadowProfilesCompanion.insert(
                userId: userId,
                archetypeScoresJson: archetypeScoresJson,
                totalShadowScore: totalShadowScore,
                dominantArchetypeId: dominantArchetypeId,
                crisisLevel: crisisLevel,
                resilienceScore: resilienceScore,
                totalNegativeEvents: totalNegativeEvents,
                totalPositiveEvents: totalPositiveEvents,
                totalCrises: totalCrises,
                totalBreakthroughs: totalBreakthroughs,
                lastNegativeEventAt: lastNegativeEventAt,
                lastPositiveEventAt: lastPositiveEventAt,
                lastCrisisAt: lastCrisisAt,
                lastBreakthroughAt: lastBreakthroughAt,
                updatedAt: updatedAt,
                metaJson: metaJson,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ShadowProfilesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ShadowProfilesTable,
      ShadowProfile,
      $$ShadowProfilesTableFilterComposer,
      $$ShadowProfilesTableOrderingComposer,
      $$ShadowProfilesTableAnnotationComposer,
      $$ShadowProfilesTableCreateCompanionBuilder,
      $$ShadowProfilesTableUpdateCompanionBuilder,
      (
        ShadowProfile,
        BaseReferences<_$AppDatabase, $ShadowProfilesTable, ShadowProfile>,
      ),
      ShadowProfile,
      PrefetchHooks Function()
    >;
typedef $$ShadowEventsTableCreateCompanionBuilder =
    ShadowEventsCompanion Function({
      required String id,
      required String userId,
      required String archetypeId,
      required String kind,
      required String sourceType,
      required String sourceId,
      required int delta,
      required int archetypeScoreAfter,
      required int totalShadowScoreAfter,
      Value<DateTime> createdAt,
      Value<String> metaJson,
      Value<int> rowid,
    });
typedef $$ShadowEventsTableUpdateCompanionBuilder =
    ShadowEventsCompanion Function({
      Value<String> id,
      Value<String> userId,
      Value<String> archetypeId,
      Value<String> kind,
      Value<String> sourceType,
      Value<String> sourceId,
      Value<int> delta,
      Value<int> archetypeScoreAfter,
      Value<int> totalShadowScoreAfter,
      Value<DateTime> createdAt,
      Value<String> metaJson,
      Value<int> rowid,
    });

class $$ShadowEventsTableFilterComposer
    extends Composer<_$AppDatabase, $ShadowEventsTable> {
  $$ShadowEventsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get archetypeId => $composableBuilder(
    column: $table.archetypeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get kind => $composableBuilder(
    column: $table.kind,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceType => $composableBuilder(
    column: $table.sourceType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceId => $composableBuilder(
    column: $table.sourceId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get delta => $composableBuilder(
    column: $table.delta,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get archetypeScoreAfter => $composableBuilder(
    column: $table.archetypeScoreAfter,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalShadowScoreAfter => $composableBuilder(
    column: $table.totalShadowScoreAfter,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get metaJson => $composableBuilder(
    column: $table.metaJson,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ShadowEventsTableOrderingComposer
    extends Composer<_$AppDatabase, $ShadowEventsTable> {
  $$ShadowEventsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get archetypeId => $composableBuilder(
    column: $table.archetypeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get kind => $composableBuilder(
    column: $table.kind,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceType => $composableBuilder(
    column: $table.sourceType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceId => $composableBuilder(
    column: $table.sourceId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get delta => $composableBuilder(
    column: $table.delta,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get archetypeScoreAfter => $composableBuilder(
    column: $table.archetypeScoreAfter,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalShadowScoreAfter => $composableBuilder(
    column: $table.totalShadowScoreAfter,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get metaJson => $composableBuilder(
    column: $table.metaJson,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ShadowEventsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ShadowEventsTable> {
  $$ShadowEventsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get archetypeId => $composableBuilder(
    column: $table.archetypeId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get kind =>
      $composableBuilder(column: $table.kind, builder: (column) => column);

  GeneratedColumn<String> get sourceType => $composableBuilder(
    column: $table.sourceType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get sourceId =>
      $composableBuilder(column: $table.sourceId, builder: (column) => column);

  GeneratedColumn<int> get delta =>
      $composableBuilder(column: $table.delta, builder: (column) => column);

  GeneratedColumn<int> get archetypeScoreAfter => $composableBuilder(
    column: $table.archetypeScoreAfter,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalShadowScoreAfter => $composableBuilder(
    column: $table.totalShadowScoreAfter,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get metaJson =>
      $composableBuilder(column: $table.metaJson, builder: (column) => column);
}

class $$ShadowEventsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ShadowEventsTable,
          ShadowEvent,
          $$ShadowEventsTableFilterComposer,
          $$ShadowEventsTableOrderingComposer,
          $$ShadowEventsTableAnnotationComposer,
          $$ShadowEventsTableCreateCompanionBuilder,
          $$ShadowEventsTableUpdateCompanionBuilder,
          (
            ShadowEvent,
            BaseReferences<_$AppDatabase, $ShadowEventsTable, ShadowEvent>,
          ),
          ShadowEvent,
          PrefetchHooks Function()
        > {
  $$ShadowEventsTableTableManager(_$AppDatabase db, $ShadowEventsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ShadowEventsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ShadowEventsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ShadowEventsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> archetypeId = const Value.absent(),
                Value<String> kind = const Value.absent(),
                Value<String> sourceType = const Value.absent(),
                Value<String> sourceId = const Value.absent(),
                Value<int> delta = const Value.absent(),
                Value<int> archetypeScoreAfter = const Value.absent(),
                Value<int> totalShadowScoreAfter = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<String> metaJson = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ShadowEventsCompanion(
                id: id,
                userId: userId,
                archetypeId: archetypeId,
                kind: kind,
                sourceType: sourceType,
                sourceId: sourceId,
                delta: delta,
                archetypeScoreAfter: archetypeScoreAfter,
                totalShadowScoreAfter: totalShadowScoreAfter,
                createdAt: createdAt,
                metaJson: metaJson,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String userId,
                required String archetypeId,
                required String kind,
                required String sourceType,
                required String sourceId,
                required int delta,
                required int archetypeScoreAfter,
                required int totalShadowScoreAfter,
                Value<DateTime> createdAt = const Value.absent(),
                Value<String> metaJson = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ShadowEventsCompanion.insert(
                id: id,
                userId: userId,
                archetypeId: archetypeId,
                kind: kind,
                sourceType: sourceType,
                sourceId: sourceId,
                delta: delta,
                archetypeScoreAfter: archetypeScoreAfter,
                totalShadowScoreAfter: totalShadowScoreAfter,
                createdAt: createdAt,
                metaJson: metaJson,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ShadowEventsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ShadowEventsTable,
      ShadowEvent,
      $$ShadowEventsTableFilterComposer,
      $$ShadowEventsTableOrderingComposer,
      $$ShadowEventsTableAnnotationComposer,
      $$ShadowEventsTableCreateCompanionBuilder,
      $$ShadowEventsTableUpdateCompanionBuilder,
      (
        ShadowEvent,
        BaseReferences<_$AppDatabase, $ShadowEventsTable, ShadowEvent>,
      ),
      ShadowEvent,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
  $$QuestTemplatesTableTableManager get questTemplates =>
      $$QuestTemplatesTableTableManager(_db, _db.questTemplates);
  $$QuestInstancesTableTableManager get questInstances =>
      $$QuestInstancesTableTableManager(_db, _db.questInstances);
  $$ItemsTableTableManager get items =>
      $$ItemsTableTableManager(_db, _db.items);
  $$InventoryTableTableManager get inventory =>
      $$InventoryTableTableManager(_db, _db.inventory);
  $$QuestLogsTableTableManager get questLogs =>
      $$QuestLogsTableTableManager(_db, _db.questLogs);
  $$AchievementsTableTableManager get achievements =>
      $$AchievementsTableTableManager(_db, _db.achievements);
  $$JournalEntriesTableTableManager get journalEntries =>
      $$JournalEntriesTableTableManager(_db, _db.journalEntries);
  $$JournalSectionsTableTableManager get journalSections =>
      $$JournalSectionsTableTableManager(_db, _db.journalSections);
  $$HabitDefinitionsTableTableManager get habitDefinitions =>
      $$HabitDefinitionsTableTableManager(_db, _db.habitDefinitions);
  $$HabitInstancesTableTableManager get habitInstances =>
      $$HabitInstancesTableTableManager(_db, _db.habitInstances);
  $$ShadowProfilesTableTableManager get shadowProfiles =>
      $$ShadowProfilesTableTableManager(_db, _db.shadowProfiles);
  $$ShadowEventsTableTableManager get shadowEvents =>
      $$ShadowEventsTableTableManager(_db, _db.shadowEvents);
}
