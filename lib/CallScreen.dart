import 'package:flutter/material.dart';
import 'dart:ui';


class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Blurred Background
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/ubaid/doctor-3.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
          // Content Overlay
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Call Duration Indicator
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.circle, color: Colors.red, size: 12),
                    const SizedBox(width: 6),
                    Text(
                      "19:00 Minute",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              // Profile Picture and Name
              Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/ubaid/doctor-3.png'), // Replace with your profile image path
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Dr. Carly Angel",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Audio Recording is Active",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              // Action Buttons
              Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Mute Button
                    CircleButton(
                      icon: Icons.mic_off,
                      onPressed: () {},
                    ),
                    // End Call Button
                    CircleButton(
                      icon: Icons.call_end,
                      color: Colors.red,
                      onPressed: () {},
                    ),
                    // Speaker Button
                    CircleButton(
                      icon: Icons.volume_up,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const CircleButton({
    Key? key,
    required this.icon,
    this.color = Colors.white,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CircleAvatar(
        radius: 30,
        backgroundColor: color.withOpacity(0.2),
        child: Icon(
          icon,
          color: color,
          size: 28,
        ),
      ),
    );
  }
}
