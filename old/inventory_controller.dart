import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../infrastructure/db/app_db_provider.dart';
import '../../../infrastructure/repositories/inventory_repository.dart';
import '../../../domain/models/inventory_item.dart';
import '../../../domain/models/item.dart';
import '../../../domain/services/item_service_provider.dart';
import '../../../application/auth/auth_providers.dart';

/// 🔥 Controlador parrudo do inventário.
/// Lista mantida: **somente itens NÃO equipados**.
class InventoryController
    extends StateNotifier<AsyncValue<List<InventoryItem>>> {
  final InventoryRepository _repo;
  final ItemService _itemService;
  final Ref _ref;

  InventoryController(this._repo, this._itemService, this._ref)
      : super(const AsyncValue.loading()) {
    refresh();
  }

  // ============================================================
  // 🔄 Load / Refresh
  // ============================================================

  Future<void> refresh() async {
    try {
      final all = await _repo.getAll();
      final rawItems =
          all.map((e) => InventoryItem.fromJson(e.toJson())).toList();

      // só itens não equipados
      final unequipped =
          rawItems.where((i) => i.equippedSlot == null).toList();

      // ordena por power score (maior → menor)
      unequipped.sort((a, b) {
        final baseA = _itemService.getItemDefinitionSync(a.itemId);
        final baseB = _itemService.getItemDefinitionSync(b.itemId);

        final scoreA = _itemService.getPowerScore(baseA);
        final scoreB = _itemService.getPowerScore(baseB);

        return scoreB.compareTo(scoreA);
      });

      state = AsyncValue.data(unequipped);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  // ============================================================
  // 🛡️ EQUIPAR ITEM
  // ============================================================

  Future<void> equipItem({
    required InventoryItem inv,
  }) async {
    final user = _ref.read(authStateProvider);
    if (user == null) {
      throw Exception("Nenhum usuário logado.");
    }

    final def = await _itemService.getItemDefinition(inv.itemId);
    if (def == null) {
      throw Exception("Item base '${inv.itemId}' não encontrado.");
    }

    if (!def.canEquip(user)) {
      throw Exception("O usuário não pode equipar esse item.");
    }

    await _repo.equipItem(
      user: user,
      item: def,
      slot: def.slot,
      // ⚠️ por enquanto não mexo em stats, só passo user "como está"
      onUserUpdated: (newUser) async {
        await _ref.read(authStateProvider.notifier).setUser(newUser);
      },
    );

    // remove da lista de não-equipados
    removeLocal(inv.id);

    await refresh();
  }

  // ============================================================
  // ❌ DESEQUIPAR
  // ============================================================

  Future<void> unequip(String slot) async {
    final user = _ref.read(authStateProvider);
    if (user == null) throw Exception("Nenhum usuário logado.");

    await _repo.unequipItem(
      user: user,
      slot: slot,
      onUserUpdated: (newUser) async {
        await _ref.read(authStateProvider.notifier).setUser(newUser);
      },
    );

    await refresh();
  }

  // ============================================================
  // 📦 Remoção local (UI)
  // ============================================================

  void removeLocal(String invId) {
    state = state.whenData(
      (items) => items.where((i) => i.id != invId).toList(),
    );
  }

  // ============================================================
  // 📦 Adicionar localmente (UI)
  // ============================================================

  void addLocal(InventoryItem item) {
    state = state.whenData(
      (items) {
        final updated = [...items, item];
        updated.sort((a, b) {
          final baseA = _itemService.getItemDefinitionSync(a.itemId);
          final baseB = _itemService.getItemDefinitionSync(b.itemId);

          final scoreA = _itemService.getPowerScore(baseA);
          final scoreB = _itemService.getPowerScore(baseB);

          return scoreB.compareTo(scoreA);
        });
        return updated;
      },
    );
  }
}

// ============================================================
// PROVIDER GLOBAL
// ============================================================

final inventoryControllerProvider =
    StateNotifierProvider<InventoryController, AsyncValue<List<InventoryItem>>>(
  (ref) {
    final repo = InventoryRepository(ref.read(appDatabaseProvider));
    final service = ref.read(itemServiceProvider);
    return InventoryController(repo, service, ref);
  },
);
