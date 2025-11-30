import 'package:drift/drift.dart';
import 'quest_tables.dart';

class QuestLogs extends Table {
  TextColumn get id => text()();

  /// Referência correta: cada log aponta para a instância da quest
  TextColumn get questInstanceId =>
      text().references(QuestInstances, #id)();

  /// done / failed / removed / progress / autoComplete etc.
  TextColumn get action => text()();

  IntColumn get xpDelta => integer().withDefault(const Constant(0))();
  IntColumn get goldDelta => integer().withDefault(const Constant(0))();

  /// Quando aconteceu
  DateTimeColumn get at => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}
