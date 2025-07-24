import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_v2/page/contact_page/contact_page.dart';
import 'package:portfolio_v2/page/work_page/work_page.dart';
import 'package:portfolio_v2/route/route_enum.dart';

import '../page/home_page/home_page.dart';
import '../page/main_page.dart';
import '../page/resume_page/resume_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
final appRouteProvider = Provider<GoRouter>((ref) {

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
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
            pageBuilder: (context, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const HomePage(),
              transitionsBuilder: _fadeTransition,
            ),
          ),
          GoRoute(
            path:  RouteEnum.resume.path,
            name: RouteEnum.resume.name,
            pageBuilder: (context, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const ResumePage(),
              transitionsBuilder: _fadeTransition,
            ),
          ),
          GoRoute(
            path:  RouteEnum.work.path,
            name: RouteEnum.work.name,
            pageBuilder: (context, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const WorkPage(),
              transitionsBuilder: _fadeTransition,
            ),
          ),
          GoRoute(
            path:  RouteEnum.contact.path,
            name: RouteEnum.contact.name,
            pageBuilder: (context, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const ContactPage(),
              transitionsBuilder: _fadeTransition,
            ),
          ),
        ],
      ),
    ],
  );
});


Widget _fadeTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
    ) {
  final curved = CurvedAnimation(
    parent: animation,
    curve: Curves.easeInOut,
  );

  return FadeTransition(
    opacity: curved,
    child: child,
  );
}