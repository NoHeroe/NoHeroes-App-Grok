import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/models/item.dart';
import '../../../domain/models/inventory_item.dart';
import '../../inventory/controllers/inventory_controller.dart';
import '../../../domain/services/item_service_provider.dart';

class EquipItemDialog extends ConsumerWidget {
  final InventoryItem inventoryItem;
  final Item itemDefinition;

  /// slot real = itemDefinition.slot
  const EquipItemDialog({
    super.key,
    required this.inventoryItem,
    required this.itemDefinition,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final slot = itemDefinition.slot;
    final controller = ref.read(inventoryControllerProvider.notifier);

    return Dialog(
      backgroundColor: Colors.black87,
      insetPadding: const EdgeInsets.symmetric(horizontal: 22, vertical: 22),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // -------------------------------------------------------
            // HEADER
            // -------------------------------------------------------
            Text(
              itemDefinition.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "Slot: $slot",
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 13,
              ),
            ),
            const SizedBox(height: 14),
            Divider(color: Colors.white24),

            // -------------------------------------------------------
            // STATS DO ITEM NOVO
            // -------------------------------------------------------
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Atributos",
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 6),
            _statsBlock(itemDefinition),

            const SizedBox(height: 16),
            Divider(color: Colors.white24),

            // -------------------------------------------------------
            // BOTÕES
            // -------------------------------------------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: const Text(
                    "Cancelar",
                    style: TextStyle(color: Colors.white70),
                  ),
                ),

                const SizedBox(width: 8),

                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xFF8F4FFF),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () async {
                    await controller.equipItem(inv: inventoryItem);
                    Navigator.pop(context, true);
                  },
                  child: const Text(
                    "Equipar",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // ================================================================
  // STATS BLOCK (agora baseado no Item parrudo)
  // ================================================================
  Widget _statsBlock(Item item) {
    final stats = <String, dynamic>{
      "Força": item.bonusForca,
      "Destreza": item.bonusDestreza,
      "Constituição": item.bonusConstituicao,
      "Inteligência": item.bonusInteligencia,
      "Espírito": item.bonusEspirito,
      "Carisma": item.bonusCarisma,
      //
      "Força (%)": item.bonusForcaPct,
      "Destreza (%)": item.bonusDestrezaPct,
      "Constituição (%)": item.bonusConstituicaoPct,
      "Inteligência (%)": item.bonusInteligenciaPct,
      "Espírito (%)": item.bonusEspiritoPct,
      "Carisma (%)": item.bonusCarismaPct,
    };

    final filtered = stats.entries.where((e) {
      if (e.value is int && e.value == 0) return false;
      if (e.value is double && e.value == 0.0) return false;
      return true;
    }).toList();

    if (filtered.isEmpty) {
      return const Text(
        "Sem atributos relevantes.",
        style: TextStyle(color: Colors.white54, fontSize: 12),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: filtered
          .map(
            (e) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    e.key,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    e.value is double
                        ? "${(e.value * 100).toStringAsFixed(1)}%"
                        : e.value.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
