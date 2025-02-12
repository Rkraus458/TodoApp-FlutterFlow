import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCYzykYQ8md1AhsBAzWYRgTIRHWxoD1ORA",
            authDomain: "to-do-app-ryan-kraus-pgdu4v.firebaseapp.com",
            projectId: "to-do-app-ryan-kraus-pgdu4v",
            storageBucket: "to-do-app-ryan-kraus-pgdu4v.firebasestorage.app",
            messagingSenderId: "445322478011",
            appId: "1:445322478011:web:f6f989fcba5b4fc0ffc49e"));
  } else {
    await Firebase.initializeApp();
  }
}
