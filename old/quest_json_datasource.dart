import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import '../../domain/models/quest.dart';
import '../db/app_db.dart';
import '../repositories/quest_repository.dart';

/// ===============================================================
/// 📁 QuestJsonDataSource (PRO)
/// Carrega JSONs oficiais e insere no banco:
///   ✔ shadow_quests.json
///   ✔ story_quests.json   (futuro)
///   ✔ daily_quests.json   (futuro)
///   ✔ boss_quests.json    (futuro)
///
/// Retorna um Summary com:
///   - quantas quests foram inseridas
///   - quantas foram ignoradas
///
/// Suporta forceReload = true para DEV.
/// ===============================================================

class QuestLoadSummary {
  final int totalInserted;
  final int totalSkipped;

  QuestLoadSummary({
    required this.totalInserted,
    required this.totalSkipped,
  });

  QuestLoadSummary operator +(QuestLoadSummary other) {
    return QuestLoadSummary(
      totalInserted: totalInserted + other.totalInserted,
      totalSkipped: totalSkipped + other.totalSkipped,
    );
  }
}

class QuestJsonDataSource {
  final QuestRepository repo;
  final AppDatabase db;

  QuestJsonDataSource({
    required this.repo,
    required this.db,
  });

  // ===============================================================
  // 🔥 Carrega e processa um arquivo JSON
  // ===============================================================
  Future<QuestLoadSummary> loadTemplatesFromAsset(
    String assetPath, {
    bool forceReload = false,
  }) async {
    try {
      final raw = await rootBundle.loadString(assetPath);

      final List<dynamic> list = jsonDecode(raw);
      int inserted = 0;
      int skipped = 0;

      for (final map in list) {
        try {
          final template = QuestTemplate.fromJson(map);

          if (!forceReload) {
            final exists = await repo.templateExists(template.id);

            if (exists) {
              skipped++;
              continue;
            }
          }

          await repo.insertTemplate(template);
          inserted++;
        } catch (e) {
          print('[QuestJson] ❌ Erro ao processar template em $assetPath');
          print('  → $e');
        }
      }

      print(
        '[QuestJson] $assetPath → $inserted inseridas, $skipped ignoradas',
      );

      return QuestLoadSummary(
        totalInserted: inserted,
        totalSkipped: skipped,
      );
    } catch (e) {
      print('[QuestJson] ❌ Falha ao carregar arquivo: $assetPath');
      print('  → $e');

      return QuestLoadSummary(totalInserted: 0, totalSkipped: 0);
    }
  }

  // ===============================================================
  // 🔥 Carrega todos os arquivos oficiais
  // ===============================================================
  Future<QuestLoadSummary> loadAllOfficialQuestFiles({
    bool forceReload = false,
  }) async {
    QuestLoadSummary total = QuestLoadSummary(
      totalInserted: 0,
      totalSkipped: 0,
    );

    // Ordem de carregamento (importante no futuro)
    final files = <String>[
      'assets/data/shadow_quests.json',
      // 'assets/data/story_quests.json',
      // 'assets/data/daily_quests.json',
      // 'assets/data/boss_quests.json',
    ];

    for (final file in files) {
      final summary = await loadTemplatesFromAsset(
        file,
        forceReload: forceReload,
      );

      total += summary;
    }

    return total;
  }
}
