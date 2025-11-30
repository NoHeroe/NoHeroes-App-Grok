import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

import '../db/app_db.dart';
import '../../domain/models/user.dart' as domain;

/// 🧩 Repositório de autenticação local (Drift + SharedPreferences)
/// Atualizado para suportar o modelo parrudo do NoHeroes.
class AuthRepo {
  final AppDatabase db;
  static const _sessionKey = 'current_user_id';

  AuthRepo(this.db);

  // =============================================================
  // 🔹 Carregar usuário atual da sessão
  // =============================================================
  Future<User?> get currentUser async {
    final prefs = await SharedPreferences.getInstance();
    final id = prefs.getString(_sessionKey);
    if (id == null) return null;

    final result =
        await (db.select(db.users)..where((u) => u.id.equals(id))).get();

    return result.isNotEmpty ? result.first : null;
  }

  // =============================================================
  // 🧾 Registrar novo usuário
  // =============================================================
  Future<User?> register(
    String nickname, {
    required String password,
    required String email,
    required String classe,
    required String faccao,
    required String style,
    required String gender,
  }) async {
    // Verifica duplicidade
    final existing = await (db.select(db.users)
          ..where((u) => u.nickname.equals(nickname.trim())))
        .get();

    if (existing.isNotEmpty) return null;

    final id = const Uuid().v4();

    final entry = UsersCompanion.insert(
      id: id,
      nickname: nickname.trim(),
      email: email.trim(),
      password: password.trim(),

      classe: Value(classe),
      faccao: Value(faccao),
      estilo: Value(style),
      gender: Value(gender),
      rank: const Value('E'),

      createdAt: Value(DateTime.now()),

      // Base
      level: const Value(1),
      xp: const Value(0),
      gold: const Value(0),

      forca: const Value(1),
      destreza: const Value(1),
      constituicao: const Value(1),
      inteligencia: const Value(1),
      espirito: const Value(1),
      carisma: const Value(1),

      streakDays: const Value(0),
      disciplineMultiplier: const Value(1.0),

      // Avançado
      classeBaseId: const Value("guerreiro"),
      classeBranchId: const Value(null),
      totalXp: const Value(0),
      vitalXp: const Value(0),
      penaltyXp: const Value(0),
      questsCompleted: const Value(0),
      questsFailed: const Value(0),
      questsAbandoned: const Value(0),
      classLevel: const Value(1),
      classXp: const Value(0),
      branchLevel: const Value(0),
      branchXp: const Value(0),

      // Buffs e slots como JSON vazio
      passiveTraits: const Value("[]"),
      activeBuffs: const Value("[]"),
      activeDebuffs: const Value("[]"),
      temporalEffects: const Value("[]"),
      equippedSlots: const Value("{}"),
    );

    await db.into(db.users).insert(entry);

    final user =
        await (db.select(db.users)..where((u) => u.id.equals(id))).getSingle();

    await _saveSession(user.id);
    return user;
  }

  // =============================================================
  // 🔐 Login
  // =============================================================

  Future<User?> login(String nickname,
      {required String password}) async {
    final result = await (db.select(db.users)
          ..where((u) => u.nickname.equals(nickname.trim())))
        .get();

    if (result.isEmpty) return null;

    final user = result.first;
    if (user.password.trim() != password.trim()) return null;

    await _saveSession(user.id);
    return user;
  }

  // =============================================================
  // 🚪 Logout
  // =============================================================
  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_sessionKey);
  }

  // =============================================================
  // 💾 Persistência de sessão
  // =============================================================
  Future<void> _saveSession(String id) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_sessionKey, id);
  }

  // =============================================================
  // 💾 Salvar usuário atual (parrudo)
  // =============================================================
  Future<void> saveCurrentUser(domain.User user) async {
    final existing = await (db.select(db.users)
          ..where((u) => u.id.equals(user.id)))
        .getSingleOrNull();

    final currentPassword = existing?.password ?? '';

    await db.into(db.users).insertOnConflictUpdate(
      UsersCompanion(
        id: Value(user.id),
        nickname: Value(user.nickname),
        email: Value(user.email),
        password: Value(currentPassword),

        // Exibição
        rank: Value(user.rank ?? 'E'),
        classe: Value(user.classe ?? ''),
        faccao: Value(user.faccao ?? ''),
        bio: Value(user.bio ?? ''),
        avatarPath: Value(user.avatarPath ?? ''),
        estilo: Value(user.estilo),
        gender: Value(user.gender),

        height: user.height != null ? Value(user.height!) : const Value.absent(),
        weight: user.weight != null ? Value(user.weight!) : const Value.absent(),
        birthDate: user.birthDate != null ? Value(user.birthDate!) : const Value.absent(),

        createdAt: Value(user.createdAt),

        // Núcleo
        level: Value(user.level),
        xp: Value(user.xp),
        gold: Value(user.gold),
        streakDays: Value(user.streakDays),
        disciplineMultiplier: Value(user.disciplineMultiplier),

        // Base
        forca: Value(user.forca),
        destreza: Value(user.destreza),
        constituicao: Value(user.constituicao),
        inteligencia: Value(user.inteligencia),
        espirito: Value(user.espirito),
        carisma: Value(user.carisma),

        // Bônus
        bonusForca: Value(user.bonusForca),
        bonusDestreza: Value(user.bonusDestreza),
        bonusConstituicao: Value(user.bonusConstituicao),
        bonusInteligencia: Value(user.bonusInteligencia),
        bonusEspirito: Value(user.bonusEspirito),
        bonusCarisma: Value(user.bonusCarisma),

        // Totais
        totalForca: Value(user.totalForca),
        totalDestreza: Value(user.totalDestreza),
        totalConstituicao: Value(user.totalConstituicao),
        totalInteligencia: Value(user.totalInteligencia),
        totalEspirito: Value(user.totalEspirito),
        totalCarisma: Value(user.totalCarisma),

        // Classe
        classeBaseId: Value(user.classeBaseId),
        classeBranchId:
            user.classeBranchId != null ? Value(user.classeBranchId!) : const Value.absent(),

        // Avançado
        totalXp: Value(user.totalXp),
        vitalXp: Value(user.vitalXp),
        penaltyXp: Value(user.penaltyXp),
        questsCompleted: Value(user.questsCompleted),
        questsFailed: Value(user.questsFailed),
        questsAbandoned: Value(user.questsAbandoned),
        classLevel: Value(user.classLevel),
        classXp: Value(user.classXp),
        branchLevel: Value(user.branchLevel),
        branchXp: Value(user.branchXp),

        // JSON lists
        passiveTraits: Value(jsonEncode(user.passiveTraits)),
        activeBuffs: Value(jsonEncode(user.activeBuffs)),
        activeDebuffs: Value(jsonEncode(user.activeDebuffs)),
        temporalEffects: Value(jsonEncode(user.temporalEffects.map((e) => e.toJson()).toList())),
        equippedSlots: Value(jsonEncode(user.equippedSlots)),

        // Meta
        isTester: Value(user.isTester),
        isBanned: Value(user.isBanned),
      ),
    );

    await _saveSession(user.id);
  }

  // =============================================================
  // 🔄 Conversão DB -> Domain
  // =============================================================
  domain.User toDomain(User dbUser) {
    return domain.User(
      id: dbUser.id,
      nickname: dbUser.nickname,
      email: dbUser.email,

      // Perfil
      bio: dbUser.bio,
      avatarPath: dbUser.avatarPath,
      gender: dbUser.gender,
      height: dbUser.height,
      weight: dbUser.weight,
      classe: dbUser.classe,
      faccao: dbUser.faccao,
      estilo: dbUser.estilo,
      rank: dbUser.rank,

      createdAt: dbUser.createdAt,
      birthDate: dbUser.birthDate,

      // Progresso núcleo
      level: dbUser.level,
      xp: dbUser.xp,
      gold: dbUser.gold,
      streakDays: dbUser.streakDays,
      disciplineMultiplier: dbUser.disciplineMultiplier,

      // Atributos base
      forca: dbUser.forca,
      destreza: dbUser.destreza,
      constituicao: dbUser.constituicao,
      inteligencia: dbUser.inteligencia,
      espirito: dbUser.espirito,
      carisma: dbUser.carisma,

      // Bônus
      bonusForca: dbUser.bonusForca,
      bonusDestreza: dbUser.bonusDestreza,
      bonusConstituicao: dbUser.bonusConstituicao,
      bonusInteligencia: dbUser.bonusInteligencia,
      bonusEspirito: dbUser.bonusEspirito,
      bonusCarisma: dbUser.bonusCarisma,

      // Totais
      totalForca: dbUser.totalForca,
      totalDestreza: dbUser.totalDestreza,
      totalConstituicao: dbUser.totalConstituicao,
      totalInteligencia: dbUser.totalInteligencia,
      totalEspirito: dbUser.totalEspirito,
      totalCarisma: dbUser.totalCarisma,

      // Classe / branch
      classeBaseId: dbUser.classeBaseId,
      classeBranchId: dbUser.classeBranchId,

      // Avançado
      totalXp: dbUser.totalXp,
      vitalXp: dbUser.vitalXp,
      penaltyXp: dbUser.penaltyXp,
      questsCompleted: dbUser.questsCompleted,
      questsFailed: dbUser.questsFailed,
      questsAbandoned: dbUser.questsAbandoned,
      classLevel: dbUser.classLevel,
      classXp: dbUser.classXp,
      branchLevel: dbUser.branchLevel,
      branchXp: dbUser.branchXp,

      // JSON lists
      passiveTraits: List<String>.from(jsonDecode(dbUser.passiveTraits)),
      activeBuffs: List<String>.from(jsonDecode(dbUser.activeBuffs)),
      activeDebuffs: List<String>.from(jsonDecode(dbUser.activeDebuffs)),

      temporalEffects: (jsonDecode(dbUser.temporalEffects) as List)
          .map((e) => domain.TemporalEffect.fromJson(e))
          .toList(),

      equippedSlots: Map<String, String?>.from(jsonDecode(dbUser.equippedSlots)),

      // Meta
      isTester: dbUser.isTester,
      isBanned: dbUser.isBanned,
    );
  }
}
