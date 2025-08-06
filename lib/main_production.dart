import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:portfolio_v2/root_app.dart';

import 'core/config/app_config.dart';
import 'core/service/cloud_firestore_service.dart';
import 'core/utils/logger.dart';

void main() async {
  runZonedGuarded(
    () async{
      WidgetsFlutterBinding.ensureInitialized();
      setUrlStrategy(PathUrlStrategy());
      AppConfig.appFlavor = Flavor.production;
      await Firebase.initializeApp(options: AppConfig.firebaseOptions);

      await CloudFirestoreService.trackAppOpenOnce();
      runApp( ProviderScope(child: RootApp(title: AppConfig.appName)));
    },
    (error, stackTrace) {
      Logger.debugPrintStackTrace(stackTrace);
      Logger.debugPrint('App Error: $error');
    },
  );
}
