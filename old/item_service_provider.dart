import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../infrastructure/db/app_db_provider.dart';
import '../../features/items/data/item_repository.dart';
import '../../features/items/data/items_provider.dart';
import 'item_service.dart';

final itemServiceProvider = Provider<ItemService>((ref) {
  // Garante que o JSON será importado apenas UMA vez
  ref.watch(itemsInitializerProvider);

  // Usa SEMPRE o mesmo banco (via provider global)
  final db = ref.read(appDatabaseProvider);

  // Repositório usando o banco único
  final repo = ItemRepository(db);

  return ItemService(repo);
});
