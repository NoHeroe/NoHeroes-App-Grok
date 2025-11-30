import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../infrastructure/db/app_db.dart';
import '../../infrastructure/repositories/quest_repository.dart';
import '../../infrastructure/repositories/auth_repo.dart';
import '../../infrastructure/repositories/inventory_repository.dart';

import 'quest_service.dart';
import '../models/quest.dart';

// ---------------------------------------------------------------
// 🛢 DB → provider
// ---------------------------------------------------------------
final questDbProvider = Provider<AppDatabase>((ref) {
  return AppDatabase();
});

// ---------------------------------------------------------------
// 📦 Repositório
// ---------------------------------------------------------------
final questRepositoryProvider = Provider<QuestRepository>((ref) {
  final db = ref.read(questDbProvider);
  return QuestRepository(db);
});

// ---------------------------------------------------------------
// ⚙️ QuestService
// ---------------------------------------------------------------
final questServiceProvider = Provider<QuestService>((ref) {
  final repo = ref.read(questRepositoryProvider);
  final auth = ref.read(authRepoProvider);
  final inv = ref.read(inventoryRepositoryProvider);
  return QuestService(repo: repo, auth: auth, inventory: inv);
});

// ---------------------------------------------------------------
// 📋 Templates (lista estática de quests)
// ---------------------------------------------------------------
final questTemplatesProvider =
    FutureProvider<List<QuestTemplate>>((ref) async {
  final repo = ref.read(questRepositoryProvider);
  return repo.getAllTemplates();
});

// ---------------------------------------------------------------
// 📋 Instâncias do usuário
// ---------------------------------------------------------------
final questInstancesProvider =
    FutureProvider.family<List<QuestInstance>, String>(
        (ref, userId) async {
  final repo = ref.read(questRepositoryProvider);
  return repo.getInstancesForUser(userId);
});
