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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAhXqKjND0qpIvZFHyz5NqUSfvh2ROzK4Y',
    appId: '1:271363378599:android:720412d5671809868a3a82',
    messagingSenderId: '271363378599',
    projectId: 'engg-chemistry-assist',
    databaseURL: 'https://engg-chemistry-assist-default-rtdb.firebaseio.com',
    storageBucket: 'engg-chemistry-assist.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDge8zDDydxcx4sYNIx1iiPe4YDB4nEzqQ',
    appId: '1:271363378599:ios:fe6c126764ba973d8a3a82',
    messagingSenderId: '271363378599',
    projectId: 'engg-chemistry-assist',
    databaseURL: 'https://engg-chemistry-assist-default-rtdb.firebaseio.com',
    storageBucket: 'engg-chemistry-assist.appspot.com',
    androidClientId:
        '271363378599-0h232ta0qi3kq10floi1sj4cm1vria37.apps.googleusercontent.com',
    iosClientId:
        '271363378599-9lecrfandlk7m95io5rujopojp6b4hft.apps.googleusercontent.com',
    iosBundleId: 'com.pbl2b12021.enggChemistryStudyAssist',
  );
}
