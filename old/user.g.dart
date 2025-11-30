// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TemporalEffect _$TemporalEffectFromJson(Map<String, dynamic> json) =>
    TemporalEffect(
      id: json['id'] as String,
      source: json['source'] as String,
      targetStat: json['targetStat'] as String?,
      magnitude: (json['magnitude'] as num?)?.toDouble() ?? 0,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$TemporalEffectToJson(TemporalEffect instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source': instance.source,
      'targetStat': instance.targetStat,
      'magnitude': instance.magnitude,
      'expiresAt': instance.expiresAt?.toIso8601String(),
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
  id: json['id'] as String,
  nickname: json['nickname'] as String,
  email: json['email'] as String,
  bio: json['bio'] as String?,
  avatarPath: json['avatarPath'] as String?,
  gender: json['gender'] as String? ?? "male",
  height: (json['height'] as num?)?.toDouble(),
  weight: (json['weight'] as num?)?.toDouble(),
  rank: json['rank'] as String?,
  classe: json['classe'] as String?,
  faccao: json['faccao'] as String?,
  estilo: json['estilo'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  birthDate: (json['birthDate'] as num?)?.toInt(),
  level: (json['level'] as num).toInt(),
  xp: (json['xp'] as num).toInt(),
  gold: (json['gold'] as num).toInt(),
  streakDays: (json['streakDays'] as num).toInt(),
  disciplineMultiplier: (json['disciplineMultiplier'] as num).toDouble(),
  totalXp: (json['totalXp'] as num?)?.toInt() ?? 0,
  vitalXp: (json['vitalXp'] as num?)?.toInt() ?? 0,
  penaltyXp: (json['penaltyXp'] as num?)?.toInt() ?? 0,
  questsCompleted: (json['questsCompleted'] as num?)?.toInt() ?? 0,
  questsFailed: (json['questsFailed'] as num?)?.toInt() ?? 0,
  questsAbandoned: (json['questsAbandoned'] as num?)?.toInt() ?? 0,
  classLevel: (json['classLevel'] as num?)?.toInt() ?? 1,
  classXp: (json['classXp'] as num?)?.toInt() ?? 0,
  branchLevel: (json['branchLevel'] as num?)?.toInt() ?? 0,
  branchXp: (json['branchXp'] as num?)?.toInt() ?? 0,
  classeBaseId: json['classe_base_id'] as String? ?? "guerreiro",
  classeBranchId: json['classe_branch_id'] as String?,
  forca: (json['forca'] as num).toInt(),
  destreza: (json['destreza'] as num).toInt(),
  constituicao: (json['constituicao'] as num).toInt(),
  inteligencia: (json['inteligencia'] as num).toInt(),
  espirito: (json['espirito'] as num).toInt(),
  carisma: (json['carisma'] as num).toInt(),
  bonusForca: (json['bonusForca'] as num?)?.toInt() ?? 0,
  bonusDestreza: (json['bonusDestreza'] as num?)?.toInt() ?? 0,
  bonusConstituicao: (json['bonusConstituicao'] as num?)?.toInt() ?? 0,
  bonusInteligencia: (json['bonusInteligencia'] as num?)?.toInt() ?? 0,
  bonusEspirito: (json['bonusEspirito'] as num?)?.toInt() ?? 0,
  bonusCarisma: (json['bonusCarisma'] as num?)?.toInt() ?? 0,
  totalForca: (json['totalForca'] as num?)?.toInt() ?? 0,
  totalDestreza: (json['totalDestreza'] as num?)?.toInt() ?? 0,
  totalConstituicao: (json['totalConstituicao'] as num?)?.toInt() ?? 0,
  totalInteligencia: (json['totalInteligencia'] as num?)?.toInt() ?? 0,
  totalEspirito: (json['totalEspirito'] as num?)?.toInt() ?? 0,
  totalCarisma: (json['totalCarisma'] as num?)?.toInt() ?? 0,
  passiveTraits:
      (json['passiveTraits'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  activeBuffs:
      (json['activeBuffs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  activeDebuffs:
      (json['activeDebuffs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  temporalEffects:
      (json['temporalEffects'] as List<dynamic>?)
          ?.map((e) => TemporalEffect.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  equippedSlots:
      (json['equippedSlots'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ) ??
      const {},
  isTester: json['isTester'] as bool? ?? false,
  isBanned: json['isBanned'] as bool? ?? false,
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'id': instance.id,
  'nickname': instance.nickname,
  'email': instance.email,
  'bio': instance.bio,
  'avatarPath': instance.avatarPath,
  'gender': instance.gender,
  'height': instance.height,
  'weight': instance.weight,
  'rank': instance.rank,
  'classe': instance.classe,
  'faccao': instance.faccao,
  'estilo': instance.estilo,
  'createdAt': instance.createdAt.toIso8601String(),
  'birthDate': instance.birthDate,
  'level': instance.level,
  'xp': instance.xp,
  'gold': instance.gold,
  'streakDays': instance.streakDays,
  'disciplineMultiplier': instance.disciplineMultiplier,
  'totalXp': instance.totalXp,
  'vitalXp': instance.vitalXp,
  'penaltyXp': instance.penaltyXp,
  'questsCompleted': instance.questsCompleted,
  'questsFailed': instance.questsFailed,
  'questsAbandoned': instance.questsAbandoned,
  'classLevel': instance.classLevel,
  'classXp': instance.classXp,
  'branchLevel': instance.branchLevel,
  'branchXp': instance.branchXp,
  'classe_base_id': instance.classeBaseId,
  'classe_branch_id': instance.classeBranchId,
  'forca': instance.forca,
  'destreza': instance.destreza,
  'constituicao': instance.constituicao,
  'inteligencia': instance.inteligencia,
  'espirito': instance.espirito,
  'carisma': instance.carisma,
  'bonusForca': instance.bonusForca,
  'bonusDestreza': instance.bonusDestreza,
  'bonusConstituicao': instance.bonusConstituicao,
  'bonusInteligencia': instance.bonusInteligencia,
  'bonusEspirito': instance.bonusEspirito,
  'bonusCarisma': instance.bonusCarisma,
  'totalForca': instance.totalForca,
  'totalDestreza': instance.totalDestreza,
  'totalConstituicao': instance.totalConstituicao,
  'totalInteligencia': instance.totalInteligencia,
  'totalEspirito': instance.totalEspirito,
  'totalCarisma': instance.totalCarisma,
  'passiveTraits': instance.passiveTraits,
  'activeBuffs': instance.activeBuffs,
  'activeDebuffs': instance.activeDebuffs,
  'temporalEffects': instance.temporalEffects.map((e) => e.toJson()).toList(),
  'equippedSlots': instance.equippedSlots,
  'isTester': instance.isTester,
  'isBanned': instance.isBanned,
};
