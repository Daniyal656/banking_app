import 'package:nova_bank/constants/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:nova_bank/screens/profile_screen.dart';

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
          child: Column(
            children: [
              // Top gradient header
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF0D1B6E), Color(0xFF1B3EC8)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  children: [
                    // Top Row
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileScreen()),
                            );
                          },
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.person, color: Colors.blue),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi, Daniyal 👋",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Welcome back!",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            _player.play(
                                AssetSource('sounds/notification.wav'));
                          },
                          child: Icon(Icons.notifications_outlined,
                              color: Colors.white),
                        ),
                        SizedBox(width: 8),
                        Switch(
                          value: provider.isDark,
                          onChanged: (val) {
                            _player.play(AssetSource('sounds/theme.wav'));
                            provider.toggleTheme();
                          },
                          activeColor: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    // Balance Card
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.2),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Total Balance",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 14,
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.visibility_outlined,
                                  color: Colors.white70, size: 18),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            "\$18,000.56",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Text(
                                "**** **** **** 6912",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 14,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "VISA",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Body
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Action buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _actionButton(
                            Icons.add_circle_outline, "Add Money", null),
                        _actionButton(
                            Icons.send, "Send Money", widget.onSendMoneyTap),
                        _actionButton(Icons.download, "Deposit", null),
                        _actionButton(Icons.upload, "Withdraw", null),
                      ],
                    ),
                    SizedBox(height: 20),

                    // Transaction History
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transaction History",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
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

                    // Transaction List
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          _transactionTile(
                            Icons.coffee,
                            Colors.orange,
                            "Drinks",
                            "Cafe and Restaurant",
                            "-\$150.00",
                            Colors.red,
                          ),
                          Divider(height: 1),
                          _transactionTile(
                            Icons.shopping_bag,
                            Colors.purple,
                            "Market",
                            "Groceries",
                            "-\$250.00",
                            Colors.red,
                          ),
                          Divider(height: 1),
                          _transactionTile(
                            Icons.swap_horiz,
                            Colors.green,
                            "Quick Transfer",
                            "Aqib Maqsood",
                            "+\$350.00",
                            Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Action button helper
  Widget _actionButton(IconData icon, String label, VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: Colors.blue, size: 22),
          ),
          SizedBox(height: 6),
          Text(label, style: TextStyle(fontSize: 11)),
        ],
      ),
    );
  }

  // Transaction tile helper
  Widget _transactionTile(IconData icon, Color color, String title,
      String subtitle, String amount, Color amountColor) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color.withOpacity(0.15),
        child: Icon(icon, color: color),
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text(subtitle),
      trailing: Text(
        amount,
        style: TextStyle(
          color: amountColor,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }
}