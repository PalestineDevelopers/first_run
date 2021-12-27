import 'dart:developer' as developer;

import 'package:shared_preferences/shared_preferences.dart';

class PalFirstRun {
  // Singeton + Thread Safety Handler
  factory PalFirstRun() => _singleton;
  PalFirstRun._internal() {
    developer.log('--PalFirstRun-- (Instance Created --> Singleton)');
  }
  static final PalFirstRun _singleton = PalFirstRun._internal();

  ///---
  /// Check Key
  ///---
  static const String _isFirstRunKey = 'is_first_run';

  ///---
  /// Check app first run in the device
  ///---
  static Future<bool> isFirstRun() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getString(_isFirstRunKey) == 'false') {
      return false;
    } else {
      prefs.setString(_isFirstRunKey, 'false');
      return true;
    }
  }

  ///---
  /// Check app first calls something
  ///---
  static Future<bool> isFirstCall(String name) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.get(name) == 'false') {
      return false;
    } else {
      prefs.setString(name, 'false');
      return true;
    }
  }
}
