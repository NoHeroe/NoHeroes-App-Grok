import 'package:flutter/material.dart';
import '../../../core/widgets/glass_container.dart';
import '../../../application/auth/auth_providers.dart';
import '../../../domain/models/user.dart';

class StatsPanel extends StatelessWidget {
  final User? user;

  const StatsPanel({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    if (user == null) return const SizedBox.shrink();

    final xpPercent = user!.xp / 100; // temporário
    final vitality = user!.disciplineMultiplier; 
    final streak = user!.streakDays;

    return Column(
      children: [
        GlassContainer(
          padding: const EdgeInsets.all(12),
          borderRadius: BorderRadius.circular(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _bar("XP", xpPercent, Colors.deepPurpleAccent),
              const SizedBox(height: 8),
              _bar("Vitalismo", vitality / 3, Colors.blueAccent),
              const SizedBox(height: 8),
              Text("🔥 Streak: $streak dias",
                  style: const TextStyle(color: Colors.white70)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _bar(String label, double value, Color color) {
    final v = value.clamp(0.0, 1.0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(color: Colors.white70, fontSize: 13)),
        const SizedBox(height: 4),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: v,
            minHeight: 8,
            color: color,
            backgroundColor: Colors.white12,
          ),
        ),
      ],
    );
  }
}
