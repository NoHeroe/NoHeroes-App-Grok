import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'tables/users.dart';
import 'tables/quest_tables.dart';
import 'tables/items.dart';
import 'tables/inventory.dart';
import 'tables/logs.dart';
import 'tables/achievements.dart';
import 'tables/journal_tables.dart';
import 'tables/habit_tables.dart';
import 'tables/shadow_tables.dart';


part 'app_db.g.dart';

/// ============================================================
/// 🛢️ AppDatabase
/// Banco de dados oficial do NoHeroes App
/// SQLite + Drift (ORM)
/// ============================================================
///
/// Tabelas registradas:
///  - Users
///  - Quests
///  - Items
///  - Inventory
///  - QuestLogs
///  - Achievements
///
/// O banco é criado automaticamente em:
///    /data/user/0/<app>/noheroes.db
///
@DriftDatabase(
  tables: [
    Users,
    QuestTemplates,
    QuestInstances,
    Items,
    Inventory,
    QuestLogs,
    Achievements,
    JournalEntries,
    JournalSections,
    HabitDefinitions,
    HabitInstances,
    ShadowProfiles,
    ShadowEvents,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  /// 🔥 Limpa todas as tabelas.
  /// Apenas para depuração/admin.
  Future<void> clearAll() async {
    for (final table in allTables) {
      await delete(table).go();
    }
  }
}

/// ============================================================
/// 📦 Conexão com o SQLite (LazyDatabase)
/// ============================================================
///
/// Envia a criação do DB para uma isolate separada,
/// garantindo que a UI não trave.
///
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final path = p.join(dir.path, 'noheroes.db');

      return NativeDatabase.createInBackground(
        File(path),
        logStatements: false, // desabilite logs pesados em produção
      );
    } catch (e) {
      // fallback para evitar crash caso o provider falhe
      final file = File('noheroes_fallback.db');
      return NativeDatabase.createInBackground(file);
    }
  });
}
