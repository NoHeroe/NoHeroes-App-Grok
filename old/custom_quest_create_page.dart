import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/services/quest_providers.dart';
import '../../application/quests/quest_controller.dart';

class CustomQuestCreatePage extends ConsumerStatefulWidget {
  final String userId;

  const CustomQuestCreatePage({super.key, required this.userId});

  @override
  ConsumerState<CustomQuestCreatePage> createState() =>
      _CustomQuestCreatePageState();
}

class _CustomQuestCreatePageState
    extends ConsumerState<CustomQuestCreatePage> {
  final TextEditingController titleCtrl = TextEditingController();
  final TextEditingController descCtrl = TextEditingController();
  final TextEditingController targetCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Nova Quest Personalizada"),
        backgroundColor: Colors.black.withOpacity(.4),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _field("Título", titleCtrl),
            const SizedBox(height: 12),
            _field("Descrição", descCtrl, maxLines: 3),
            const SizedBox(height: 12),
            _field("Meta (progresso)", targetCtrl,
                keyboardType: TextInputType.number),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _create(context),
              child: const Text("Criar Quest"),
            ),
          ],
        ),
      ),
    );
  }

  void _create(BuildContext context) async {
    final title = titleCtrl.text.trim();
    final desc = descCtrl.text.trim();
    final target = int.tryParse(targetCtrl.text.trim()) ?? 1;

    if (title.isEmpty) return;

    final service = ref.read(questServiceProvider);

    await service.createCustomQuest(
      userId: widget.userId,
      title: title,
      description: desc,
      targetProgress: target,
    );

    if (mounted) Navigator.pop(context);
  }

  Widget _field(String label, TextEditingController c,
      {int maxLines = 1, TextInputType keyboardType = TextInputType.text}) {
    return TextField(
      controller: c,
      maxLines: maxLines,
      keyboardType: keyboardType,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white54),
        filled: true,
        fillColor: Colors.white10,
      ),
    );
  }
}
