import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_v2/page/tablet_desktop_page/profile_page.dart';
import 'package:portfolio_v2/page/tablet_desktop_page/tablet_desktop_page.dart';
import 'package:portfolio_v2/page/widgets/app_bar.dart';

import '../core/provider/theme_mode_provider.dart';
import '../core/utils/responsive_util.dart';



class MainScaffoldPage extends ConsumerStatefulWidget {
  const MainScaffoldPage({super.key,required this.contentPage});
  final Widget contentPage;

  @override
  ConsumerState createState() => _MainScaffoldPageState();
}

class _MainScaffoldPageState extends ConsumerState<MainScaffoldPage> {


  void onThemeChange() {
    ref.read(themeModeProvider.notifier).update((state) {
      switch(state) {
        case ThemeMode.light:
          return ThemeMode.dark;
        case ThemeMode.dark:
          return ThemeMode.system;
        case ThemeMode.system:
          return ThemeMode.light;
      }
    });
  }
  void onDownloadResume() {
    // Implement download resume logic here
  }
  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtil(context);
    return Scaffold(
      appBar: MyAppBar(
        onThemeChange: onThemeChange,
        onDownloadResume: onDownloadResume,
      ),
      body: responsive.responsiveValue(
        mobile: SizedBox(),
        desktop: TabletDesktopPage(profileWidget: const ProfilePage(),contentWidget: widget.contentPage,),
        tablet: TabletDesktopPage(profileWidget:  const ProfilePage(),contentWidget: widget.contentPage,),
      ),
    );
  }
}


