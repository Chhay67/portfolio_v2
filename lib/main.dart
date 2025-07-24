import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_v2/root_app.dart';

void main() async {
  runZonedGuarded(
    () {
      runApp(const ProviderScope(child: RootApp()));
    },
    (error, stackTrace) {
      debugPrintStack(stackTrace: stackTrace);
      debugPrint('Error: $error');
    },
  );
}
