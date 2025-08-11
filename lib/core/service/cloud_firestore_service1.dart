import 'dart:io' show Platform;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:universal_html/html.dart' as html;

class CloudFirestoreService {
  CloudFirestoreService._();

  static final _db = FirebaseFirestore.instance;
  static final _docRef = _db.collection('analytics').doc('pageView');
  static CollectionReference<Map<String, dynamic>> get _views =>
      _docRef.collection('views');

  /// Count + write a view on every app start / page refresh.
  static Future<void> trackAppOpenOnce() async {
    final batch = _db.batch();
    final platform = await _detectPlatform();

    //  view row (autoId)
    batch.set(_views.doc(), {
      'platform': platform,
      'ts': FieldValue.serverTimestamp(),
    });

    // parent summary
    batch.set(
      _docRef,
      {
        'count': FieldValue.increment(1),
        'updatedAt': FieldValue.serverTimestamp(),
      },
      SetOptions(merge: true),
    );

    await batch.commit();
  }



  static Stream<int> getCountStream() {
    return _docRef.snapshots().map((s) => ((s.data()?['count'] ?? 0) as num).toInt());
  }

  static Future<String> _detectPlatform() async {
    if (kIsWeb) {
      final platform = html.window.navigator.platform?.toLowerCase() ?? '';
      final userAgent = html.window.navigator.userAgent.toLowerCase();

      String os;
      if (platform.contains('mac')) {
        os = 'MacOS';
      } else if (platform.contains('win')) {
        os = 'Windows';
      } else if (platform.contains('iphone') || platform.contains('ipad')) {
        os = 'iOS';
      } else if (platform.contains('android')) {
        os = 'Android';
      } else if (platform.contains('linux')) {
        os = 'Linux';
      } else {
        os = 'Web-Unknown';
      }

      String browser;
      if (userAgent.contains('chrome') && !userAgent.contains('edg')) {
        browser = 'Chrome';
      } else if (userAgent.contains('safari') && !userAgent.contains('chrome')) {
        browser = 'Safari';
      } else if (userAgent.contains('firefox')) {
        browser = 'Firefox';
      } else if (userAgent.contains('edg')) {
        browser = 'Edge';
      } else {
        browser = 'UnknownBrowser';
      }

      return '$os / $browser';
    } else {
      // Mobile or desktop app

      if (Platform.isAndroid) return 'Android';
      if (Platform.isIOS) return 'iOS';
      if (Platform.isMacOS) return 'MacOS';
      if (Platform.isWindows) return 'Windows';
      if (Platform.isLinux) return 'Linux';

      return 'Unknown';
    }
  }

}
