library demo_plugin;

import 'package:flutter/services.dart';


class ToUpperCase {
  static const MethodChannel _channel =
   MethodChannel('upper_case_plugin');
  static Future<String?> toUpperCase(String input) async {
    try {
      final String result = await _channel.invokeMethod('toUpperCase', {'input': input});
      return result;
    } catch (e) {
      print("Failed to convert to upper case: '$e'");
      return null;
    }
  }
}
