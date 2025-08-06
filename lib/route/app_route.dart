import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_v2/core/config/app_config.dart';
import 'package:portfolio_v2/page/contact_page/contact_page.dart';
import 'package:portfolio_v2/page/work_page/work_page.dart';
import 'package:portfolio_v2/route/route_enum.dart';

import '../page/home_page/home_page.dart';
import '../page/main_page.dart';
import '../page/resume_page/resume_page.dart';
import 'package:firebase_analytics/firebase_analytics.dart';


final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
final appRouteProvider = Provider<GoRouter>((ref) {

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    observers: [
      if (AppConfig.isProduction)
        FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
    ],
    initialLocation: RouteEnum.home.path,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, contentPage) =>
            MainScaffoldPage(
             contentPage: contentPage,
            ),
        routes: [
          GoRoute(
            path:  RouteEnum.home.path,
            name: RouteEnum.home.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const HomePage(),
            ),
          ),
          GoRoute(
            path:  RouteEnum.resume.path,
            name: RouteEnum.resume.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const ResumePage(),
            ),
          ),
          GoRoute(
            path:  RouteEnum.work.path,
            name: RouteEnum.work.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const WorkPage(),
            ),
          ),
          GoRoute(
            path:  RouteEnum.contact.path,
            name: RouteEnum.contact.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const ContactPage(),
            ),
          ),
        ],
      ),
    ],
  );
});


