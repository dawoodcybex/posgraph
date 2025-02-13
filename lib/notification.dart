import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Top Notification Header
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 0, 38),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            padding: const EdgeInsets.fromLTRB(16, 40, 16, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Text(
                  "Notifications",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              
              ],
            ),
          ),
          const SizedBox(height: 50),
          // Notification Image and Empty Message
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/notification.png", // Replace with your asset path
                height: 350,
              ),
              const SizedBox(height: 20),
              const Text(
                "You don’t have any notifications yet",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
