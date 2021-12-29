import 'package:flutter/material.dart';
import 'package:palestine_first_run/src/palestine_first_run_base.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/test.dart';

void main() {
  group('PalConnection', () {
    const String testInitValues = 'if variables has start type';
    const String testIsFirstRun = 'if isFirstRun return true only once';
    const String testIsFirstCall = 'if isFirstCall return true only once';

    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues(<String, Object>{});

    test(testInitValues, () async {
      expect(PalFirstRun.isFirstRunKey.runtimeType, String);
      expect(PalFirstRun.isFirstRunKey, 'is_first_run');
    });

    test(testIsFirstRun, () async {
      expect(await PalFirstRun.isFirstRun(), true);
      expect(await PalFirstRun.isFirstRun(), false);
    });

    test(testIsFirstCall, () async {
      expect(await PalFirstRun.isFirstCall('some_call'), true);
      expect(await PalFirstRun.isFirstCall('some_call'), false);
    });
  });
}
