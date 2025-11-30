import '../../infrastructure/datasources/quest_json_datasource.dart';

/// ============================================================
/// 🚀 QuestLoaderService (PRO)
/// Chamado no boot do app — garante que TODAS as quests oficiais
/// estão no banco, mas sem duplicar templates.
/// ============================================================
///
///  Recursos implementados:
///  - Carregamento incremental (só adiciona se não existir)
///  - Modo "forceReload" para desenvolvimento
///  - Logs de quantas quests foram carregadas
///  - Try/catch de proteção
///  - Evita travar boot se um arquivo estiver corrompido
///
class QuestLoaderService {
  final QuestJsonDataSource dataSource;

  QuestLoaderService(this.dataSource);

  /// ============================================================
  /// 🚀 init()
  /// ============================================================
  ///
  /// Chamado no main.dart ANTES de rodar o app.
  ///
  /// Carrega:
  ///   - shadow_quests.json
  ///   - future: story_quests.json
  ///   - future: daily_quests.json
  ///   - future: boss_quests.json
  ///
  /// Modo padrão: incremental (não remove templates antigos)
  ///
  Future<void> init({bool forceReload = false}) async {
    try {
      print('[QuestLoader] Iniciando carregamento...');

      final summary = await dataSource.loadAllOfficialQuestFiles(
        forceReload: forceReload,
      );

      print(
        '[QuestLoader] Finalizado — '
        '${summary.totalInserted} novas quests adicionadas, '
        '${summary.totalSkipped} já existiam.',
      );
    } catch (e, stack) {
      print('[QuestLoader] ❌ ERRO GRAVE AO CARREGAR QUESTS');
      print(e);
      print(stack);
    }
  }
}
