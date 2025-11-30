// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JournalEntry _$JournalEntryFromJson(Map<String, dynamic> json) => JournalEntry(
  id: json['id'] as String,
  userId: json['userId'] as String,
  sectionId: json['sectionId'] as String?,
  title: json['title'] as String,
  body: json['body'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  meta: json['meta'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$JournalEntryToJson(JournalEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'sectionId': instance.sectionId,
      'title': instance.title,
      'body': instance.body,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'meta': instance.meta,
    };

JournalSection _$JournalSectionFromJson(Map<String, dynamic> json) =>
    JournalSection(
      id: json['id'] as String,
      userId: json['userId'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$JournalSectionToJson(JournalSection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'name': instance.name,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
    };
