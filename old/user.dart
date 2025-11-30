import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

/// Efeito temporário (buff/debuff com duração)
@JsonSerializable()
class TemporalEffect {
  final String id;            // ex: "buff_disciplina_x2", "debuff_fadiga"
  final String source;        // ex: "item", "classe", "faccao", "quest"
  final String? targetStat;   // ex: "forca", "vitalXp", "xp"
  final double magnitude;     // ex: +0.2, -0.1, +10 etc.
  final DateTime? expiresAt;  // null = efeito permanente até remoção manual

  const TemporalEffect({
    required this.id,
    required this.source,
    this.targetStat,
    this.magnitude = 0,
    this.expiresAt,
  });

  factory TemporalEffect.fromJson(Map<String, dynamic> json) =>
      _$TemporalEffectFromJson(json);

  Map<String, dynamic> toJson() => _$TemporalEffectToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User {
  // ---------------------------
  // Identidade / Perfil básico
  // ---------------------------
  final String id;
  final String nickname;
  final String email;

  final String? bio;
  final String? avatarPath;

  /// "male" / "female" (por enquanto texto simples)
  final String gender;

  final double? height;
  final double? weight;

  final String? rank;    // Rank geral: E, D, C...
  final String? classe;  // Nome exibido: "Guerreiro"
  final String? faccao;  // Nome exibido: "Legião Negra"

  /// Estilo de jogo: "solo" | "duo" | "team"
  final String estilo;

  final DateTime createdAt;
  final int? birthDate; // manter seu formato atual (ex: yyyymmdd ou timestamp)

  // ---------------------------
  // Progressão núcleo
  // ---------------------------
  final int level;
  final int xp;          // XP atual no nível
  final int gold;
  final int streakDays;
  final double disciplineMultiplier;

  // ---------------------------
  // Progressão avançada
  // ---------------------------

  /// XP total acumulado na conta (histórico geral)
  final int totalXp;

  /// XP de vitalismo (ações alinhadas ao Vitalismo)
  final int vitalXp;

  /// XP "negativo" / carga de penalidade por falhas, que pode impactar recompensas
  final int penaltyXp;

  /// Quests concluídas / falhadas / abandonadas
  final int questsCompleted;
  final int questsFailed;
  final int questsAbandoned;

  /// Nível e XP da classe base (independente do level global, se quiser)
  final int classLevel;
  final int classXp;

  /// Nível e XP da ramificação (quando desbloqueada)
  final int branchLevel;
  final int branchXp;

  // ---------------------------
  // Classe / Ramificação (IDs)
  // ---------------------------

  /// Id da classe base para bater com classes.json
  /// Ex.: "guerreiro", "mago", "ladino"
  @JsonKey(name: 'classe_base_id')
  final String classeBaseId;

  /// Id da ramificação da classe (pode ser null antes de desbloquear)
  /// Ex.: "mago_arcano", "berserker", "assassino"
  @JsonKey(name: 'classe_branch_id')
  final String? classeBranchId;

  // ---------------------------
  // Atributos base
  // ---------------------------
  final int forca;
  final int destreza;
  final int constituicao;
  final int inteligencia;
  final int espirito;
  final int carisma;

  // ---------------------------
  // Bônus de atributos (itens, buffs, facção, classe etc.)
  // ---------------------------
  final int bonusForca;
  final int bonusDestreza;
  final int bonusConstituicao;
  final int bonusInteligencia;
  final int bonusEspirito;
  final int bonusCarisma;

  // ---------------------------
  // Atributos finais (base + bônus, já prontos para UI e cálculos)
  // ---------------------------
  final int totalForca;
  final int totalDestreza;
  final int totalConstituicao;
  final int totalInteligencia;
  final int totalEspirito;
  final int totalCarisma;

  // ---------------------------
  // Sistema de buffs / passivos
  // ---------------------------

  /// Traços passivos permanentes do personagem (classe, facção, conquistas)
  /// ex: ["trait_disciplina_implacavel", "trait_sangue_sombrio"]
  final List<String> passiveTraits;

  /// Buffs ativos (ids de efeitos que podem ser buscados em um JSON)
  final List<String> activeBuffs;

  /// Debuffs ativos
  final List<String> activeDebuffs;

  /// Efeitos temporários com duração / fonte / magnitude
  final List<TemporalEffect> temporalEffects;

  // ---------------------------
  // Equipamentos / Slots
  // ---------------------------

  /// Mapa de slot -> itemId
  /// ex: { "head": "capacete_ferro_01", "chest": "peitoral_couro_02" }
  /// se null: slot vazio.
  final Map<String, String?> equippedSlots;

  // ---------------------------
  // Flags / Meta
  // ---------------------------

  /// Flag para marcar jogadores internos, testers, etc.
  final bool isTester;

  /// Flag de bloqueio (ban, soft-ban, etc.) – para futuro
  final bool isBanned;

  const User({
    // Identidade
    required this.id,
    required this.nickname,
    required this.email,
    this.bio,
    this.avatarPath,
    this.gender = "male",
    this.height,
    this.weight,
    this.rank,
    this.classe,
    this.faccao,
    required this.estilo,
    required this.createdAt,
    this.birthDate,

    // Progressão núcleo
    required this.level,
    required this.xp,
    required this.gold,
    required this.streakDays,
    required this.disciplineMultiplier,

    // Progressão avançada (com default para não quebrar nada agora)
    this.totalXp = 0,
    this.vitalXp = 0,
    this.penaltyXp = 0,
    this.questsCompleted = 0,
    this.questsFailed = 0,
    this.questsAbandoned = 0,
    this.classLevel = 1,
    this.classXp = 0,
    this.branchLevel = 0,
    this.branchXp = 0,

    // Classe / ramificação
    this.classeBaseId = "guerreiro",
    this.classeBranchId,

    // Atributos base
    required this.forca,
    required this.destreza,
    required this.constituicao,
    required this.inteligencia,
    required this.espirito,
    required this.carisma,

    // Bônus
    this.bonusForca = 0,
    this.bonusDestreza = 0,
    this.bonusConstituicao = 0,
    this.bonusInteligencia = 0,
    this.bonusEspirito = 0,
    this.bonusCarisma = 0,

    // Totais
    this.totalForca = 0,
    this.totalDestreza = 0,
    this.totalConstituicao = 0,
    this.totalInteligencia = 0,
    this.totalEspirito = 0,
    this.totalCarisma = 0,

    // Buffs / efeitos
    this.passiveTraits = const [],
    this.activeBuffs = const [],
    this.activeDebuffs = const [],
    this.temporalEffects = const [],

    // Equipamentos
    this.equippedSlots = const {},

    // Meta
    this.isTester = false,
    this.isBanned = false,
  });

  /// Usuário de exemplo / placeholder
  factory User.empty() => User(
        id: '',
        nickname: 'Aventureiro',
        email: 'avent@noheroes.local',
        level: 1,
        xp: 0,
        totalXp: 0,
        vitalXp: 0,
        penaltyXp: 0,
        gold: 0,
        streakDays: 0,
        disciplineMultiplier: 1.0,
        forca: 1,
        destreza: 1,
        constituicao: 1,
        inteligencia: 1,
        espirito: 1,
        carisma: 1,
        estilo: 'solo',
        createdAt: DateTime.now(),
        gender: "male",
        rank: 'E',
        classe: 'Guerreiro',
        faccao: 'Legião Negra',
        bio: '“Forjado nas sombras, disciplinado pela dor.”',
        height: 180,
        weight: 75,
        avatarPath: 'assets/images/default_avatar.png',
        classeBaseId: "guerreiro",
        classeBranchId: null,
        classLevel: 1,
        classXp: 0,
        branchLevel: 0,
        branchXp: 0,
        questsCompleted: 0,
        questsFailed: 0,
        questsAbandoned: 0,
        bonusForca: 0,
        bonusDestreza: 0,
        bonusConstituicao: 0,
        bonusInteligencia: 0,
        bonusEspirito: 0,
        bonusCarisma: 0,
        totalForca: 1,
        totalDestreza: 1,
        totalConstituicao: 1,
        totalInteligencia: 1,
        totalEspirito: 1,
        totalCarisma: 1,
        passiveTraits: const [],
        activeBuffs: const [],
        activeDebuffs: const [],
        temporalEffects: const [],
        equippedSlots: const {},
        isTester: true,
        isBanned: false,
      );

  // ---------------------------------------------
  // MÉTODO copyWithTotals (adicione AQUI)
  // ---------------------------------------------
  User copyWithTotals({
    int? totalForca,
    int? totalDestreza,
    int? totalConstituicao,
    int? totalInteligencia,
    int? totalEspirito,
    int? totalCarisma,
    List<TemporalEffect>? temporalEffects,
  }) {
    return User(
      id: id,
      nickname: nickname,
      email: email,
      level: level,
      xp: xp,
      gold: gold,
      streakDays: streakDays,
      disciplineMultiplier: disciplineMultiplier,

      // base
      forca: forca,
      destreza: destreza,
      constituicao: constituicao,
      inteligencia: inteligencia,
      espirito: espirito,
      carisma: carisma,

      estilo: estilo,
      createdAt: createdAt,
      birthDate: birthDate,
      rank: rank,
      classe: classe,
      faccao: faccao,
      bio: bio,
      height: height,
      weight: weight,
      avatarPath: avatarPath,
      gender: gender,
      classeBaseId: classeBaseId,
      classeBranchId: classeBranchId,

      // bônus
      bonusForca: bonusForca,
      bonusDestreza: bonusDestreza,
      bonusConstituicao: bonusConstituicao,
      bonusInteligencia: bonusInteligencia,
      bonusEspirito: bonusEspirito,
      bonusCarisma: bonusCarisma,

      // finais — substitui só os que forem enviados
      totalForca: totalForca ?? this.totalForca,
      totalDestreza: totalDestreza ?? this.totalDestreza,
      totalConstituicao: totalConstituicao ?? this.totalConstituicao,
      totalInteligencia: totalInteligencia ?? this.totalInteligencia,
      totalEspirito: totalEspirito ?? this.totalEspirito,
      totalCarisma: totalCarisma ?? this.totalCarisma,

      passiveTraits: passiveTraits,
      activeBuffs: activeBuffs,
      activeDebuffs: activeDebuffs,

      temporalEffects: temporalEffects ?? this.temporalEffects,

      equippedSlots: equippedSlots,

      isTester: isTester,
      isBanned: isBanned,
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
    );
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
