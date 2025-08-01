flutter clean
flutter pub get
flutter build web --release -t lib/main_development.dart
firebase deploy --only hosting:dev
