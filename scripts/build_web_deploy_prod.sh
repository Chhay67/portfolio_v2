flutter clean
flutter pub get
flutter build web --release  -t lib/main_production.dart
firebase deploy --only hosting:prod
