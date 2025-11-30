import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import 'core/routing/app_router.dart';
import 'core/theme/app_theme.dart';
import 'presentation/splash/splash_page.dart';

// ========================
// PROVIDERS GLOBAIS (NUNCA MAIS CRIE MANUALMENTE)
// ========================

final databaseProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  // Garante que o banco seja fechado quando o app fechar
  ref.onDispose(() => db.close());
  return db;
});

final questRepositoryProvider = Provider<QuestRepository>((ref) {
  final db = ref.watch(databaseProvider);
  return QuestRepository(db);
});

final questLoaderServiceProvider = Provider<QuestLoaderService>((ref) {
  final repo = ref.watch(questRepositoryProvider);
  final db = ref.watch(databaseProvider);
  return QuestLoaderService(QuestJsonDataSource(repo: repo, db: db));
});

// Inicialização única das Shadow Quests (roda só uma vez por vida do app)
final questInitializationProvider = FutureProvider<void>((ref) async {
  final loader = ref.watch(questLoaderServiceProvider);
  await loader.init();
  Logger.root.info('Shadow Quests carregadas com sucesso!');
});

// Inicialização dos itens (você já tem esse provider, só vamos usá-lo direito)
final appInitializationProvider = FutureProvider<void>((ref) async {
  // Carrega quests + itens em paralelo (rápido!)
  await Future.wait([
    ref.read(questInitializationProvider.future),
    ref.read(itemsInitializerProvider.future),
  ]);
});

// ========================
// APP PRINCIPAL
// ========================

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Logging bonito (opcional, mas ajuda demais no debug soulslike)
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    debugPrint('[\( {record.level.name}] \){record.time} — ${record.message}');
  });

  runApp(
    const ProviderScope(
      child: NoHeroesApp(),
    ),
  );
}

class NoHeroesApp extends ConsumerWidget {
  const NoHeroesApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    // Escuta a inicialização completa (quests + itens)
    final initAsync = ref.watch(appInitializationProvider);

    return initAsync.when(
      loading: () => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(), // Splash aparece enquanto carrega TUDO
      ),
      error: (err, stack) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Text(
              'Erro fatal nas sombras:\n$err',
              style: const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      data: (_) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'NoHeroes',
        theme: AppTheme.dark,
        routerConfig: router,
      ),
    );
  }
}