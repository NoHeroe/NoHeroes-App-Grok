import 'package:uuid/uuid.dart';

import '../../infrastructure/db/app_db.dart' as db;
import '../../infrastructure/repositories/habit_repository.dart';
import '../../infrastructure/repositories/auth_repo.dart';
import '../models/user.dart';

/// ===================================================================
/// 🧠 HabitService
/// Motor de HÁBITOS diários do NoHeroes
/// ===================================================================
/// Responsável por:
///   - garantir que o usuário tenha instâncias diárias dos hábitos
///   - atualizar progresso de hábito (contador, check, etc.)
///   - aplicar recompensas (XP, VitalXP) ao completar
///   - aplicar penalidades básicas ao falhar (penaltyXp)
///
/// OBS: integração fina com ShadowSystem virá depois:
///   - uso de habitArchetype / shadowPenalty de forma mais profunda
/// ===================================================================
class HabitService {
  final HabitRepository repo;
  final AuthRepo auth;

  HabitService({
    required this.repo,
    required this.auth,
  });

  // ---------------------------------------------------------------
  // HELPERS BÁSICOS
  // ---------------------------------------------------------------

  DateTime _now() => DateTime.now();

  int _todayKey() {
    final d = _now();
    return d.year * 10000 + d.month * 100 + d.day;
  }

  String _uuid() => const Uuid().v4();

  /// Pega o usuário atual já no modelo de domínio.
  /// Retorna null se não houver usuário logado.
  Future<User?> _getCurrentUser() async {
    final dbUser = await auth.currentUser;
    if (dbUser == null) return null;
    return auth.toDomain(dbUser);
  }

  // ---------------------------------------------------------------
  // GARANTIR HÁBITOS DIÁRIOS
  // ---------------------------------------------------------------

  /// Garante que o usuário atual tenha instâncias para TODOS os hábitos
  /// definidos em HabitDefinitions para o dia de hoje.
  ///
  /// Retorna a lista de HabitInstances do dia (depois de criar o que faltar).
  Future<List<db.HabitInstance>> ensureTodayHabitsForCurrentUser() async {
    final user = await _getCurrentUser();
    if (user == null) return [];

    final dayKey = _todayKey();

    // catálogo de hábitos
    final defs = await repo.getAllDefinitions();

    // para cada definição, cria instância se não existir hoje
    for (final def in defs) {
      final existing = await repo.getInstanceForHabitDay(
        user.id,
        def.id,
        dayKey,
      );

      if (existing != null) continue;

      await repo.insertInstance(
        db.HabitInstancesCompanion.insert(
          id: _uuid(),
          userId: user.id,
          habitId: def.id,
          dayKey: dayKey,
          target: def.defaultTarget ?? 1,
          // current = 0 (default)
          // status = 'pending' (default)
        ),
      );
    }

    // devolve o snapshot atualizado do dia
    return repo.getInstancesForUserDay(user.id, dayKey);
  }

  /// Atalho: carrega os hábitos de hoje, criando se necessário.
  Future<List<db.HabitInstance>> loadTodayHabits() async {
    final user = await _getCurrentUser();
    if (user == null) return [];

    final dayKey = _todayKey();
    final existing = await repo.getInstancesForUserDay(user.id, dayKey);

    if (existing.isNotEmpty) return existing;

    // Se não tem nada para hoje, garante criação
    return ensureTodayHabitsForCurrentUser();
  }

  // ---------------------------------------------------------------
  // ATUALIZAR PROGRESSO
  // ---------------------------------------------------------------

  /// Atualiza o progresso de um hábito (por instância).
  ///
  /// `delta` pode ser:
  ///   +1 => marcou como feito uma vez
  ///   +N => completou N reps
  ///   -1 => desfazer (dentro de limites)
  ///
  /// Se atingir o target => marca como "completed" e aplica recompensa.
  Future<db.HabitInstance?> updateProgress(
    String habitInstanceId,
    int delta,
  ) async {
    final inst = await repo.getInstanceById(habitInstanceId);
    if (inst == null) return null;

    final user = await _getCurrentUser();
    if (user == null) return null;

    final def = await repo.getDefinitionById(inst.habitId);
    if (def == null) return null;

    // trava de dia: se o dayKey não é hoje, não deixa mexer
    final today = _todayKey();
    if (inst.dayKey != today) {
      // no futuro dá pra retornar erro específico
      return inst;
    }

    // calcula novo valor
    int newCurrent = inst.current + delta;
    if (newCurrent < 0) newCurrent = 0;
    if (newCurrent > inst.target) newCurrent = inst.target;

    // status
    String newStatus;
    DateTime? completedAt = inst.completedAt;

    if (newCurrent >= inst.target) {
      newStatus = 'completed';
      completedAt ??= _now();

      // aplica recompensa só se ainda não estava completo
      if (inst.status != 'completed') {
        await _applyCompletionRewards(user, def);
      }
    } else if (newCurrent > 0) {
      newStatus = 'inProgress';
    } else {
      newStatus = 'pending';
    }

    final updated = inst.copyWith(
      current: newCurrent,
      status: newStatus,
      completedAt: completedAt,
      lastUpdatedAt: _now(),
    );

    await repo.updateInstance(updated);
    return updated;
  }

  // ---------------------------------------------------------------
  // COMPLETAR / FALHAR DIRETO
  // ---------------------------------------------------------------

  /// Marca como COMPLETO direto (útil para tracking manual tipo "check").
  Future<db.HabitInstance?> completeHabit(String habitInstanceId) async {
    final inst = await repo.getInstanceById(habitInstanceId);
    if (inst == null) return null;

    final user = await _getCurrentUser();
    if (user == null) return null;

    final def = await repo.getDefinitionById(inst.habitId);
    if (def == null) return null;

    if (inst.status == 'completed') return inst;

    final updated = inst.copyWith(
      current: inst.target,
      status: 'completed',
      completedAt: _now(),
      lastUpdatedAt: _now(),
    );

    await repo.updateInstance(updated);
    await _applyCompletionRewards(user, def);

    return updated;
  }

  /// Marca hábito como falhado.
  /// Útil para reset diário / quando o dia vira.
  Future<db.HabitInstance?> failHabit(String habitInstanceId) async {
    final inst = await repo.getInstanceById(habitInstanceId);
    if (inst == null) return null;

    if (inst.status == 'failed' || inst.status == 'completed') {
      return inst;
    }

    final user = await _getCurrentUser();
    if (user == null) return null;

    final def = await repo.getDefinitionById(inst.habitId);
    if (def == null) return null;

    await _applyFailurePenalty(user, def);

    final updated = inst.copyWith(
      status: 'failed',
      failedAt: _now(),
      lastUpdatedAt: _now(),
    );

    await repo.updateInstance(updated);
    return updated;
  }

  // ---------------------------------------------------------------
  // RECOMPENSAS / PENALIDADES
  // ---------------------------------------------------------------

  Future<void> _applyCompletionRewards(
    User user,
    db.HabitDefinition def,
  ) async {
    final baseXp = def.baseXpReward ?? 0;
    final vitalXp = def.vitalXpReward ?? 0;

    int newXp = user.xp + baseXp;
    int newVital = user.vitalXp + vitalXp;
    int newTotalXp = user.totalXp + baseXp + vitalXp;

    // level up básico (igual lógica do QuestService)
    int levelUps = 0;
    int xpRequired = user.level * 100;

    while (newXp >= xpRequired) {
      newXp -= xpRequired;
      levelUps++;
      xpRequired = (user.level + levelUps) * 100;
    }

    final updatedUser = user.copyWith(
      xp: newXp,
      vitalXp: newVital,
      totalXp: newTotalXp,
      level: user.level + levelUps,
    );

    await auth.saveCurrentUser(updatedUser);
  }

  Future<void> _applyFailurePenalty(
    User user,
    db.HabitDefinition def,
  ) async {
    final penalty = def.shadowPenalty ?? 0;

    if (penalty <= 0) return;

    final updatedUser = user.copyWith(
      penaltyXp: user.penaltyXp + penalty,
    );

    await auth.saveCurrentUser(updatedUser);
  }
}
