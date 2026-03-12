import 'package:banking_app/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:banking_app/home_screen.dart';
import 'theme_provider.dart';
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
          children:[
            Positioned(
              top: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.light_mode),
                  Switch(value: provider.isDark,
                      onChanged: (val) {
                        _player.play(AssetSource('sounds/theme.wav'));
                    provider.toggleTheme();
                      },
                  )
                ],
              ),
            ),
            Center(
            child: Padding(

              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(height: 10,),
                  Text("Welcome!",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 30,

                    ),
                  ),
                  Text('sign in to continue',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,

                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){ //for phone
                          setState(() {
                            isPhone = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text("Phone"),
                            if (isPhone)
                              Container(
                                height: 2,
                                width: 40,
                                color: Colors.blue,
                              )
                          ],
                        ),
                      ),
                      SizedBox(width:  20,),
                      GestureDetector(
                        onTap: (){ //for email
                          setState(() {
                            isPhone = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text("Email"),
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
                  if (isPhone)
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your phnoe",
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    ),
                  )
                  else
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your email",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)
                        )
                    ),
                  ),


                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your Password",
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: (){
                      Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) =>MainScreen()));
                    },
                    child: Text("Login"),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: (){},
                    child: Text("Sign in with Fingerprint"),
                  ),


                ],


              ),
            ),
          ),
        ]



        )
        )
    );
  }
}
