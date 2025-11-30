import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../infrastructure/db/app_db.dart';
import '../../infrastructure/repositories/auth_repo.dart';
import '../../domain/models/user.dart' as domain;

// ===============================================================
// 🧩 Database Provider
// ===============================================================

final databaseProvider = Provider<AppDatabase>((_) => AppDatabase());

// ===============================================================
// 🧩 Auth Repo Provider
// ===============================================================

final authRepoProvider =
    Provider<AuthRepo>((ref) => AuthRepo(ref.read(databaseProvider)));

// ===============================================================
// 🧩 Auth State Notifier
// ===============================================================

final authStateProvider =
    StateNotifierProvider<AuthNotifier, domain.User?>((ref) {
  final repo = ref.read(authRepoProvider);
  return AuthNotifier(repo);
});

// ===============================================================
// 🚀 Auth Notifier (versão parruda e definitiva)
// ===============================================================

class AuthNotifier extends StateNotifier<domain.User?> {
  final AuthRepo _repo;

  AuthNotifier(this._repo) : super(null);

  // ---------------------------------------------------------------
  // 🔄 Auto Login
  // ---------------------------------------------------------------

  Future<void> tryAutoLogin() async {
    final dbUser = await _repo.currentUser;
    if (dbUser != null) {
      final user = _repo.toDomain(dbUser);

      // sempre recalcula atributos ao carregar
      state = _recalculateUser(user);
    }
  }

  // ---------------------------------------------------------------
  // 🚪 Logout
  // ---------------------------------------------------------------

  Future<void> logout() async {
    state = null;
    await _repo.clearCurrentUser();
  }

  // ---------------------------------------------------------------
  // 🔧 Set User (recebe User e salva no banco)
  // ---------------------------------------------------------------

  Future<void> setUser(domain.User updatedUser) async {
    final recalculated = _recalculateUser(updatedUser);

    state = recalculated;
    await _repo.saveCurrentUser(recalculated);
  }

  // ---------------------------------------------------------------
  // 🍃 Atualizar parte do usuário (patch)
  // ---------------------------------------------------------------

  Future<void> updatePartial(Map<String, dynamic> changes) async {
    if (state == null) return;

    final json = state!.toJson();
    json.addAll(changes);

    final patched = domain.User.fromJson(json);

    await setUser(patched);
  }

  // ---------------------------------------------------------------
  // 🧠 Recalcular atributos finais do usuário
  // ---------------------------------------------------------------

  domain.User _recalculateUser(domain.User user) {
    // Base + bônus
    int finalForca = user.forca + user.bonusForca;
    int finalDestreza = user.destreza + user.bonusDestreza;
    int finalConstituicao = user.constituicao + user.bonusConstituicao;
    int finalInteligencia = user.inteligencia + user.bonusInteligencia;
    int finalEspirito = user.espirito + user.bonusEspirito;
    int finalCarisma = user.carisma + user.bonusCarisma;

    // ---------------------------------------
    // 📌 Buffs e Debuffs (ativos)
    // (uma fase simples: soma valores ou %, mas você pode expandir)
    // ---------------------------------------

    for (final buff in user.activeBuffs) {
      // Exemplo de buff textual: "forca:+5"
      if (buff.contains(":")) {
        final parts = buff.split(":");
        final stat = parts[0];
        final amount = int.tryParse(parts[1]) ?? 0;

        switch (stat) {
          case "forca":
            finalForca += amount;
            break;
          case "destreza":
            finalDestreza += amount;
            break;
          case "constituicao":
            finalConstituicao += amount;
            break;
          case "inteligencia":
            finalInteligencia += amount;
            break;
          case "espirito":
            finalEspirito += amount;
            break;
          case "carisma":
            finalCarisma += amount;
            break;
        }
      }
    }

    // ---------------------------------------
    // 📌 Efeitos temporários
    // ---------------------------------------

    final now = DateTime.now();
    final validEffects = <domain.TemporalEffect>[];

    for (final e in user.temporalEffects) {
      // se expirou, ignora
      if (e.expiresAt != null && e.expiresAt!.isBefore(now)) continue;

      validEffects.add(e);

      // aplica aumento direto
      if (e.targetStat != null) {
        switch (e.targetStat) {
          case "forca":
            finalForca += e.magnitude.toInt();
            break;
          case "destreza":
            finalDestreza += e.magnitude.toInt();
            break;
          case "constituicao":
            finalConstituicao += e.magnitude.toInt();
            break;
          case "inteligencia":
            finalInteligencia += e.magnitude.toInt();
            break;
          case "espirito":
            finalEspirito += e.magnitude.toInt();
            break;
          case "carisma":
            finalCarisma += e.magnitude.toInt();
            break;
        }
      }
    }

    // ---------------------------------------
    // 📌 Aqui entra o cálculo baseado na FACÇÃO
    // (exemplo simples — depois expande)
    // ---------------------------------------

    if (user.faccao == "Legião Negra") {
      finalForca = (finalForca * 1.15).floor(); // +15% Força
    }

    // ---------------------------------------
    // 📌 Aqui entra cálculo baseado na CLASSE
    // ---------------------------------------

    if (user.classeBaseId == "guerreiro") {
      finalConstituicao += 5; // exemplo simples
    }

    // ---------------------------------------
    // 📌 Estilo de jogo
    // ---------------------------------------

    if (user.estilo == "solo") {
      finalForca = (finalForca * 1.20).floor();
      finalDestreza = (finalDestreza * 1.20).floor();
    }

    // ---------------------------------------
    // 📌 Retorno final com tudo recalculado
    // ---------------------------------------

    return user.copyWithTotals(
      totalForca: finalForca,
      totalDestreza: finalDestreza,
      totalConstituicao: finalConstituicao,
      totalInteligencia: finalInteligencia,
      totalEspirito: finalEspirito,
      totalCarisma: finalCarisma,
      temporalEffects: validEffects,
    );
  }
}
