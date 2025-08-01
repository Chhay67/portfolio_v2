
import 'package:flutter/foundation.dart';

class Logger {
  Logger._();
  static void debugPrint(String message) {
    if (kDebugMode) {
      debugPrint(message);
    }
  }
  static void debugPrintStackTrace(StackTrace stackTrace) {
    if (kDebugMode) {
      debugPrintStack(stackTrace: stackTrace);
    }
  }


}