// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBhLB7LWnkkVWBX_lwEfl3r9zf5Urrk0fw',
    appId: '1:405736413524:web:578344e8d40551f78490c1',
    messagingSenderId: '405736413524',
    projectId: 'test-d3a7c',
    authDomain: 'test-d3a7c.firebaseapp.com',
    storageBucket: 'test-d3a7c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAiTajehR60FbTj1iBjOIT3FQbirVndnX0',
    appId: '1:405736413524:android:2d60fbca046aa02b8490c1',
    messagingSenderId: '405736413524',
    projectId: 'test-d3a7c',
    storageBucket: 'test-d3a7c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDAJD-bk25y77EGviSBy83EfXQ9dREXOgo',
    appId: '1:405736413524:ios:516cc92fc91e8c9a8490c1',
    messagingSenderId: '405736413524',
    projectId: 'test-d3a7c',
    storageBucket: 'test-d3a7c.appspot.com',
    iosBundleId: 'com.example.test',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDAJD-bk25y77EGviSBy83EfXQ9dREXOgo',
    appId: '1:405736413524:ios:6e3c8ee25b00b9e28490c1',
    messagingSenderId: '405736413524',
    projectId: 'test-d3a7c',
    storageBucket: 'test-d3a7c.appspot.com',
    iosBundleId: 'com.example.test.RunnerTests',
  );
}
