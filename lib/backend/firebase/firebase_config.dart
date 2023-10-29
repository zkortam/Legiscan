import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC9otgkJErCBhTioebj9a7f3shjWYmILsI",
            authDomain: "legiscan-3018b.firebaseapp.com",
            projectId: "legiscan-3018b",
            storageBucket: "legiscan-3018b.appspot.com",
            messagingSenderId: "798395824539",
            appId: "1:798395824539:web:45e8eda129ff54cc5b493e",
            measurementId: "G-L6LZG45NN8"));
  } else {
    await Firebase.initializeApp();
  }
}
