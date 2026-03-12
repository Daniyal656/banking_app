import 'package:flutter/material.dart';
import 'package:banking_app/payment_screen.dart';

class SendMoneyScreen extends StatefulWidget {
  const SendMoneyScreen({super.key});

  @override
  State<SendMoneyScreen> createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
          
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),  // back navigation
                      child: Icon(Icons.arrow_back, color: Colors.blue),
                    ),
                    SizedBox(width: 16),
                    Text(
                      "Send Money",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Search  your loved ones ",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                      )
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Recent",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(''),
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.person,color: Colors.white,
                            ),
                          ),
                          Text(" Daniyal"),
                        ],
                      ),
                      SizedBox(width: 16),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(''),
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.person,color: Colors.white,
                            ),
                          ),
                          Text(" Aqib"),
                        ],
                      ),
                      SizedBox(width: 16),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(''),
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.person,color: Colors.white,
                            ),
                          ),
                          Text(" AbRehman"),
                        ],
                      ),
                      SizedBox(width: 16),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(''),
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.person,color: Colors.white,
                            ),
                          ),
                          Text(" Abbas"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Other Payments",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                GridView.count(
                    crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Icon(Icons.account_balance,color: Colors.blue,),
                        ),
                        SizedBox(height: 6,),
                        Text("Accounts",style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Icon(Icons.swap_horiz,color: Colors.blue,),
                        ),
                        SizedBox(height: 6,),
                        Text("Transfer",style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Icon(Icons.credit_card,color: Colors.blue,),
                        ),
                        SizedBox(height: 6,),
                        Text("Cards",style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Icon(Icons.receipt_long,color: Colors.blue,),
                        ),
                        SizedBox(height: 6,),
                        Text("Statement",style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Icon(Icons.phone_android,color: Colors.blue,),
                        ),
                        SizedBox(height: 6,),
                        Text("Recharge",style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Icon(Icons.bolt,color: Colors.blue,),
                        ),
                        SizedBox(height: 6,),
                        Text("Electricity",style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Icon(Icons.qr_code,color: Colors.blue,),
                        ),
                        SizedBox(height: 6,),
                        Text("UPI",style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Icon(Icons.miscellaneous_services,color: Colors.blue,),
                        ),
                        SizedBox(height: 6,),
                        Text("Services",style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Icon(Icons.payment,color: Colors.blue,),
                        ),
                        SizedBox(height: 6,),
                        Text("Bill Pay",style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PaymentScreen())
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.account_balance, color: Colors.white),
                              SizedBox(width: 8),
                              Text("Send to bank", style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.qr_code, color: Colors.blue),
                              SizedBox(width: 8),
                              Text("Scan QR", style: TextStyle(color: Colors.blue)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}