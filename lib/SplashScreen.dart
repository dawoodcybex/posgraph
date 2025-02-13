import 'package:flutter/material.dart';
import 'DoctorPage.dart';
import './auth.dart';
class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
   
       child: Container(
          // Linear Gradient Background
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF6B62FF), Color(0xFF3F8EFE)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Stack(
            children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Doctor Image
               SizedBox(height: 20,),
             Stack(
                alignment: Alignment.topCenter,
                children: [

                  Positioned(
                    top: -20, // Adjust to align image at the top of the container
                    child: Image.asset(
                      'assets/ubaid/doctor-4.png', // Replace with your image path
                      height: 460, // Set the height of the image
                      width: 460, // Set the width of the image
                      fit: BoxFit.contain,
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 350), // Space for alignment
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                    ),
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 0), // Spacing to match image
                        const Text(
                          "More Comfortable Chat\nWith the Doctor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          "Book an appointment with a doctor. Chat with the doctor via an appointment letter and get consultation.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 24),
                        // Dots Indicator
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleIndicator(isActive: true),
                            const SizedBox(width: 8),
                            CircleIndicator(isActive: false),
                            const SizedBox(width: 8),
                            CircleIndicator(isActive: false),
                          ],
                        ),
                        const SizedBox(height: 24),
                        // Get Started Button
                        SizedBox(
                       width:  double.infinity,
                        
                       child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 5, 0, 97),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 16),
                          ),
                          onPressed: () {
                             Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                          },
                          child: const Text(
                            "Get Started",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                  // Image Positioned Overlapping the White Container
                  
                ],
              ),
            ],
          ),
        ],
      ),
      ),
    )
    );
  }
}

class CircleIndicator extends StatelessWidget {
  final bool isActive;

  const CircleIndicator({Key? key, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive ? 12 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF6B62FF) : Colors.grey,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}