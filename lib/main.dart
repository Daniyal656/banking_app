import 'package:nova_bank/screens/splash.dart';
import 'package:nova_bank/constants/theme_provider.dart';
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
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
        home: Splash(),
      ),
    );
  }
}
