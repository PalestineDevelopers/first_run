import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// A web implementation of the PalestineFirstRun plugin.
class PalestineFirstRunWeb {
  static void registerWith(Registrar registrar) {
    final MethodChannel channel = MethodChannel(
      'palestine_first_run',
      const StandardMethodCodec(),
      registrar,
    );
  }
}
