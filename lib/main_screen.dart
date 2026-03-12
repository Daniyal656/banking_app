import 'package:banking_app/home_screen.dart';
import 'package:banking_app/send_money_screen.dart';
import 'package:flutter/material.dart';
import 'package:banking_app/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;



  @override
  Widget build(BuildContext context) {
    final List<Widget> _screens = [
      HomeScreen(
        onSendMoneyTap: (){
          setState((){
            _currentIndex =1;
          }
          );
        },
      ),
      SendMoneyScreen(),
      ProfileScreen()
    ];
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: "Send",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}