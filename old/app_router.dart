import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/auth/login_page.dart';
import '../../presentation/auth/register_page.dart';
import '../../presentation/home/home_page.dart';
import '../../presentation/profile/profile_page.dart';
import '../../application/auth/auth_providers.dart';
import '../../domain/models/user.dart' as domain;

/// 🔹 Provedor principal de rotas (Splash não faz parte daqui)
final appRouterProvider = Provider<GoRouter>((ref) {
  final user = ref.watch(authStateProvider);

  return GoRouter(
    // 🚀 começa sempre no login (Splash está fora do router)
    initialLocation: '/login',
    refreshListenable: GoRouterRefreshNotifier(ref),

    routes: [
      GoRoute(path: '/login', builder: (_, __) => const LoginPage()),
      GoRoute(path: '/register', builder: (_, __) => const RegisterPage()),
      GoRoute(path: '/home', builder: (_, __) => const HomePage()),
      GoRoute(path: '/profile', builder: (_, __) => const ProfilePage()),
    ],

    /// 🔁 Redirecionamento central simples
    redirect: (context, state) {
      final location = state.matchedLocation;
      final isAuthRoute =
          location == '/login' || location == '/register';

      // 🔒 Se não logado e tenta acessar algo protegido → /login
      if (user == null && !isAuthRoute) return '/login';

      // ✅ Se já logado e tenta acessar login/register → /home
      if (user != null && isAuthRoute) return '/home';

      // caso contrário, segue normal
      return null;
    },
  );
});

/// 🔁 Atualiza o router automaticamente quando o estado de autenticação muda
class GoRouterRefreshNotifier extends ChangeNotifier {
  GoRouterRefreshNotifier(Ref ref) {
    ref.listen<domain.User?>(authStateProvider, (_, __) => notifyListeners());
  }
}
