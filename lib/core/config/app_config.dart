

import 'package:firebase_core/firebase_core.dart';

import '../../firebase_options_dev.dart' as dev;
import '../../firebase_options_dev.dart' as prod;

enum Flavor {
  staging,
  dev,
  production,
}


class AppConfig {
  AppConfig._();

  static Flavor? appFlavor;


  static FirebaseOptions get firebaseOptions {
    switch (appFlavor) {
      case Flavor.dev:
        return dev.DefaultFirebaseOptions.currentPlatform;
      case Flavor.staging:
        return dev.DefaultFirebaseOptions.currentPlatform;
      case Flavor.production:
        return prod.DefaultFirebaseOptions.currentPlatform;
      default:
        return dev.DefaultFirebaseOptions.currentPlatform;
    }
  }

  static bool get isProduction => appFlavor == Flavor.production;

static String get appName {
    switch (appFlavor) {
      case Flavor.dev:
        return "Chhay Portfolio Dev";
      case Flavor.staging:
        return "Chhay Portfolio Staging";
      case Flavor.production:
        return "Chhay Portfolio";
       default:
         return 'Chhay Portfolio';
    }
  }


}