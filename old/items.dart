import 'package:drift/drift.dart';

class Items extends Table {
  /// ID do item base do catálogo
  TextColumn get id => text()();

  /// JSON COMPLETO do item parrudo
  ///
  /// Contém TUDO:
  /// - name
  /// - rank
  /// - rarity
  /// - tier
  /// - type
  /// - slot
  /// - classes
  /// - faccoes
  /// - requirements
  /// - bonus diretos
  /// - bonus percentuais
  /// - effects
  /// - crafting
  /// - economia
  /// - meshId / visualId
  /// - atributos extras
  ///
  /// Sempre compatível com Item.fromJson().
  TextColumn get jsonData => text()(); 

  /// Futuro: versionamento (opcional)
  IntColumn get version => integer().withDefault(const Constant(1))();

  @override
  Set<Column> get primaryKey => {id};
}
