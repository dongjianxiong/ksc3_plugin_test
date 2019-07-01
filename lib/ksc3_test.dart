import 'dart:async';

import 'package:flutter/services.dart';

class Ksc3Test {
  static const MethodChannel _channel =
      const MethodChannel('ksc3_test');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
