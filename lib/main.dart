import 'package:banking_app/login_screen.dart';
import 'package:banking_app/splash.dart';
import 'package:banking_app/theme_provider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Routing());
}


class Routing extends StatefulWidget {
  const Routing({super.key});

  @override
  State<Routing> createState() => _RoutingState();
}

class _RoutingState extends State<Routing> {
  bool isDark = false;
  void toggleTheme(){
    setState(() {
      isDark = !isDark;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      isDark: isDark,
      toggleTheme: toggleTheme,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),      // light theme when isDark = false
        darkTheme: ThemeData.dark(),   // dark theme when isDark = true
        themeMode: isDark ? ThemeMode.dark : ThemeMode.light,  // missing!
        home: Splash(),
      ),
    );
  }
}
