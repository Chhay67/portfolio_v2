import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_v2/page/mobile_page/drawer_page.dart';
import 'package:portfolio_v2/page/tablet_desktop_page/profile_page.dart';
import 'package:portfolio_v2/page/tablet_desktop_page/tablet_desktop_page.dart';
import 'package:portfolio_v2/page/widgets/app_bar.dart';

import '../core/provider/nav_bar_provider.dart';
import '../core/provider/theme_mode_provider.dart';
import '../core/utils/responsive_util.dart';
import '../route/route_enum.dart';
import 'mobile_page/mobile_page.dart';



class MainScaffoldPage extends ConsumerStatefulWidget {
  const MainScaffoldPage({super.key,required this.contentPage});
  final Widget contentPage;

  @override
  ConsumerState createState() => _MainScaffoldPageState();
}

class _MainScaffoldPageState extends ConsumerState<MainScaffoldPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();



  void onThemeChange() {
    ref.read(themeModeProvider.notifier).update((state) {
      switch(state) {
        case ThemeMode.light:
          return ThemeMode.dark;
        case ThemeMode.dark:
          return ThemeMode.light;
        default :
          return ThemeMode.system;
      }
    });
  }
  void onDownloadResume() {
    // Implement download resume logic here
  }

  void onClickDrawer(){
    final drawerState = scaffoldKey.currentState!;
    if(drawerState.isDrawerOpen){
      scaffoldKey.currentState!.closeDrawer();
      return;
    }
    scaffoldKey.currentState!.openDrawer();
}

  void onChangedIndex({required RouteEnum route}) {
    ref.read(navBarProvider.notifier).update((state) => route.index);
    switch (route) {
      case RouteEnum.home:
        context.goNamed(RouteEnum.home.name);

      case RouteEnum.resume:
        context.goNamed(RouteEnum.resume.name);

      case RouteEnum.work:
        context.goNamed(RouteEnum.work.name);
      case RouteEnum.contact:
        context.goNamed(RouteEnum.contact.name);
    }
  }
  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtil(context);
    final navBarIndex = ref.watch(navBarProvider);
    return Scaffold(
      key: scaffoldKey,
      drawer: DrawerPage(
        onThemeChange:onThemeChange,
        onClickDrawer: onClickDrawer,
        onChangedIndex: (route) => onChangedIndex(route: route),
        selectedNavBarIndex: navBarIndex,
      ),
      appBar: MyAppBar(
        onClickDrawer: onClickDrawer,
        onThemeChange: onThemeChange,
        onDownloadResume: onDownloadResume,
      ),
      body: responsive.responsiveValue(
        mobile:  MobilePage(contentPage: widget.contentPage,),
        desktop: TabletDesktopPage(
          profileWidget:  ProfilePage(onChangedIndex: (route) => onChangedIndex(route: route),selectedNavBarIndex: navBarIndex,),
          contentWidget: widget.contentPage,
        ),
        tablet: TabletDesktopPage(
          profileWidget: ProfilePage(onChangedIndex: (route) => onChangedIndex(route: route),selectedNavBarIndex: navBarIndex),
          contentWidget: widget.contentPage,
        ),
      ),
    );
  }
}


