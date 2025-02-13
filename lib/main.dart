import 'package:flutter/material.dart';
import './auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import './Splash.dart';

void main() async {
  await Firebase.initializeApp(
    // Replace with actual values
    options: FirebaseOptions(
      apiKey: "AIzaSyDi4AUmVGmwAJv-f0_2QOtBvR8Ly21T34M",
      appId: "1:802793673464:android:e968c33fe097a26d24e10d",
      messagingSenderId: "802793673464",
      projectId: "medical-appointment-d443a",
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the debug banner
      title: 'Organic App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(), // Sets the OrganicHomePage as the home screen
    );
  }
}
