import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme/app_colors.dart';
import '../../core/widgets/glass_container.dart';
import '../../core/widgets/animated_bg.dart';
import '../../application/auth/auth_providers.dart';
import 'edit_profile_page.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authStateProvider);

    return Stack(
      children: [
        // 🌌 Fundo animado (mantém o padrão NoHeroes)
        const AnimatedBg(),

        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.black.withOpacity(0.35),
            elevation: 0,
            actions: [
              IconButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const EditProfilePage()),
    );
  },
  icon: const Icon(Icons.settings, color: Colors.white70, size: 26),
),
            ],
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ==============================
                  // 🔹 Cabeçalho (avatar + infos)
                  // ==============================
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Avatar
                      GlassContainer(
                        borderRadius: BorderRadius.circular(100),
                        blur: 10,
                        opacity: 0.25,
                        child: CircleAvatar(
                          radius: 45,
                          backgroundImage: user?.avatarPath != null
                              ? AssetImage(user!.avatarPath!)
                                  as ImageProvider<Object>
                              : const AssetImage('assets/images/default_avatar.png'),
                          backgroundColor: Colors.black.withOpacity(0.2),
                        ),
                      ),
                      const SizedBox(width: 16),

                      // Infos principais
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user?.nickname ?? 'Aventureiro',
                              style: const TextStyle(
                                fontFamily: 'CinzelDecorative',
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              user?.email ?? 'email@noheroes.local',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(height: 6),
                            GlassContainer(
                              blur: 8,
                              opacity: 0.15,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              borderRadius: BorderRadius.circular(12),
                              child: Text(
                                'Rank: ${user?.rank ?? 'E'}',
                                style: const TextStyle(
                                  fontFamily: 'Press Start 2P',
                                  fontSize: 11,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                  _divider(),

                  // ==============================
                  // 🔹 Classe, Facção, Estilo
                  // ==============================
                  const SizedBox(height: 12),
                  _infoLine('Classe', user?.classe ?? 'Guerreiro'),
                  _infoLine('Facção', user?.faccao ?? 'Legião Negra'),
                  _infoLine('Estilo', user?.estilo ?? 'Solo Player'),
                  const SizedBox(height: 16),
                  _divider(),

                  // ==============================
                  // 🔹 Altura, Peso, Idade
                  // ==============================
                  const SizedBox(height: 12),
                  _infoLine(
                    'Altura',
                    user?.height != null ? '${user!.height!.toStringAsFixed(0)} cm' : '--',
                  ),
                  _infoLine(
                    'Peso',
                    user?.weight != null ? '${user!.weight!.toStringAsFixed(0)} kg' : '--',
                  ),
                  _infoLine('Idade', _idadeFromBirth(user?.birthDate)),
                  const SizedBox(height: 16),
                  _divider(),

                  // ==============================
                  // 🔹 Biografia
                  // ==============================
                  const SizedBox(height: 20),
                  const Text(
                    'Biografia',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'CinzelDecorative',
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  GlassContainer(
                    blur: 12,
                    opacity: 0.2,
                    padding: const EdgeInsets.all(16),
                    borderRadius: BorderRadius.circular(16),
                    child: Text(
                      user?.bio?.isNotEmpty == true
                          ? '“${user!.bio}”'
                          : '“Escreva sua biografia aqui...”',
                      style: const TextStyle(
                        color: Colors.white70,
                        height: 1.4,
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  // 🔹 Linha simples com label + valor
  Widget _infoLine(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: const TextStyle(color: Colors.white70, fontSize: 15)),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 Calcula idade a partir do timestamp (birthDate)
  String _idadeFromBirth(int? birthTimestamp) {
    if (birthTimestamp == null) return '--';
    final birth = DateTime.fromMillisecondsSinceEpoch(birthTimestamp);
    final now = DateTime.now();
    int idade = now.year - birth.year;
    if (now.month < birth.month ||
        (now.month == birth.month && now.day < birth.day)) {
      idade--;
    }
    return '$idade anos';
  }

  // 🔹 Separador visual
  Widget _divider() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 1,
      color: Colors.white.withOpacity(0.1),
    );
  }
}
