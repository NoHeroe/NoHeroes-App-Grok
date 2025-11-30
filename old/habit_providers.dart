import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../infrastructure/db/app_db.dart';
import '../../infrastructure/repositories/habit_repository.dart';
import '../../domain/services/habit_service.dart';
import '../auth/auth_providers.dart';

/// Repositório
final habitRepositoryProvider = Provider<HabitRepository>((ref) {
  final db = ref.watch(appDatabaseProvider);
  return HabitRepository(db);
});

/// Serviço (engine)
final habitServiceProvider = Provider<HabitService>((ref) {
  final repo = ref.watch(habitRepositoryProvider);
  final auth = ref.watch(authRepoProvider);
  return HabitService(repo: repo, auth: auth);
});

/// Carrega os hábitos DE HOJE
final todayHabitsProvider = FutureProvider((ref) async {
  final service = ref.watch(habitServiceProvider);
  return service.loadTodayHabits();
});
