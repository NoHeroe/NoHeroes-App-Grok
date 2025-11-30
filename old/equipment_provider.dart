import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'equipment_model.dart';
import 'equip_slot.dart';

final equipmentProvider =
    StateProvider<EquipmentSet>((ref) {
  return EquipmentSet({
    for (final slot in EquipSlot.values) slot.key: null,
  });
});

void equipItem(WidgetRef ref, EquipSlot slot, Map<String, dynamic> itemJson) {
  final current = ref.read(equipmentProvider);
  final updated = Map<String, dynamic>.from(current.slots);

  updated[slot.key] = itemJson;

  ref.read(equipmentProvider.notifier).state = EquipmentSet(updated);
}

void unequipItem(WidgetRef ref, EquipSlot slot) {
  final current = ref.read(equipmentProvider);
  final updated = Map<String, dynamic>.from(current.slots);

  updated[slot.key] = null;

  ref.read(equipmentProvider.notifier).state = EquipmentSet(updated);
}
