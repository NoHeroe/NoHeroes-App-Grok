import 'package:uuid/uuid.dart';

import '../../infrastructure/repositories/quest_repository.dart';
import '../../infrastructure/repositories/auth_repo.dart';
import '../../infrastructure/repositories/inventory_repository.dart';

import '../models/quest.dart';
import '../models/user.dart';
import 'quest_service.dart';

/// ===============================================================
/// ⚙️ QuestEngine++
/// ===============================================================
///
/// Responsável por:
///  - Reset diário automático
///  - Expiração de quests
///  - Criação diária automática de Daily XP Quests
///  - Atualização de timers
///  - Execução de regras periódicas
///  - Sincronização após login
///
/// Esse arquivo NÃO cuida de UI.
/// ===============================================================
class QuestEngine {
  final QuestRepository repo;
  final QuestService service;
  final AuthRepo auth;

  QuestEngine({
    required this.repo,
    required this.service,
    required this.auth,
  });

  DateTime _now() => DateTime.now();
  int _todayInt() {
    final n = _now();
    return n.year * 10000 + n.month * 100 + n.day;
  }

  String _uuid() => const Uuid().v4();

  // ===========================================================
  // 🔥 CHAMADO APÓS LOGIN — sincroniza tudo
  // ===========================================================

  Future<void> synchronize() async {
    final user = await auth.currentUser;
    if (user == null) return;
    final u = auth.toDomain(user);

    await _resetDailyIfNeeded(u);
    await _expireOldQuests(u);
    await _applyShadowPenalties(u); // placeholder futura
  }

  // ===========================================================
  // 🔥 RESET DIÁRIO
  // ===========================================================

  Future<void> _resetDailyIfNeeded(User u) async {
    final lastReset = await repo.getLastDailyReset(u.id);
    final today = _todayInt();

    if (lastReset == today) {
      return; // já resetou hoje
    }

    // marcar novo reset
    await repo.setLastDailyReset(u.id, today);

    // 1) fechar dailies antigas
    final inst = await repo.getInstances(u.id);
    for (final q in inst) {
      final template = await repo.getTemplateById(q.questId);
      if (template == null) continue;

      if (template.isDaily) {
        // se estava em progresso e não completou → falha
        if (q.status == QuestStatus.inProgress ||
            q.status == QuestStatus.available) {
          await service.failQuest(q);
        }
      }
    }

    // 2) gerar novas dailies
    await _generateDailyQuests(u);
  }

  // ===========================================================
  // 🔥 GERAÇÃO DE DAILY QUESTS INTELIGENTES
  // ===========================================================

  Future<void> _generateDailyQuests(User u) async {
    // buscar templates daily
    final templates = await repo.getDailyTemplates();

    // filtrar apenas disponíveis pro user
    final avail = templates.where((t) {
      return service.isQuestAvailableForUser(t, u);
    }).toList();

    // limitar a 3 daily XP por padrão (pode expandir depois)
    const maxDaily = 3;

    // pega 3 aleatórias
    avail.shuffle();
    final pick = avail.take(maxDaily);

    for (final t in pick) {
      await service.createInstance(t.id, u.id);
    }
  }

  // ===========================================================
  // 🔥 EXPIRAR QUESTS ANTIGAS
  // ===========================================================

  Future<void> _expireOldQuests(User u) async {
    final inst = await repo.getInstances(u.id);
    final now = _now();

    for (final q in inst) {
      if (q.status == QuestStatus.completed ||
          q.status == QuestStatus.failed) {
        continue;
      }

      if (q.expiresAt != null && now.isAfter(q.expiresAt!)) {
        final updated = q.copyWith(
          status: QuestStatus.expired,
          failedAt: now,
        );
        await repo.updateInstance(updated);
      }
    }
  }

  // ===========================================================
  // 🔥 “TICK” DE TEMPO — deve ser chamado em:
  //    - abertura de tela principal
  //    - retorno do app
  // ===========================================================

  Future<void> periodicTick() async {
    final user = await auth.currentUser;
    if (user == null) return;
    final u = auth.toDomain(user);

    // verificar reset diário
    await _resetDailyIfNeeded(u);

    // expirar quests
    await _expireOldQuests(u);

    // atualizar timers (futuro)
  }

  // ===========================================================
  // 🔥 PENALIDADES SHADOW — placeholder
  // ===========================================================

  Future<void> _applyShadowPenalties(User u) async {
    // futuras integrações com:
    //   - Shadow Archetypes
    //   - shadowFailureCount
    //   - disciplina
    //   - streak quebrado
  }
}
