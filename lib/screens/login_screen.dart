import 'package:nova_bank/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:nova_bank/constants/theme_provider.dart';
import 'package:audioplayers/audioplayers.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPhone = true;
  final AudioPlayer _player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    final provider = ThemeProvider.of(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Switch at top right
            Positioned(
              top: 0,
              right: 0,
              child: Row(
                children: [
                  Icon(Icons.light_mode),
                  Switch(
                    value: provider.isDark,
                    onChanged: (val) {
                      _player.play(AssetSource('sounds/theme.wav'));
                      provider.toggleTheme();
                    },
                  ),
                ],
              ),
            ),

            // Scrollable content
            SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 60,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Logo
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/icon/app_icon.png',
                            height: 80,
                            width: 80,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "NovaBank",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            letterSpacing: 2,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Welcome!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          "Sign in to continue",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20),

                        // Tab switcher
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isPhone = true;
                                });
                              },
                              child: Column(
                                children: [
                                  Text(
                                    "Phone",
                                    style: TextStyle(
                                      fontWeight: isPhone
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color:
                                      isPhone ? Colors.blue : Colors.grey,
                                    ),
                                  ),
                                  if (isPhone)
                                    Container(
                                      height: 2,
                                      width: 40,
                                      color: Colors.blue,
                                    )
                                ],
                              ),
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isPhone = false;
                                });
                              },
                              child: Column(
                                children: [
                                  Text(
                                    "Email",
                                    style: TextStyle(
                                      fontWeight: !isPhone
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color:
                                      !isPhone ? Colors.blue : Colors.grey,
                                    ),
                                  ),
                                  if (!isPhone)
                                    Container(
                                      height: 2,
                                      width: 40,
                                      color: Colors.blue,
                                    )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),

                        // Input field
                        if (isPhone)
                          TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: "Enter your phone",
                              prefixIcon: Icon(Icons.phone),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          )
                        else
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Enter your email",
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        SizedBox(height: 10),

                        // Password field
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter your password",
                            prefixIcon: Icon(Icons.lock_outline),
                            suffixIcon: Icon(Icons.visibility_off),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),

                        // Login button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainScreen()),
                            );
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),

                        // Fingerprint button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade50,
                            minimumSize: Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 0,
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.fingerprint, color: Colors.blue),
                              SizedBox(width: 8),
                              Text(
                                "Sign in with Fingerprint",
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}