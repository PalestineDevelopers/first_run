import 'package:flutter/material.dart';
import 'package:palestine_first_run/src/palestine_first_run_base.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/test.dart';

void main() {
  setUpAll(() {
    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues(<String, Object>{
      'bar': true,
      'zee': 'true',
      'xyz': '',
      'abc': 66,
    });
  });
  test(
    'the key value is the same',
    () => expect(PalFirstRun.isFirstRunKey, 'is_first_run'),
  );
  test('it sees any value is true', () async {
    expect(await PalFirstRun.isFirstRun('bar'), isFalse);
    expect(await PalFirstRun.isFirstRun('zee'), isFalse);
    expect(await PalFirstRun.isFirstRun('abc'), isFalse);
    expect(await PalFirstRun.isFirstRun('xyz'), isFalse);
  });
  test('it checks for the app first run', () async {
    expect(
      await PalFirstRun.isFirstRun(),
      isTrue,
      reason: 'first run is true',
    );
    expect(
      await PalFirstRun.isFirstRun(),
      isFalse,
      reason: 'because you checked before !',
    );
  });

  test('it can support custom keys', () async {
    expect(
      await PalFirstRun.isFirstRun('foo'),
      isTrue,
      reason: 'foo first call is true',
    );
    expect(
      await PalFirstRun.isFirstRun('foo'),
      isFalse,
      reason: 'because you checked on foo before !',
    );
  });
}
