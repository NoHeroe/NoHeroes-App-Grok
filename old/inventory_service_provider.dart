import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../infrastructure/db/app_db_provider.dart';
import '../../infrastructure/repositories/inventory_repository.dart';
import 'inventory_service.dart';

/// Provider do repositório de inventário usando sempre o MESMO banco
final inventoryRepositoryProvider = Provider<InventoryRepository>((ref) {
  final db = ref.read(appDatabaseProvider);
  return InventoryRepository(db);
});

/// Provider do serviço de inventário (regra de negócio)
final inventoryServiceProvider = Provider<InventoryService>((ref) {
  final repo = ref.watch(inventoryRepositoryProvider);
  return InventoryService(repo);
});
