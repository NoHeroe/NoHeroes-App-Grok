import 'package:drift/drift.dart';
import '../db/app_db.dart' as db;
import '../../domain/models/journal.dart';

class JournalRepository {
  final db.AppDatabase database;
  JournalRepository(this.database);

  // Entries
  Future<void> insertEntry(JournalEntry e) async {
    await database.into(database.journalEntries).insert(
      db.JournalEntriesCompanion.insert(
        id: e.id,
        userId: e.userId,
        sectionId: Value(e.sectionId),
        title: e.title,
        body: e.body,
        createdAt: e.createdAt,
        updatedAt: e.updatedAt,
        metaJson: Value(e.meta != null ? e.metaToJson() : "{}"),
      ),
    );
  }

  Future<void> updateEntry(JournalEntry e) async {
    await (database.update(database.journalEntries)
          ..where((tbl) => tbl.id.equals(e.id)))
        .write(
      db.JournalEntriesCompanion(
        title: Value(e.title),
        body: Value(e.body),
        updatedAt: Value(e.updatedAt),
        metaJson: Value(e.meta != null ? e.metaToJson() : "{}"),
      ),
    );
  }

  Future<JournalEntry?> getEntryById(String id) async {
    final row = await (database.select(database.journalEntries)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();

    if (row == null) return null;
    return JournalEntry.fromDb(row);
  }

  Future<List<JournalEntry>> getEntries(String userId) async {
    final rows = await (database.select(database.journalEntries)
          ..where((tbl) => tbl.userId.equals(userId)))
        .get();

    return rows.map((e) => JournalEntry.fromDb(e)).toList();
  }

  Future<List<JournalEntry>> searchInEntries(String userId, String query) async {
    final rows = await (database.select(database.journalEntries)
          ..where((tbl) =>
              tbl.userId.equals(userId) &
              tbl.body.like('%$query%')))
        .get();

    return rows.map((e) => JournalEntry.fromDb(e)).toList();
  }

  // Sections
  Future<void> insertSection(JournalSection section) async {
    await database.into(database.journalSections).insert(
      db.JournalSectionsCompanion.insert(
        id: section.id,
        userId: section.userId,
        name: section.name,
        description: Value(section.description),
        createdAt: section.createdAt,
      ),
    );
  }

  Future<JournalSection?> getSection(String id) async {
    final row = await (database.select(database.journalSections)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();

    if (row == null) return null;
    return JournalSection.fromDb(row);
  }
}
