import 'package:json_annotation/json_annotation.dart';
part 'economy.g.dart';

@JsonSerializable()
class EconomyTx {
  final String id;
  final String type; // shop_buy/sell/repair/etc
  final int goldDelta;
  final DateTime at;
  final String? notes;

  const EconomyTx({
    required this.id,
    required this.type,
    required this.goldDelta,
    required this.at,
    this.notes,
  });

  factory EconomyTx.fromJson(Map<String, dynamic> json) =>
      _$EconomyTxFromJson(json);
  Map<String, dynamic> toJson() => _$EconomyTxToJson(this);
}
