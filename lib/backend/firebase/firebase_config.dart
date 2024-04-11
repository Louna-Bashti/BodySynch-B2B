import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBLZLPl5N8BRtn0KJ36eg9tVjmCwO1A_9k",
            authDomain: "bdd-bodysynch.firebaseapp.com",
            projectId: "bdd-bodysynch",
            storageBucket: "bdd-bodysynch.appspot.com",
            messagingSenderId: "825368325329",
            appId: "1:825368325329:web:6d90589601c215e6b369f0",
            measurementId: "G-QY3V3RZ5PB"));
  } else {
    await Firebase.initializeApp();
  }
}
