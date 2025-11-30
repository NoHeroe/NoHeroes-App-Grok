import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../infrastructure/db/app_db.dart' as db;
import 'item_repository.dart';

final itemRepositoryProvider = Provider<ItemRepository>((ref) {
  final database = db.AppDatabase();
  ref.onDispose(() => database.close());
  return ItemRepository(database);
});

/// Inicia o carregamento automático no startup
final itemsInitializerProvider = FutureProvider<void>((ref) async {
  final repo = ref.read(itemRepositoryProvider);
  await repo.initialize();
});
