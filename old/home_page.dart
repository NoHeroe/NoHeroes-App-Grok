import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../application/auth/auth_providers.dart';
import '../app_shell.dart';
import '../avatar/avatar_page.dart';
import '../inventory/inventory_page.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int _currentIndex = 0;

  // 🧭 Abas principais
  final _pages = const [
    AvatarPage(),
    Center(child: Text('💬 Guilda / Chat', style: TextStyle(fontSize: 18))),
    Center(child: Text('⚔️ Missões (Quests)', style: TextStyle(fontSize: 18))),
    InventoryPage(),
    Center(child: Text('🏪 Loja', style: TextStyle(fontSize: 18))),
  ];

  @override
  Widget build(BuildContext context) {
    final repo = ref.read(authRepoProvider);

    return AppShell(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(0.35),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'NoHeroes',
            style: TextStyle(
              fontFamily: 'CinzelDecorative',
              fontSize: 22,
              letterSpacing: 1.3,
            ),
          ),
        ),
        // 🧭 Drawer lateral (configurações / perfil / logout)
        drawer: Drawer(
          backgroundColor: Colors.black.withOpacity(0.6),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.black54),
                child: Center(
                  child: Text(
                    '⚔️ NoHeroes',
                    style: TextStyle(
                      fontFamily: 'CinzelDecorative',
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading:
                    const Icon(Icons.person_outline, color: Colors.white70),
                title: const Text(
                  'Perfil',
                  style: TextStyle(color: Colors.white70),
                ),
                onTap: () {
                  Navigator.pop(context);
                  context.push('/profile'); // abre a página de perfil
                },
              ),
              const Divider(color: Colors.white24),
              ListTile(
                leading: const Icon(Icons.logout, color: Colors.white70),
                title: const Text(
                  'Sair',
                  style: TextStyle(color: Colors.white70),
                ),
                onTap: () async {
                  await repo.logout();
                  if (context.mounted) context.go('/login');
                },
              ),
            ],
          ),
        ),
        // 🧩 Corpo principal (animação suave entre abas)
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: _pages[_currentIndex],
        ),
        // 🧱 Barra inferior de navegação (5 abas)
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            border: const Border(top: BorderSide(color: Colors.white10)),
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedItemColor: const Color(0xFF8F4FFF),
            unselectedItemColor: Colors.white54,
            type: BottomNavigationBarType.fixed,
            onTap: (i) => setState(() => _currentIndex = i),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Avatar',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline),
                label: 'Guilda',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.flag_outlined),
                label: 'Quests',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.inventory_2_outlined),
                label: 'Inventário',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.storefront_outlined),
                label: 'Loja',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
