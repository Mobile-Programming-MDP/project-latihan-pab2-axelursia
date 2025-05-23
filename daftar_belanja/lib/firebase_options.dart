// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBxEtzn--jQQTwTsMdFfG6uME4FHbO2kCo',
    appId: '1:1053652469724:web:abf778f31c93072f44f119',
    messagingSenderId: '1053652469724',
    projectId: 'pab-ii-3c5bd',
    authDomain: 'pab-ii-3c5bd.firebaseapp.com',
    databaseURL: 'https://pab-ii-3c5bd-default-rtdb.firebaseio.com',
    storageBucket: 'pab-ii-3c5bd.firebasestorage.app',
    measurementId: 'G-95T1WC6FBS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDj_FHuhAd3OzGQvu0f8r0_zsIrYUOtLGE',
    appId: '1:1053652469724:android:e96b70a971c3565144f119',
    messagingSenderId: '1053652469724',
    projectId: 'pab-ii-3c5bd',
    databaseURL: 'https://pab-ii-3c5bd-default-rtdb.firebaseio.com',
    storageBucket: 'pab-ii-3c5bd.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBxEtzn--jQQTwTsMdFfG6uME4FHbO2kCo',
    appId: '1:1053652469724:web:0fe185ca274d9b5544f119',
    messagingSenderId: '1053652469724',
    projectId: 'pab-ii-3c5bd',
    authDomain: 'pab-ii-3c5bd.firebaseapp.com',
    databaseURL: 'https://pab-ii-3c5bd-default-rtdb.firebaseio.com',
    storageBucket: 'pab-ii-3c5bd.firebasestorage.app',
    measurementId: 'G-3JK6B3JKTS',
  );
}
