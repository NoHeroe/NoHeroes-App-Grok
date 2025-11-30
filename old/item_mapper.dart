import 'dart:convert';
import 'package:drift/drift.dart';
import '../../../infrastructure/db/app_db.dart' as db;

/// 🔥 ItemMapper definitivo:
/// - Salva o item inteiro como JSON (jsonData)
/// - Compatível com ItemRepository parrudo
/// - Compatível com Item.fromJson()
class ItemMapper {
  /// Converte JSON bruto → ItemsCompanion (para inserir no Drift)
  static db.ItemsCompanion fromJson(Map<String, dynamic> json) {
    final id = json['id'] as String;
    final jsonString = jsonEncode(json);

    return db.ItemsCompanion.insert(
      id: id,
      jsonData: jsonString,
      version: const Value(1),
    );
  }

  /// Converte Item do Drift → Map JSON bruto
  static Map<String, dynamic> toJson(db.Item item) {
    try {
      return jsonDecode(item.jsonData) as Map<String, dynamic>;
    } catch (_) {
      return {};
    }
  }
}
