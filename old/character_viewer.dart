import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class CharacterViewer extends StatelessWidget {
  const CharacterViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        color: Colors.black.withOpacity(0.2),
        child: const ModelViewer(
          src: 'assets/models/character.glb',
          alt: 'Modelo 3D do personagem',
          ar: false,
          autoPlay: true,
          autoRotate: true,
          cameraControls: true,
          disableZoom: true,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
