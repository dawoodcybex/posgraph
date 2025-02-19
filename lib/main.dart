import 'package:flutter/material.dart';
import './auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import './Splash.dart';

void main() async {
  await Firebase.initializeApp(
    // Replace with actual values
    options: FirebaseOptions(
     apiKey: "AIzaSyD0YGLfIRppAQj4Kk-mP54QGf6sVUO6vH0",
        authDomain: "flutter-8c445.firebaseapp.com",
        projectId: "flutter-8c445",
        storageBucket: "flutter-8c445.firebasestorage.app",
        messagingSenderId: "607271881694",
        appId: "1:607271881694:web:5adc2ddc4513d88ebaeb4f",
        measurementId: "G-KVB2XRPQL2"
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the debug banner
      title: 'pos App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(), // Sets the OrganicHomePage as the home screen
    );
  }
}
