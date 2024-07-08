import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA3smb7nfkZJXIkSsAi_At3q6yPGaoWpRw",
            authDomain: "panyero-main-rm3vy0.firebaseapp.com",
            projectId: "panyero-main-rm3vy0",
            storageBucket: "panyero-main-rm3vy0.appspot.com",
            messagingSenderId: "732763203342",
            appId: "1:732763203342:web:d738ed81fa23658c96995f"));
  } else {
    await Firebase.initializeApp();
  }
}
