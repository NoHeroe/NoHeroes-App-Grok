import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:noheroes_app/core/widgets/animated_bg.dart';
import 'package:noheroes_app/application/auth/auth_providers.dart';
import 'package:noheroes_app/domain/models/user.dart' as domain;

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fade;
  bool _navigated = false; // 👈 evita duplo redirecionamento

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4), // 2s in + 1s hold + 1s out
    );

    _fade = TweenSequence([
      TweenSequenceItem(
        tween: Tween(begin: 0.0, end: 1.0)
            .chain(CurveTween(curve: Curves.easeInOut)),
        weight: 2, // 2s fade in
      ),
      TweenSequenceItem(tween: ConstantTween(1.0), weight: 1), // 1s visível
      TweenSequenceItem(
        tween: Tween(begin: 1.0, end: 0.0)
            .chain(CurveTween(curve: Curves.easeInOut)),
        weight: 1, // 1s fade out
      ),
    ]).animate(_controller);

    _controller.forward();

    _controller.addStatusListener((status) async {
      if (status == AnimationStatus.completed && !_navigated && mounted) {
        _navigated = true; // ✅ impede repetir
        await Future.delayed(const Duration(milliseconds: 200));
        await _goNext();
      }
    });
  }

  Future<void> _goNext() async {
    final repo = ref.read(authRepoProvider);
    final dbUser = await repo.currentUser;
    if (!mounted) return;

    if (dbUser != null) {
      final user = domain.User(
        id: dbUser.id,
        nickname: dbUser.nickname,
        email: dbUser.email,
        level: dbUser.level,
        xp: dbUser.xp,
        gold: dbUser.gold,
        streakDays: dbUser.streakDays,
        disciplineMultiplier: dbUser.disciplineMultiplier,
        forca: dbUser.forca,
        destreza: dbUser.destreza,
        constituicao: dbUser.constituicao,
        inteligencia: dbUser.inteligencia,
        espirito: dbUser.espirito,
        carisma: dbUser.carisma,
        estilo: dbUser.estilo,
        createdAt: dbUser.createdAt,
        classe: dbUser.classe,
        faccao: dbUser.faccao,
        rank: dbUser.rank,
      );

      ref.read(authStateProvider.notifier).state = user;
      if (mounted) context.go('/home');
    } else {
      if (mounted) context.go('/login');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          const AnimatedBg(),
          Center(
            child: FadeTransition(
              opacity: _fade,
              child: Image.asset(
                'assets/images/noheroes_logo.png',
                width: 180,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
