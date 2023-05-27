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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB-OLK_YpPPDKrAAHce0eGJtgVaeYosouY',
    appId: '1:959374721589:web:1e195e3a1a706f21bda77c',
    messagingSenderId: '959374721589',
    projectId: 'myapp-9b3a9',
    authDomain: 'myapp-9b3a9.firebaseapp.com',
    storageBucket: 'myapp-9b3a9.appspot.com',
    measurementId: 'G-4W1CZZK1EV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCp5CPqnWp7t5DnSwuJwRw_f4PBWUQsWRg',
    appId: '1:959374721589:android:33b35914bd554ed3bda77c',
    messagingSenderId: '959374721589',
    projectId: 'myapp-9b3a9',
    storageBucket: 'myapp-9b3a9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyABCQ_4ZfLhoSOlz2un6CctxndFfmy3SeQ',
    appId: '1:959374721589:ios:1f101a5885fb1c86bda77c',
    messagingSenderId: '959374721589',
    projectId: 'myapp-9b3a9',
    storageBucket: 'myapp-9b3a9.appspot.com',
    iosClientId: '959374721589-9cd8ilglt15680hcvlslea4ctmpbubor.apps.googleusercontent.com',
    iosBundleId: 'com.example.myapp',
  );
}
