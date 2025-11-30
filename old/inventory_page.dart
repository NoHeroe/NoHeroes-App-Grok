import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/models/item.dart';
import '../../domain/models/inventory_item.dart';
import '../../presentation/inventory/controllers/inventory_controller.dart';
import '../../domain/services/item_service_provider.dart';
import '../../core/widgets/animated_bg.dart';
import '../avatar/widgets/equip_item_dialog.dart';
import 'widgets/slot_widget.dart';

class InventoryPage extends ConsumerStatefulWidget {
  const InventoryPage({super.key});

  @override
  ConsumerState<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends ConsumerState<InventoryPage> {
  String _filter = "Todos";

  @override
  Widget build(BuildContext context) {
    final asyncInv = ref.watch(inventoryControllerProvider);
    final itemService = ref.read(itemServiceProvider);

    return Stack(
      children: [
        const AnimatedBg(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.black.withOpacity(0.35),
            elevation: 0,
            centerTitle: true,
            title: const Text(
              "Inventário",
              style: TextStyle(
                fontFamily: "CinzelDecorative",
                fontSize: 18,
              ),
            ),
          ),

          body: asyncInv.when(
            loading: () =>
                const Center(child: CircularProgressIndicator(color: Colors.white)),
            error: (e, _) =>
                Center(child: Text("Erro: $e", style: const TextStyle(color: Colors.white70))),
            data: (invItems) {

              /// Carrega cada item parrudo do catálogo
              final items = invItems.map((inv) {
                final def = itemService.getItemDefinitionSync(inv.itemId);
                if (def == null) return null;
                return (inv, def);
              }).whereType<(InventoryItem, Item)>().toList();

              /// APLICA FILTRO
              List<(InventoryItem, Item)> filtered = List.from(items);

              switch (_filter) {
                case "Nome":
                  filtered.sort((a, b) => a.$2.name.compareTo(b.$2.name));
                  break;

                case "Raridade":
                  filtered.sort((a, b) =>
                      (a.$2.rarity ?? "").compareTo(b.$2.rarity ?? ""));
                  break;

                case "Tipo":
  filtered.sort((a, b) => a.$2.type.name.compareTo(b.$2.type.name));
  break;
              }

              const unlockedSlots = 100;
              const totalSlots = unlockedSlots + 5; // +5 bloqueados

              return ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  _buildFilter(),

                  const SizedBox(height: 16),

                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: totalSlots,
                    itemBuilder: (_, index) {
                      // ---------------------------------------------------
                      // SLOT COM ITEM
                      // ---------------------------------------------------
                      if (index < filtered.length) {
                        final (inv, def) = filtered[index];
                        return SlotWidget(
                          inv: inv,
                          item: def,
                          onTap: () => _openItem(context, inv, def),
                        );
                      }

                      // ---------------------------------------------------
                      // SLOT VAZIO
                      // ---------------------------------------------------
                      if (index < unlockedSlots) {
                        return const SlotWidget.empty();
                      }

                      // ---------------------------------------------------
                      // SLOT BLOQUEADO
                      // ---------------------------------------------------
                      return SlotWidget.locked(
                        onBuy: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Comprar mais slots em breve."),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  // ============================================================
  // ABRIR ITEM NO INVENTÁRIO
  // ============================================================
  Future<void> _openItem(
    BuildContext context,
    InventoryItem inv,
    Item def,
  ) async {
    final controller = ref.read(inventoryControllerProvider.notifier);

    // Se o item NÃO é equipável → modal simples
    if (!def.isEquipable) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          backgroundColor: Colors.black87,
          title: Text(def.name, style: const TextStyle(color: Colors.white)),
          content: Text(def.description, style: const TextStyle(color: Colors.white70)),
        ),
      );
      return;
    }

    // Item equipável → abre modal parrudo
    final equipped = await showDialog<bool>(
      context: context,
      builder: (_) => EquipItemDialog(
        inventoryItem: inv,
        itemDefinition: def,
      ),
    );

    if (equipped == true) {
      controller.removeLocal(inv.id);
      setState(() {});
    }
  }

  // ============================================================
  // FILTRO BÁSICO
  // ============================================================
  Widget _buildFilter() {
    return DropdownButtonFormField(
      dropdownColor: Colors.black87,
      value: _filter,
      items: const [
        DropdownMenuItem(value: "Todos", child: Text("Todos")),
        DropdownMenuItem(value: "Nome", child: Text("Ordenar por Nome")),
        DropdownMenuItem(value: "Raridade", child: Text("Ordenar por Raridade")),
        DropdownMenuItem(value: "Tipo", child: Text("Ordenar por Tipo")),
      ],
      onChanged: (v) => setState(() => _filter = v ?? "Todos"),
      decoration: InputDecoration(
        labelText: "Filtro",
        labelStyle: const TextStyle(color: Colors.white70),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white24),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      style: const TextStyle(color: Colors.white),
    );
  }
}
