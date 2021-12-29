import 'package:shared_preferences/shared_preferences.dart';

class PalFirstRun {
  ///---
  /// Check Key
  ///---
  static const String isFirstRunKey = 'is_first_run';

  ///---
  /// Check app first run in the device
  ///---
  static Future<bool> isFirstRun() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if ((prefs.getString(isFirstRunKey) ?? 'true') != 'false') {
      prefs.setString(isFirstRunKey, 'false');
      return true;
    } else {
      return false;
    }
  }

  ///---
  /// Check app first calls something
  ///---
  static Future<bool> isFirstCall(String name) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getString(name) == 'false') {
      return false;
    } else {
      prefs.setString(name, 'false');
      return true;
    }
  }
}
