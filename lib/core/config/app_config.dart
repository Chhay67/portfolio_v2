

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

  static const profileUrl =  "https://avatars.githubusercontent.com/u/105361032?s=200&v=4";
  static const String githubUrl = 'https://github.com/Chhay67';
  static const String telegramUrl = 'https://t.me/Chhay67';
  static const String linkedInUrl = 'https://www.linkedin.com/in/song-kimchhay-14917825b';

  static const String resumeUrl = 'https://drive.google.com/file/d/1HivxBWKblOS2Td2avejhAaxKRJd2BJNT/view?usp=sharing';

  static const String emailSenderUrl = 'https://email-sender-p96m.onrender.com/send';


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