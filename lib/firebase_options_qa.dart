// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_qa.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: FirebaseOptionsQA.currentPlatform,
/// );
/// ```
class FirebaseOptionsQA {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'FirebaseOptionsQA have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'FirebaseOptionsQA have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'FirebaseOptionsQA have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'FirebaseOptionsQA have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'FirebaseOptionsQA are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAkBNIoijrohzhgLy5oagx652hNRKlp2ps',
    appId: '1:394219904911:web:ee1d9d516017fa1279b5fa',
    messagingSenderId: '394219904911',
    projectId: 'annisa-qa',
    authDomain: 'annisa-qa.firebaseapp.com',
    storageBucket: 'annisa-qa.appspot.com',
    measurementId: 'G-9K1FXJMT15',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCqo-xJAeSeiAGTf0JJTaNr2fwqVrVkLww',
    appId: '1:394219904911:android:f96af008197c9a5079b5fa',
    messagingSenderId: '394219904911',
    projectId: 'annisa-qa',
    storageBucket: 'annisa-qa.appspot.com',
  );
}
