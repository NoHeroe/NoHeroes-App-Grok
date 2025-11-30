import 'package:event_bus/event_bus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/services/shadow_service.dart';
import '../../infrastructure/repositories/auth_repo.dart';
import '../../infrastructure/repositories/quest_repository.dart';
import '../../infrastructure/repositories/inventory_repository.dart';
import '../../infrastructure/repositories/habit_repository.dart';
import '../../infrastructure/repositories/journal_repository.dart';
import '../../infrastructure/repositories/shadow_repository.dart';

/// EventBus global do app (para eventos de hábitos, quests, diário, etc.)
final eventBusProvider = Provider<EventBus>((ref) {
  return EventBus();
});

/// ShadowService principal (motor da sombra)
final shadowServiceProvider = Provider<ShadowService>((ref) {
  final auth = ref.read(authRepoProvider);
  final quests = ref.read(questRepositoryProvider);
  final inventory = ref.read(inventoryRepositoryProvider);
  final habits = ref.read(habitRepositoryProvider);
  final journal = ref.read(journalRepositoryProvider);
  final shadowRepo = ref.read(shadowRepositoryProvider);
  final bus = ref.read(eventBusProvider);

  return ShadowService(
    auth: auth,
    quests: quests,
    inventory: inventory,
    habits: habits,
    journal: journal,
    shadowRepo: shadowRepo,
    bus: bus,
  );
});
