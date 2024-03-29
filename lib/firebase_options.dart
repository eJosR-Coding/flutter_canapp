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
    apiKey: 'AIzaSyBlRegNuCSlxLgL0I4uKi1nqHTfi5WfRvo',
    appId: '1:109312368767:web:ef3207c7f02595d3e65f4a',
    messagingSenderId: '109312368767',
    projectId: 'youcanapp-d8294',
    authDomain: 'youcanapp-d8294.firebaseapp.com',
    databaseURL: 'https://youcanapp-d8294-default-rtdb.firebaseio.com',
    storageBucket: 'youcanapp-d8294.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCrG8IH0Z9eVsjkeriaSH_wpyrtEfWuSiU',
    appId: '1:109312368767:android:4696a2679d025b90e65f4a',
    messagingSenderId: '109312368767',
    projectId: 'youcanapp-d8294',
    databaseURL: 'https://youcanapp-d8294-default-rtdb.firebaseio.com',
    storageBucket: 'youcanapp-d8294.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDIdrnQZ-hrWq31UOuXUm8-tTt7xhvNdME',
    appId: '1:109312368767:ios:683a4869774fbcdfe65f4a',
    messagingSenderId: '109312368767',
    projectId: 'youcanapp-d8294',
    databaseURL: 'https://youcanapp-d8294-default-rtdb.firebaseio.com',
    storageBucket: 'youcanapp-d8294.appspot.com',
    iosClientId: '109312368767-laq028qik4eemn1h05318s5kal208fiq.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterCanapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDIdrnQZ-hrWq31UOuXUm8-tTt7xhvNdME',
    appId: '1:109312368767:ios:683a4869774fbcdfe65f4a',
    messagingSenderId: '109312368767',
    projectId: 'youcanapp-d8294',
    databaseURL: 'https://youcanapp-d8294-default-rtdb.firebaseio.com',
    storageBucket: 'youcanapp-d8294.appspot.com',
    iosClientId: '109312368767-laq028qik4eemn1h05318s5kal208fiq.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterCanapp',
  );
}
