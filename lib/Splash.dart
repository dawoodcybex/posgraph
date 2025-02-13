import 'package:flutter/material.dart';
import 'dart:async';
import './SplashScreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeInAnimation;

  @override
  void initState() {
    super.initState();

    // Animation Controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();

    _fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    // Navigate after 5 seconds
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>  WelcomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Color
          Container(
            color: Colors.blueGrey.shade100,
          ),

          // Rotated Image Positioned to the Left Half
          Positioned(
            right: -0, // Move left beyond viewport
            bottom: -10,  // Adjust vertical positioning
            child: Transform.rotate(
              angle: 280 * 3.14159 / 180, // Convert degrees to radians
              child: Image.asset(
                'assets/ubaid/hand.png', // Replace with your image path
                width: 300, // Adjust size
              ),
            ),
          ),

          // Centered Content
          Center(
            child: FadeTransition(
              opacity: _fadeInAnimation,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Medicare",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                       color: Color.fromARGB(255, 255, 255, 255),
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "We are the best medicare you need.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
