import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_v2/route/app_route.dart';
import 'core/provider/theme_mode_provider.dart';
import 'core/theme/theme.dart';

class RootApp extends ConsumerWidget {
  const RootApp({super.key,required this.title});
  final String title;
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    final appRoute = ref.watch(appRouteProvider);
    return  MaterialApp.router(
      title: title,
      theme: AppThemes.lightMode,
      darkTheme: AppThemes.darkMode,
      themeMode: themeMode,
      routerConfig: appRoute,
    );
  }
}
