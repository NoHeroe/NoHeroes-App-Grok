import 'package:flutter/material.dart';
import '../../../domain/models/item.dart';
import '../../../domain/models/inventory_item.dart';
import 'rarity_colors.dart';

/// Slot universal — suporta tanto itens equipados quanto itens do inventário.
///
/// - InventoryItem?  => instância real
/// - Item?           => item base (definição)
///
/// O sistema usa sempre o item base para:
/// - raridade
/// - nome
/// - tier
/// - mesh/visualId
///
/// E usa InventoryItem para:
/// - quantidade (stack)
/// - durabilidade
/// - cooldown
/// - uniqueData (sombrios)
///
class SlotWidget extends StatelessWidget {
  final InventoryItem? inv;
  final Item? item;
  final bool locked;
  final VoidCallback? onTap;
  final VoidCallback? onBuy;

  const SlotWidget({
    super.key,
    this.inv,
    this.item,
    this.onTap,
    this.locked = false,
    this.onBuy,
  });

  const SlotWidget.empty({super.key})
      : inv = null,
        item = null,
        onTap = null,
        onBuy = null,
        locked = false;

  const SlotWidget.locked({super.key, this.onBuy})
      : inv = null,
        item = null,
        onTap = null,
        locked = true;

  @override
  Widget build(BuildContext context) {
    // ---------------------------------------------------
    // #1 – SLOT BLOQUEADO
    // ---------------------------------------------------
    if (locked) {
      return GestureDetector(
        onTap: onBuy,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.25),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade600),
          ),
          child: const Center(
            child: Icon(Icons.lock, color: Colors.white70, size: 20),
          ),
        ),
      );
    }

    // ---------------------------------------------------
    // #2 – SLOT VAZIO
    // ---------------------------------------------------
    if (item == null || inv == null) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white24),
        ),
      );
    }

    // ---------------------------------------------------
    // #3 – SLOT COM ITEM
    // ---------------------------------------------------
    final rarity = item!.rarity ?? "comum";
    final color = getRarityColor(rarity);
    final quantity = inv!.quantity;
    final icon = _getItemIconPath(item!);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.25),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: color, width: 2),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(.4),
              blurRadius: 10,
              spreadRadius: 1,
            )
          ],
        ),
        child: Stack(
          children: [
            Center(
              child: _buildImage(icon),
            ),

            // QUANTIDADE (se stack)
            if (quantity > 1)
              Positioned(
                bottom: 4,
                right: 4,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 4, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    quantity.toString(),
                    style: const TextStyle(
                        color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  // ====================================================
  //    FUNÇÕES DE SUPORTE
  // ====================================================

  /// Define o ícone do item.
  /// Prioridade:
  /// 1. visualId (icone específico)
  /// 2. meshId (modelo base → define icone do mesh)
  /// 3. fallback para `id.png`
  String _getItemIconPath(Item item) {
    if (item.visualId != null && item.visualId!.isNotEmpty) {
      return "icons/${item.visualId!}.png";
    }
    if (item.meshId != null && item.meshId!.isNotEmpty) {
      return "icons/mesh/${item.meshId!}.png";
    }
    return "icons/items/${item.id}.png";
  }

  Widget _buildImage(String asset) {
    return Image.asset(
      "assets/$asset",
      width: 42,
      height: 42,
      fit: BoxFit.contain,
      errorBuilder: (_, __, ___) {
        return const Icon(Icons.help_outline, color: Colors.white38);
      },
    );
  }
}
