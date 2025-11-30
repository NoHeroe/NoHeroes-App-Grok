import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../application/habits/habit_providers.dart';

class TodayHabitsWidget extends ConsumerWidget {
  const TodayHabitsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncHabits = ref.watch(todayHabitsProvider);

    return asyncHabits.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, st) => Text("Erro: $err"),
      data: (habits) {
        if (habits.isEmpty) {
          return const Text(
            "Nenhum hábito disponível hoje.",
            style: TextStyle(color: Colors.white),
          );
        }

        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: habits.length,
          itemBuilder: (ctx, i) {
            final h = habits[i];
            final completed = h.status == "completed";
            final progress = h.current;
            final target = h.target;

            return Card(
              color: Colors.black.withOpacity(.2),
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                title: Text(
                  "Hábito: ${h.habitId}",
                  style: const TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "$progress / $target",
                  style: const TextStyle(color: Colors.white70),
                ),
                trailing: completed
                    ? const Icon(Icons.check_circle, color: Colors.green)
                    : IconButton(
                        icon: const Icon(Icons.add, color: Colors.white),
                        onPressed: () async {
                          final srv = ref.read(habitServiceProvider);
                          await srv.updateProgress(h.id, 1);
                          ref.invalidate(todayHabitsProvider);
                        },
                      ),
              ),
            );
          },
        );
      },
    );
  }
}
