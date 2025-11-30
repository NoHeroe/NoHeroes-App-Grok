// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'economy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EconomyTx _$EconomyTxFromJson(Map<String, dynamic> json) => EconomyTx(
  id: json['id'] as String,
  type: json['type'] as String,
  goldDelta: (json['goldDelta'] as num).toInt(),
  at: DateTime.parse(json['at'] as String),
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$EconomyTxToJson(EconomyTx instance) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'goldDelta': instance.goldDelta,
  'at': instance.at.toIso8601String(),
  'notes': instance.notes,
};
