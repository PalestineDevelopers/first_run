import 'package:shared_preferences/shared_preferences.dart';

class PalFirstRun {
  /// * KEY
  /// ! DO NOT CHANGE THE VALUE UNDER ANY CIRCUMSTANCES AT ALL
  /// ! CHANGE THE VALUE WILL CAUSE UN EXPECTED BEHAVIOR FOR OLD USERS
  static const isFirstRunKey = 'is_first_run';

  ///---
  /// Check app first run in the device
  ///---
  static Future<bool> isFirstRun([String key = isFirstRunKey]) async {
    final prefs = await SharedPreferences.getInstance();
    final isFirstTime = prefs.get(key) == null;
    if (isFirstTime) {
      /// since its the first time , set the value to false;
      prefs.setBool(key, false);
    }
    return isFirstTime;
  }
}
