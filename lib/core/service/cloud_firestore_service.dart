//
//
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class CloudFirestoreService {
//   CloudFirestoreService._();
//
//   static final  _docRef = FirebaseFirestore.instance.collection('analytics').doc('pageView');
//
//   static Future<void> trackAppOpenOnce() async {
//     // Web-specific only: track only if app is opened freshly
//     await _docRef.set({
//       'count': FieldValue.increment(1),
//       'updatedAt': FieldValue.serverTimestamp(),
//     }, SetOptions(merge: true));
//   }
//
//
//   static  Stream<int> getCountStream() {
//     return _docRef.snapshots().map((snapshot) {
//       return (snapshot.data()?['count'] ?? 0) as int;
//     });
//   }
// }