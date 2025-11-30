import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/models/equip_slot.dart';
import '../../../domain/models/equipment_provider.dart';
import '../../../core/widgets/glass_container.dart';

class EquipmentSlotWidget extends ConsumerWidget {
  final EquipSlot slot;

  const EquipmentSlotWidget({super.key, required this.slot});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final equipment = ref.watch(equipmentProvider);
    final item = equipment.slots[slot.key];

    // Ícones internos para cada slot
    final icon = _iconForSlot(slot);

    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (_) => _EquipModal(slot: slot),
        );
      },
      child: Column(
        children: [
          GlassContainer(
            opacity: 0.18,
            blur: 8,
            borderRadius: BorderRadius.circular(14),
            padding: EdgeInsets.zero,
            child: Container(
              width: 52,
              height: 52,
              alignment: Alignment.center,
              child: item == null
                  ? Icon(icon, color: Colors.white70, size: 26)
                  : Icon(icon, color: Colors.amberAccent, size: 28),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            slot.name.toUpperCase(),
            style: const TextStyle(color: Colors.white54, fontSize: 10),
          )
        ],
      ),
    );
  }

  IconData _iconForSlot(EquipSlot slot) {
    switch (slot) {
      case EquipSlot.capacete:
        return Icons.military_tech;
      case EquipSlot.peitoral:
        return Icons.checkroom;
      case EquipSlot.luvas:
        return Icons.back_hand;
      case EquipSlot.botas:
        return Icons.directions_walk;
      case EquipSlot.calca:
        return Icons.texture;
      case EquipSlot.ombreira:
        return Icons.security;
      case EquipSlot.anel:
        return Icons.brightness_7;
      case EquipSlot.cinto:
        return Icons.drag_handle;
      case EquipSlot.reliquia:
        return Icons.auto_awesome;
      case EquipSlot.mao1:
        return Icons.gavel_rounded;
      case EquipSlot.mao2:
        return Icons.shield_outlined;
    }
  }
}
