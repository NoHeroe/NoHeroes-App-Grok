import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../application/auth/auth_providers.dart';
import '../../../core/widgets/glass_container.dart';
import '../../../core/theme/app_colors.dart';

class AttributesPanel extends ConsumerWidget {
  const AttributesPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authStateProvider);

    if (user == null) {
      return const Center(
        child: Text("Carregando...", style: TextStyle(color: Colors.white70)),
      );
    }

    // FUTURO: valor real
    final int pontosDisponiveis = 10;

    final attrs = {
      "Força": user.forca,
      "Destreza": user.destreza,
      "Constituição": user.constituicao,
      "Inteligência": user.inteligencia,
      "Espírito": user.espirito,
      "Carisma": user.carisma,
    };

    return Column(
      children: [
        // 🔥 Header com pontos e reset
        GlassContainer(
          opacity: 0.18,
          blur: 8,
          borderRadius: BorderRadius.circular(16),
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Pontos disponíveis: $pontosDisponiveis",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),

              // BOTÃO RESET
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: AppColors.accent1, width: 1.2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  backgroundColor: Colors.white, // texto preto
                ),
                onPressed: () {
                  // FUTURO: abrir modal e cobrar 5 gemas
                },
                child: Row(
                  children: const [
                    Icon(Icons.refresh_rounded,
                        size: 16, color: Colors.black),
                    SizedBox(width: 4),
                    Text(
                      "Reset",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 12),

        // 📌 Lista de atributos — clean e elegante
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 4),
            children: attrs.entries.map((e) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: GlassContainer(
                  opacity: 0.12,
                  blur: 6,
                  borderRadius: BorderRadius.circular(14),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Nome
                      Text(
                        e.key,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),

                      Row(
                        children: [
                          // Valor
                          Text(
                            e.value.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(width: 12),

                          // BOTÃO + (minimalista roxo)
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.accent1.withOpacity(0.22),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              icon: const Icon(
                                Icons.add_rounded,
                                color: AppColors.accent1,
                                size: 20,
                              ),
                              onPressed: () {
                                // FUTURO: adicionar ponto
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
