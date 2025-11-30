import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class TimeUtils {
  static const String _zoneName = 'America/Cuiaba';
  static bool _initialized = false;

  static void ensureInitialized() {
    if (!_initialized) {
      tz.initializeTimeZones();
      _initialized = true;
    }
  }

  static tz.TZDateTime now() {
    ensureInitialized();
    return tz.TZDateTime.now(tz.getLocation(_zoneName));
  }

  static bool isAfterReset(tz.TZDateTime time) {
    final reset = tz.TZDateTime(
      tz.getLocation(_zoneName),
      time.year,
      time.month,
      time.day,
      4, // reset diário às 04:00 Cuiabá
    );
    return time.isAfter(reset);
  }
}
