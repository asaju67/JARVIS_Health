import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA4CuKZTN5XYic99T4sQtO8USxRrnkT4_A",
            authDomain: "jarvis-health-25.firebaseapp.com",
            projectId: "jarvis-health-25",
            storageBucket: "jarvis-health-25.firebasestorage.app",
            messagingSenderId: "974236402882",
            appId: "1:974236402882:web:f8933bdf67ae4be61ba75b",
            measurementId: "G-DYHH45DG07"));
  } else {
    await Firebase.initializeApp();
  }
}
