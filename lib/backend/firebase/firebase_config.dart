import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBe9SdlrlHj1eG-LFmo-uQPQlbwLEfB2Tg",
            authDomain: "aplikasi-layanan-warga-b541c.firebaseapp.com",
            projectId: "aplikasi-layanan-warga-b541c",
            storageBucket: "aplikasi-layanan-warga-b541c.appspot.com",
            messagingSenderId: "302247912436",
            appId: "1:302247912436:web:46888b1ae65a8dcc064fa1",
            measurementId: "G-PT62XGEQFH"));
  } else {
    await Firebase.initializeApp();
  }
}
