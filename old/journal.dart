import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import '../../infrastructure/db/app_db.dart' as db;

part 'journal.g.dart';

@JsonSerializable(explicitToJson: true)
class JournalEntry {
  final String id;
  final String userId;
  final String? sectionId;
  final String title;
  final String body;
  final DateTime createdAt;
  final DateTime updatedAt;
  final Map<String, dynamic>? meta;

  const JournalEntry({
    required this.id,
    required this.userId,
    this.sectionId,
    required this.title,
    required this.body,
    required this.createdAt,
    required this.updatedAt,
    this.meta,
  });

  factory JournalEntry.fromJson(Map<String, dynamic> json) =>
      _$JournalEntryFromJson(json);

  Map<String, dynamic> toJson() => _$JournalEntryToJson(this);

  String metaToJson() => jsonEncode(meta ?? {});

  factory JournalEntry.fromDb(db.JournalEntry row) {
    return JournalEntry(
      id: row.id,
      userId: row.userId,
      sectionId: row.sectionId,
      title: row.title,
      body: row.body,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
      meta: jsonDecode(row.metaJson),
    );
  }

  JournalEntry copyWith({
    String? title,
    String? body,
    DateTime? updatedAt,
    Map<String, dynamic>? meta,
  }) {
    return JournalEntry(
      id: id,
      userId: userId,
      sectionId: sectionId,
      title: title ?? this.title,
      body: body ?? this.body,
      createdAt: createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      meta: meta ?? this.meta,
    );
  }
}

@JsonSerializable()
class JournalSection {
  final String id;
  final String userId;
  final String name;
  final String? description;
  final DateTime createdAt;

  const JournalSection({
    required this.id,
    required this.userId,
    required this.name,
    this.description,
    required this.createdAt,
  });

  factory JournalSection.fromJson(Map<String, dynamic> json) =>
      _$JournalSectionFromJson(json);

  Map<String, dynamic> toJson() => _$JournalSectionToJson(this);

  factory JournalSection.fromDb(db.JournalSection row) {
    return JournalSection(
      id: row.id,
      userId: row.userId,
      name: row.name,
      description: row.description,
      createdAt: row.createdAt,
    );
  }
}
