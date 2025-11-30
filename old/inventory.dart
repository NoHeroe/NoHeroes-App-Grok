import 'package:drift/drift.dart';
import 'items.dart';

class Inventory extends Table {
  /// ID único da instância do item (não o item base)
  TextColumn get id => text()(); // UUID

  /// ID do item base, ligado ao catálogo
  TextColumn get itemId => text().references(Items, #id)();

  /// Quantidade stack
  IntColumn get quantity => integer().withDefault(const Constant(1))();

  /// Durabilidade atual
  IntColumn get durability => integer().withDefault(const Constant(0))();

  /// Slot equipado (ou null)
  TextColumn get equippedSlot => text().nullable()();

  // -------------------------------------------------------------------
  // 🔥 CAMPOS NOVOS — ESSENCIAIS PARA O SISTEMA AVANÇADO
  // -------------------------------------------------------------------

  /// item não pode quebrar (Sombrios/Divinos)
  BoolColumn get isIndestructible =>
      boolean().withDefault(const Constant(false))();

  /// Data de obtenção (para sorting, conquistas, histórico)
  DateTimeColumn get obtainedAt =>
      dateTime().withDefault(currentDateAndTime)();

  /// Último uso (para cooldown, munição)
  DateTimeColumn get lastUsedAt => dateTime().nullable()();

  /// Cooldown de uso até tal horário
  DateTimeColumn get cooldownEndsAt => dateTime().nullable()();

  /// Histórico de upgrades (“+1”, “reforged”, etc.)
  /// Armazenado como JSON string
  TextColumn get upgradeHistory =>
      text().withDefault(const Constant('[]'))();

  /// Dados únicos do item sombrios, divinos ou modificados
  /// JSON livre armazenado como texto
  TextColumn get uniqueData =>
      text().nullable()(); // '{ "corruption": 12, "blessing": true }'

  @override
  Set<Column> get primaryKey => {id};
}
