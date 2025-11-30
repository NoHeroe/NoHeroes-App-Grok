import 'package:flutter/material.dart';
import 'rarity_colors.dart';

class ItemModal extends StatelessWidget {
  final String name;
  final String rarity;
  final String description;
  final String? image;

  const ItemModal({
    super.key,
    required this.name,
    required this.rarity,
    required this.description,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    final color = getRarityColor(rarity);

    return Dialog(
      backgroundColor: const Color(0xFF111111),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(name,
                style: TextStyle(
                  fontFamily: "Cinzel Decorative",
                  fontSize: 20,
                  color: color,
                )),
            const SizedBox(height: 6),
            Text(rarity,
                style: TextStyle(
                  fontSize: 14,
                  color: color.withOpacity(.8),
                )),
            const SizedBox(height: 12),
            if (image != null)
              Image.network(
                image!,
                width: 180,
                height: 180,
                fit: BoxFit.contain,
              ),
            const SizedBox(height: 12),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text("Fechar"),
            ),
          ],
        ),
      ),
    );
  }
}
