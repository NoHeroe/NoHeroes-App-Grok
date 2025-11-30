import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../application/quests/quest_controller.dart';
import '../../../domain/models/quest.dart';

class ProgressModal extends ConsumerStatefulWidget {
  final String userId;
  final QuestInstance instance;

  const ProgressModal({
    super.key,
    required this.userId,
    required this.instance,
  });

  @override
  ConsumerState<ProgressModal> createState() => _ProgressModalState();
}

class _ProgressModalState extends ConsumerState<ProgressModal> {
  int counter = 1;
  int timerSeconds = 0;
  final TextEditingController writingCtrl = TextEditingController();
  final TextEditingController readingCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final inst = widget.instance;

    return Dialog(
      backgroundColor: Colors.black87,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Progresso → ${inst.questId}",
                style: const TextStyle(color: Colors.white, fontSize: 18)),

            const SizedBox(height: 20),

            _buildTrackingWidget(),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () => _submit(context),
              child: const Text("Atualizar"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrackingWidget() {
    final template = ref
        .read(questServiceProvider)
        .repo
        .getTemplateByIdSync(widget.instance.questId);

    switch (template?.trackingType) {
      case QuestTrackingType.counter:
        return Column(
          children: [
            const Text("Adicionar quantidade:",
                style: TextStyle(color: Colors.white)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => setState(() {
                    if (counter > 1) counter--;
                  }),
                  icon: const Icon(Icons.remove, color: Colors.white),
                ),
                Text("$counter",
                    style: const TextStyle(color: Colors.white, fontSize: 22)),
                IconButton(
                  onPressed: () => setState(() {
                    counter++;
                  }),
                  icon: const Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ],
        );

      case QuestTrackingType.timer:
        return Column(
          children: [
            const Text("Adicionar minutos:",
                style: TextStyle(color: Colors.white)),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (v) =>
                  timerSeconds = int.tryParse(v.trim()) ?? 0,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                hintText: "Ex: 10",
                hintStyle: TextStyle(color: Colors.white54),
              ),
            ),
          ],
        );

      case QuestTrackingType.writing:
        return Column(
          children: [
            const Text("Escreva (linhas/palavras):",
                style: TextStyle(color: Colors.white)),
            const SizedBox(height: 10),
            TextField(
              controller: writingCtrl,
              maxLines: 5,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white10,
              ),
            ),
          ],
        );

      case QuestTrackingType.reading:
        return Column(
          children: [
            const Text("Páginas lidas:",
                style: TextStyle(color: Colors.white)),
            TextField(
              controller: readingCtrl,
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                hintText: "Ex: 5",
                hintStyle: TextStyle(color: Colors.white54),
              ),
            ),
          ],
        );

      default:
        return const Text(
          "Marque como concluída.",
          style: TextStyle(color: Colors.white70),
        );
    }
  }

  void _submit(BuildContext context) async {
    final controller =
        ref.read(questControllerProvider(widget.userId).notifier);

    int value = 1;

    // TRACKING SWITCH
    final template = await ref
        .read(questServiceProvider)
        .repo
        .getTemplateById(widget.instance.questId);

    switch (template?.trackingType) {
      case QuestTrackingType.counter:
        value = counter;
        break;

      case QuestTrackingType.timer:
        value = timerSeconds;
        break;

      case QuestTrackingType.writing:
        value = writingCtrl.text.split("\n").length;
        break;

      case QuestTrackingType.reading:
        value = int.tryParse(readingCtrl.text.trim()) ?? 0;
        break;

      default:
        value = 1;
    }

    await controller.addProgress(widget.instance, value);
    Navigator.pop(context);
  }
}
