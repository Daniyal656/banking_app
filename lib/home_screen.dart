import 'package:banking_app/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:banking_app/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback? onSendMoneyTap;
  const HomeScreen({super.key, this.onSendMoneyTap});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 final AudioPlayer _player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    final provider = ThemeProvider.of(context);
    return Scaffold(
      body: SafeArea(

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                 GestureDetector(
                   onTap: (){
                     Navigator.push(context,
                     MaterialPageRoute(builder: (context) =>ProfileScreen())
                     );
                   },
                   child: CircleAvatar(
                     radius: 25,
                     backgroundImage: AssetImage(''),
                     backgroundColor: Colors.blue,
                     child: Icon(
                       Icons.person,color: Colors.white,
                     ),
                   ),
                 ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi, Daniyal"),
                        Text("Welcome back!")
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                        _player.play(AssetSource('sounds/notification.wav'));
                      },
                        child: Icon(Icons.notifications_outlined)),
                    Switch(
                      value: ThemeProvider.of(context).isDark,
                      onChanged: (val) {
                        _player.play(AssetSource('sounds/theme.wav'));
                        ThemeProvider.of(context).toggleTheme();
                      },
                    ),
            ],
                ),
                SizedBox(height: 10,),
                Card(
                    elevation: 5,
                    color: Color(0xFF1B3EC8),
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Balance",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            "\$18,000.56",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 16,),
                          Text(
                            "**** **** **** 6912",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          )
                        ],
                      )

                    ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(12),
                          ),

                          child: Icon(Icons.add_circle_outline, color: Colors.blue),
                        ),
                        SizedBox(height: 6,),
                        Text("Add Money",style: TextStyle(fontSize: 12))

                      ],

                    ),
                    GestureDetector(
                      onTap: (){
                        if (widget.onSendMoneyTap != null){
                          widget.onSendMoneyTap!();
                        }
                      },
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(12),
                            ),

                            child: Icon(Icons.send, color: Colors.blue),
                          ),
                          SizedBox(height: 6,),
                          Text("Send Money",style: TextStyle(fontSize: 12),)
                        ],

                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(Icons.download ,color: Colors.blue),
                        ),
                        SizedBox(height: 6,),
                        Text("Deposit",style: TextStyle(fontSize: 12),)
                      ],

                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(12),
                          ),

                          child: Icon(Icons.upload, color: Colors.blue),
                        ),
                        SizedBox(height: 6,),
                        Text("Withdraw",style: TextStyle(fontSize: 12),)
                      ],

                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transaction History",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    ),
                    TextButton(onPressed: (){},
                        child: Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                      ),
                        ),
                    ),
                  ],
                ),
                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.orange.shade100,
                        child: Icon(Icons.coffee,color: Colors.orange,),
                      ),
                      title: Text("Drinks"),
                      subtitle: Text("Cafe and Restaurant"),
                      trailing: Text(
                        "-\$150.00",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.purple.shade100,
                        child: Icon(Icons.shopping_bag,color: Colors.purple,),
                      ),
                      title: Text("Market"),
                      subtitle: Text("Groceries"),
                      trailing: Text(
                        "-\$250.00",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.green.shade100,
                        child: Icon(Icons.swap_horiz,color: Colors.orange,),
                      ),
                      title: Text("Quick Transfer"),
                      subtitle: Text("Aqib Maqsood"),
                      trailing: Text(
                        "+\$350.00",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
