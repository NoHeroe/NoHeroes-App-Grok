import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/auth/auth_providers.dart';
import '../../core/widgets/animated_bg.dart';
import '../../core/widgets/glass_container.dart';

import 'widgets/character_viewer.dart';
import 'widgets/stats_panel.dart';
import 'widgets/attributes_panel.dart';
import 'widgets/equipment_panel.dart';
import 'widgets/skills_panel.dart';
import 'widgets/derived_stats_panel.dart';
import 'widgets/equip_item_dialog.dart';

import '../../domain/classes/user_class_provider.dart';
import '../../domain/models/equipment_provider.dart';
import '../../domain/models/equipment_model.dart';
import '../../infrastructure/db/app_db.dart' as db;
import '../inventory/controllers/inventory_controller.dart';

class AvatarPage extends ConsumerStatefulWidget {
  const AvatarPage({super.key});

  @override
  ConsumerState<AvatarPage> createState() => _AvatarPageState();
}

class _AvatarPageState extends ConsumerState<AvatarPage>
    with SingleTickerProviderStateMixin {
  late TabController _tab;

  @override
  void initState() {
    super.initState();
    _tab = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(authStateProvider);

    final genderIcon = user?.gender == "female"
        ? const Icon(Icons.female, color: Colors.redAccent, size: 26)
        : const Icon(Icons.male, color: Colors.lightBlueAccent, size: 26);

    return Stack(
      children: [
        const AnimatedBg(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.black.withOpacity(0.3),
            elevation: 0,
            centerTitle: true,
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Personagem",
                  style: TextStyle(
                    fontFamily: "CinzelDecorative",
                    fontSize: 22,
                    letterSpacing: 1.3,
                  ),
                ),
                const SizedBox(width: 8),
                genderIcon,
              ],
            ),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              children: [
                StatsPanel(user: user),
                const SizedBox(height: 20),
                _buildInfoBlock(user),
                const SizedBox(height: 20),
                _build3DWithEquipment(),
                const SizedBox(height: 16),
                const DerivedStatsPanel(),
                const SizedBox(height: 20),
                _buildTabs(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // =====================================================================
  //   BLOCO: INFO DO PERSONAGEM
  // =====================================================================
  Widget _buildInfoBlock(user) {
    final classe = ref.watch(userClassProvider);
    final branch = ref.watch(userBranchProvider);

    return GlassContainer(
      opacity: 0.18,
      blur: 10,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      borderRadius: BorderRadius.circular(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _infoLine("Classe", classe?.name ?? (user?.classe ?? "—")),
          if (branch != null) const SizedBox(height: 6),
          if (branch != null) _infoLine("Especialização", branch.name),
          const SizedBox(height: 6),
          _infoLine("Facção", user?.faccao ?? "—"),
          const SizedBox(height: 6),
          _infoLine("Estilo", _formatStyle(user?.estilo)),
        ],
      ),
    );
  }

  String _formatStyle(String? estilo) {
    switch (estilo) {
      case "solo":
        return "Solo Player";
      case "duo":
        return "Duo Co-op";
      case "team":
        return "Team Play";
      default:
        return "—";
    }
  }

  Widget _infoLine(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 14,
            letterSpacing: 0.4,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  // =====================================================================
  //   SLOTS + VIEWER
  // =====================================================================
  Widget _build3DWithEquipment() {
    return GlassContainer(
      opacity: 0.18,
      blur: 10,
      padding: const EdgeInsets.all(16),
      borderRadius: BorderRadius.circular(20),
      child: Column(
        children: [
          Row(
            children: [
              // LEFT SIDE SLOTS
              Expanded(
                child: Column(
                  children: [
                    _slot("Capacete", "capacete"),
                    const SizedBox(height: 8),
                    _slot("Peitoral", "peitoral"),
                    const SizedBox(height: 8),
                    _slot("Luvas", "luvas"),
                    const SizedBox(height: 8),
                    _slot("Botas", "botas"),
                  ],
                ),
              ),

              const SizedBox(
                width: 180,
                height: 260,
                child: CharacterViewer(),
              ),

              // RIGHT SIDE SLOTS
              Expanded(
                child: Column(
                  children: [
                    _slot("Calça", "calca"),
                    const SizedBox(height: 8),
                    _slot("Ombreira", "ombreira"),
                    const SizedBox(height: 8),
                    _slot("Anel", "anel"),
                    const SizedBox(height: 8),
                    _slot("Cinto", "cinto"),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          // RELÍQUIA
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _slot("Relíquia", "reliquia"),
            ],
          ),

          const SizedBox(height: 12),

          // ARMAS
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _slot("Mão 1", "mao1"),
              const SizedBox(width: 12),
              _slot("Mão 2", "mao2"),
            ],
          ),
        ],
      ),
    );
  }

  // =====================================================================
  //   SLOT FUNCIONAL (equipa/desequipa + integra inventário)
  // =====================================================================
  Widget _slot(String label, String key) {
    final equipSet = ref.watch(equipmentProvider);
    final dynamic rawItem = equipSet.slots[key];
    final db.Item? equippedItem = rawItem is db.Item ? rawItem : null;
    final bool isEquipped = equippedItem != null;

    return GestureDetector(
      onTap: () {
  if (isEquipped) {
    // Desequipar → volta pro inventário
    final notifierInv = ref.read(inventoryControllerProvider.notifier);
    notifierInv.addItem(equippedItem!);

    final current = ref.read(equipmentProvider);
    final newSlots = Map<String, dynamic>.from(current.slots);
    newSlots[key] = null;

    ref.read(equipmentProvider.notifier).state = EquipmentSet(newSlots);
  } else {
    // Slot vazio → nada acontece (equipar só via inventário)
    return;
  }
},
child: Column(
        children: [
          GlassContainer(
            padding: EdgeInsets.zero,
            opacity: isEquipped ? 0.35 : 0.20,
            blur: 8,
            borderRadius: BorderRadius.circular(14),
            child: SizedBox(
              width: 52,
              height: 52,
              child: Icon(
                _iconFor(key),
                size: 24,
                color: isEquipped ? Colors.amberAccent : Colors.white70,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            isEquipped && equippedItem != null ? equippedItem.name : label,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white54, fontSize: 11),
          ),
        ],
      ),
    );
  }

  IconData _iconFor(String key) {
    switch (key) {
      case "capacete":
        return Icons.military_tech;
      case "peitoral":
        return Icons.checkroom;
      case "luvas":
        return Icons.back_hand;
      case "botas":
        return Icons.directions_walk;
      case "calca":
        return Icons.texture;
      case "ombreira":
        return Icons.security;
      case "anel":
        return Icons.brightness_5;
      case "cinto":
        return Icons.drag_handle;
      case "reliquia":
        return Icons.auto_awesome;
      case "mao1":
        return Icons.gavel_rounded;
      case "mao2":
        return Icons.shield_outlined;
      default:
        return Icons.square_outlined;
    }
  }

  // =====================================================================
  //   TABS
  // =====================================================================
  Widget _buildTabs() {
    return Column(
      children: [
        GlassContainer(
          padding: EdgeInsets.zero,
          opacity: 0.18,
          blur: 8,
          borderRadius: BorderRadius.circular(16),
          child: TabBar(
            controller: _tab,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white54,
            tabs: const [
              Tab(text: "Atributos"),
              Tab(text: "Equipamentos"),
              Tab(text: "Skills"),
            ],
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 260,
          child: TabBarView(
            controller: _tab,
            children: const [
              AttributesPanel(),
              EquipmentPanel(),
              SkillsPanel(),
            ],
          ),
        )
      ],
    );
  }
}
