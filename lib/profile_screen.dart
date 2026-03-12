import 'package:flutter/material.dart';
import 'package:banking_app/theme_provider.dart';
import 'package:banking_app/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = ThemeProvider.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Row
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.arrow_back, color: Colors.blue),
                    ),
                    SizedBox(width: 16),
                    Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.edit, color: Colors.blue),
                  ],
                ),
                SizedBox(height: 24),
                // Profile Avatar + Name
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.person,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "Daniyal Hussain",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "daniyal@gmail.com",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Divider(),
                ListTile(
                  leading: Icon(Icons.person, color: Colors.blue),
                  title: Text("Full Name"),
                  subtitle: Text("Daniyal Hussain"),
                ),
                ListTile(
                  leading: Icon(Icons.phone, color: Colors.blue),
                  title: Text("Phone"),
                  subtitle: Text("+92 300 1234567"),
                ),
                ListTile(
                  leading: Icon(Icons.email, color: Colors.blue),
                  title: Text("Email"),
                  subtitle: Text("daniyal@gmail.com"),
                ),
                ListTile(
                  leading: Icon(Icons.location_on, color: Colors.blue),
                  title: Text("Address"),
                  subtitle: Text("Burewala, Punjab, Pakistan"),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.notifications, color: Colors.blue),
                  title: Text("Notifications"),
                  trailing: Switch(
                    value: true,
                    onChanged: (val) {},
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.dark_mode, color: Colors.blue),
                  title: Text("Dark Mode"),
                  trailing: Switch(
                    value: provider.isDark,
                    onChanged: (val) => provider.toggleTheme(),
                  ),
                ),
                Divider(),
                SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen())
                    );
                  },
                  child: Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}