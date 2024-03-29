// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_dev.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: FirebaseOptionsDev.currentPlatform,
/// );
/// ```
class FirebaseOptionsDev {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'FirebaseOptionsDev have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'FirebaseOptionsDev have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'FirebaseOptionsDev have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'FirebaseOptionsDev have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'FirebaseOptionsDev are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCCmgtrK11A48zxVaMv4tZ3ELn9pS-xK8Q',
    appId: '1:803655129966:web:eccab13d1a6f88be2eff7f',
    messagingSenderId: '803655129966',
    projectId: 'annisa-dev',
    authDomain: 'annisa-dev.firebaseapp.com',
    storageBucket: 'annisa-dev.appspot.com',
    measurementId: 'G-BH1MKFZ0WN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDqsjV2gFhGaMaBjqjQiX3jVBK7osu47qo',
    appId: '1:803655129966:android:2e59e17b796c6be02eff7f',
    messagingSenderId: '803655129966',
    projectId: 'annisa-dev',
    storageBucket: 'annisa-dev.appspot.com',
  );
}
