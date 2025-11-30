import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/services/quest_service.dart';
import '../../domain/services/quest_providers.dart';
import '../../domain/models/quest.dart';

/// ===============================================================
/// 🚀 QuestController – controla a UI
/// ===============================================================
class QuestController extends StateNotifier<AsyncValue<List<QuestInstance>>> {
  final QuestService service;
  final String userId;

  QuestController({
    required this.service,
    required this.userId,
  }) : super(const AsyncValue.loading()) {
    load();
  }

  // Carrega instâncias do user
  Future<void> load() async {
    state = const AsyncValue.loading();
    try {
      final repo = service.repo;
      final list = await repo.getInstancesForUser(userId);
      state = AsyncValue.data(list);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  // Criar instância de quest
  Future<void> startQuest(String questId) async {
    state = const AsyncValue.loading();
    await service.createInstance(questId, userId);
    await load();
  }

  // Atualizar progresso
  Future<void> addProgress(QuestInstance inst, int amount) async {
    await service.updateProgress(inst, amount);
    await load();
  }

  // Concluir manualmente
  Future<void> complete(QuestInstance inst) async {
    await service.completeQuest(inst);
    await load();
  }

  // Falhar manualmente
  Future<void> fail(QuestInstance inst) async {
    await service.failQuest(inst);
    await load();
  }

  // Reset diário
  Future<void> resetDaily() async {
    await service.resetDailyQuests(userId);
    await load();
  }
}

// Provider global
final questControllerProvider = StateNotifierProvider.family<
    QuestController,
    AsyncValue<List<QuestInstance>>,
    String>((ref, userId) {
  final service = ref.read(questServiceProvider);
  return QuestController(service: service, userId: userId);
});
