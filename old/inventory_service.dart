import '../../infrastructure/repositories/inventory_repository.dart';
import '../../infrastructure/db/app_db.dart' as db;

class InventoryService {
  final InventoryRepository _repo;

  InventoryService(this._repo);

  Future<List<db.InventoryData>> loadInventory() {
    return _repo.getAll();
  }

  Future<void> add(String itemId, {int quantity = 1}) async {
    await _repo.addItem(itemId, quantity);
  }

  Future<void> removeOne(String itemId) async {
    await _repo.removeOne(itemId);
  }

  Future<void> returnItem(String itemId) async {
    await _repo.returnItem(itemId);
  }
}
