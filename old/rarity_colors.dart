import 'package:flutter/material.dart';

class RarityColors {
  static const comum = Color(0xFFFFFFFF);
  static const raro = Color(0xFF00FF88);
  static const epico = Color(0xFF1E90FF);
  static const lendario = Color(0xFFFACC15);
  static const sombrio = Color(0xFF8A2BE2);
  static const secreto = Colors.transparent; // tratado com animação
}

Color getRarityColor(String rarity) {
  switch (rarity.toLowerCase()) {
    case 'raro':
      return RarityColors.raro;
    case 'épico':
    case 'epico':
      return RarityColors.epico;
    case 'lendário':
    case 'lendario':
      return RarityColors.lendario;
    case 'sombrio':
      return RarityColors.sombrio;
    case 'secreto':
      return RarityColors.secreto;
    default:
      return RarityColors.comum;
  }
}
