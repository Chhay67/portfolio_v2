import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
final themeModeProvider = StateProvider<ThemeMode>((ref) {
  final brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
  return brightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light;
});