import 'package:flutter/material.dart';
import 'dart:ui';
import './Login.dart';
import './RegisterPage.dart';



class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Emerald green gradient background
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2F855A), Color(0xFF38A169)], // Emerald greens
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),

                  // Logo
                  Center(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: [Color(0xFF38A169), Color(0xFF2F855A)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: const Center(
                        child: Icon(Icons.graphic_eq, size: 50, color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Welcome Text
                  const Text(
                    "Welcome! Let's Login with your Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 30),

                  // Social Login Buttons
                  _buildSocialButton(
                    label: "Continue With Google",
                    icon: Icons.apple,
                    onPressed: () {
                      // Handle Google Login
                    },
                  ),
                  const SizedBox(height: 20),

                  _buildSocialButton(
                    label: "Continue With Apple",
                    icon: Icons.apple,
                    onPressed: () {
                      // Handle Apple Login
                    },
                  ),
                  const SizedBox(height: 20),

                  _buildSocialButton(
                    label: "Continue With Facebook",
                    icon: Icons.facebook,
                    onPressed: () {
                      // Handle Facebook Login
                    },
                  ),
                  const SizedBox(height: 20),

                  _buildSocialButton(
                    label: "Continue With Twitter",
                    icon: Icons.facebook,
                    onPressed: () {
                      // Handle Twitter Login
                    },
                  ),

                  const SizedBox(height: 30),

                  // Divider
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 1,
                        color: Colors.green[100],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "OR",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 1,
                        color: Colors.green[100],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Sign In with Password Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                      // Handle Sign In with Password
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF38A169), // Emerald green
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      minimumSize: const Size(double.infinity, 50), // Full-width button
                    ),
                    child: const Text(
                      "Sign In with Password",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Sign Up Link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don’t Have an Account?",
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RegisterScreen()),
                          );
                          // Handle Sign Up
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(color: Color(0xFF93C5FD), fontSize: 14),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Helper Method to Build Social Button
  Widget _buildSocialButton({
    required String label,
    IconData? icon,
    String? iconUrl,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF2F855A), // Dark emerald green for social buttons
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        minimumSize: const Size(double.infinity, 50), // Full-width button
        elevation: 0,
      ),
      child: Row(
        children: [
          if (iconUrl != null)
            Image.network(
              iconUrl,
              width: 24,
              height: 24,
            )
          else if (icon != null)
            Icon(icon, color: Colors.white, size: 24),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
