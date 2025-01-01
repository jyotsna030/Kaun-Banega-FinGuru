import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDA7YdratGqJqplFUbrLdLjxSzJFpdVnxk",
            authDomain: "kbf-app-5bb69.firebaseapp.com",
            projectId: "kbf-app-5bb69",
            storageBucket: "kbf-app-5bb69.firebasestorage.app",
            messagingSenderId: "168682092673",
            appId: "1:168682092673:web:35bd0d18b81d09abfc3580"));
  } else {
    await Firebase.initializeApp();
  }
}
