import 'dart:async';
import 'package:nova_bank/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),  // reduced from 6 to 3 seconds
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0D1B6E), Color(0xFF1B3EC8), Color(0xFF4A90E2)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            // Outer glow circle
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.08),
                shape: BoxShape.circle,
              ),
              child: Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/icon/app_icon.png',
                  height: 120,
                  width: 120,
                ),
              ),
            ),
            SizedBox(height: 24),
            Text(
              "NovaBank",
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Secure. Fast. Reliable.",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 8),
            // Version text
            Text(
              "v1.0.0",
              style: TextStyle(
                color: Colors.white38,
                fontSize: 12,
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.white24,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  minHeight: 4,  // thicker progress bar
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Loading...",
              style: TextStyle(
                color: Colors.white54,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}