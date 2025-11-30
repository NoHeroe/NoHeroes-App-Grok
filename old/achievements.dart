import 'package:drift/drift.dart';

class Achievements extends Table {
  TextColumn get id => text()();
  TextColumn get category => text()();
  IntColumn get progress => integer().withDefault(const Constant(0))();
  IntColumn get goal => integer().withDefault(const Constant(0))();
  IntColumn get gemsReward => integer().withDefault(const Constant(0))();
  DateTimeColumn get unlockedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
