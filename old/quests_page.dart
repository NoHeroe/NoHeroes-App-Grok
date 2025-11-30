import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/quests/quest_controller.dart';
import '../../domain/services/quest_providers.dart';
import '../../domain/models/quest.dart';
import '../../core/widgets/animated_bg.dart';

class QuestsPage extends ConsumerWidget {
  final String userId;

  const QuestsPage({super.key, required this.userId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncInstances =
        ref.watch(questControllerProvider(userId));

    final asyncTemplates = ref.watch(questTemplatesProvider);

    return Stack(
      children: [
        const AnimatedBg(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text("Quests"),
            backgroundColor: Colors.black.withOpacity(.4),
          ),
          body: asyncInstances.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => Center(
              child: Text("Erro: $e", style: const TextStyle(color: Colors.red)),
            ),
            data: (instances) {
              return asyncTemplates.when(
                loading: () =>
                    const Center(child: CircularProgressIndicator()),
                error: (e, _) => Text("Erro: $e"),
                data: (templates) {
                  final available = <QuestTemplate>[];
                  final active = <QuestInstance>[];
                  final completedToday = <QuestInstance>[];

                  final today = DateTime.now();
                  final todayInt =
                      today.year * 10000 + today.month * 100 + today.day;

                  for (final t in templates) {
                    final inst = instances
                        .firstWhere(
                            (x) => x.questId == t.id, orElse: () => null);

                    if (inst == null) {
                      available.add(t);
                    } else {
                      if (inst.status == QuestStatus.completed &&
                          inst.streakDayRef == todayInt) {
                        completedToday.add(inst);
                      } else {
                        active.add(inst);
                      }
                    }
                  }

                  return ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      const Text(
                        "Disponíveis",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      ...available.map((t) => _templateTile(context, ref, t)),

                      const SizedBox(height: 20),
                      const Text(
                        "Em andamento",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      ...active.map((i) => _instanceTile(context, ref, i)),

                      const SizedBox(height: 20),
                      const Text(
                        "Concluídas hoje",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      ...completedToday
                          .map((i) => _instanceTile(context, ref, i)),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _templateTile(
      BuildContext context, WidgetRef ref, QuestTemplate t) {
    return Card(
      color: Colors.white10,
      child: ListTile(
        title: Text(t.title, style: const TextStyle(color: Colors.white)),
        subtitle:
            Text(t.description, maxLines: 1, style: const TextStyle(color: Colors.white70)),
        trailing: ElevatedButton(
          onPressed: () {
            ref
                .read(questControllerProvider(userId).notifier)
                .startQuest(t.id);
          },
          child: const Text("Iniciar"),
        ),
      ),
    );
  }

  Widget _instanceTile(
      BuildContext context, WidgetRef ref, QuestInstance inst) {
    final progress =
        "${inst.currentProgress}/${inst.targetProgress}";

    return Card(
      color: Colors.white10,
      child: ListTile(
        title: Text(inst.questId, style: const TextStyle(color: Colors.white)),
        subtitle:
            Text(progress, style: const TextStyle(color: Colors.white70)),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                ref
                    .read(questControllerProvider(userId).notifier)
                    .addProgress(inst, 1);
              },
              icon: const Icon(Icons.add, color: Colors.greenAccent),
            ),
            IconButton(
              onPressed: () {
                ref
                    .read(questControllerProvider(userId).notifier)
                    .fail(inst);
              },
              icon: const Icon(Icons.close, color: Colors.redAccent),
            ),
          ],
        ),
      ),
    );
  }
}
