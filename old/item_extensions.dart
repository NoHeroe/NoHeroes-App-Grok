import 'dart:convert';
import '../../infrastructure/db/app_db.dart';

extension ItemIconX on Item {
  String get iconAsset {
    try {
      final map = jsonDecode(attrsJson ?? '{}') as Map<String, dynamic>;
      final icon = map['icon'] as String? ?? 'default.png';
      return 'assets/images/items/$icon';
    } catch (_) {
      return 'assets/icons/items/default.png';
    }
  }
}
