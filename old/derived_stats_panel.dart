import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/stats/derived_stats_service.dart';
import '../../../domain/stats/derived_stats.dart';
import '../../../core/widgets/glass_container.dart';

class DerivedStatsPanel extends ConsumerWidget {
  const DerivedStatsPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DerivedStats stats = ref.watch(derivedStatsProvider);

    return GlassContainer(
      opacity: 0.20,
      blur: 10,
      borderRadius: BorderRadius.circular(16),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 8),
          title: const Text(
            'Status de Combate',
            style: TextStyle(
              fontFamily: 'CinzelDecorative',
              fontSize: 14,
              letterSpacing: 0.6,
              color: Colors.white,
            ),
          ),
          collapsedIconColor: Colors.white70,
          iconColor: Colors.white,
          children: [
            const SizedBox(height: 4),

            // BLOCO 1 – Ofensivo / Defesa
            _line('Dano / Ataque', stats.attack.toString()),
            _line('Dano Mágico', stats.magicDamage.toString()),
            _line('Defesa', stats.defense.toString()),
            _line('Defesa Mágica', stats.magicDefense.toString()),
            _line('Agilidade', stats.agility.toString()),

            const Divider(color: Colors.white24),

            // BLOCO 2 – Crítico / Evasão
            _line('Taxa Crítica', '${stats.critRate.toStringAsFixed(1)}%'),
            _line('Dano Crítico', '${stats.critDamage.toStringAsFixed(1)}%'),
            _line('Esquiva', '${stats.dodge}%'),
            _line('Bloqueio', '${stats.block}%'),
            _line('Sorte', stats.luck.toString()),

            const Divider(color: Colors.white24),

            // BLOCO 3 – Economia / Regen / Pen / LS
            _line('Ganho de XP',
                '${stats.xpGainPct.toStringAsFixed(1)}%'),
            _line('Ganho de Ouro',
                '${stats.goldGainPct.toStringAsFixed(1)}%'),
            _line('Penetração de Armadura',
                stats.armorPenetration.toString()),
            _line('Roubo de Vida',
                '${stats.lifeSteal.toString()}%'),
            _line('Recuperação de Mana',
                '${stats.manaRegenPct.toStringAsFixed(1)}%'),
            _line('Recuperação de Vida',
                '${stats.lifeRegenPct.toStringAsFixed(1)}%'),

            const Divider(color: Colors.white24),

            // 🔥 Poder total no final
            _line('Poder Total', stats.powerTotal.toString()),

            const SizedBox(height: 6),
          ],
        ),
      ),
    );
  }

  Widget _line(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(color: Colors.white70, fontSize: 12),
          ),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
