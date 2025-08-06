
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../service/cloud_firestore_service.dart';

/// For live updates with StreamBuilder-like behavior
final pageViewCountStreamProvider = StreamProvider<int>((ref) {
  return CloudFirestoreService.getCountStream();
});
