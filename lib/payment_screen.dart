import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  Widget _numButton(String number){
    return GestureDetector(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
        color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(12),
    ),
        child: Center(
          child: Text(
            number,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ) ,
          ),
        ),
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child:Column(
              children: [
                Row(children: [
                GestureDetector(
                  onTap: ()=> Navigator.pop(context),
                    child: Icon(Icons.arrow_back, color: Colors.blue)),
              SizedBox(width: 16,),
              Text(
                "Payment",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              ]
          ),
                SizedBox(height: 16,),
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
                        SizedBox(height: 10,),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage(''),
                                backgroundColor: Colors.blue,
                                child: Icon(
                                  Icons.person,color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text(" Daniyal"),
                                  Text("**** **** **** 6912")
                                ],
                              ),
                              ],
                          ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(''),
                                    backgroundColor: Colors.blue,
                                    child: Icon(
                                      Icons.person, color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Daniyal", style: TextStyle(fontWeight: FontWeight.bold)),
                                      Text("**** **** **** 6912", style: TextStyle(fontSize: 12)),
                                    ],
                                  ),
                                  Spacer(),
                                  TextButton(
                                    onPressed: (){},
                                    child: Text(
                                      "Change",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                ],
                              ),
                          SizedBox(height: 20),
                          Text(
                            "\$580.00",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Your balance: \$18,500.56",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 20),
                          GridView.count(crossAxisCount: 3,
                          shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 1.5,
                            children: [
                              _numButton("1"),
                              _numButton("2"),
                              _numButton("3"),
                              _numButton("4"),
                              _numButton("5"),
                              _numButton("6"),
                              _numButton("7"),
                              _numButton("8"),
                              _numButton("9"),
                              _numButton("."),
                              _numButton("0"),
                              GestureDetector(
                                onTap: (){},
                                child: Container(
                              decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(12),
                              ),
                    child: Icon(Icons.backspace, color: Colors.blue),
                  ),

                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          SlideAction(
                            text: "Slide to Pay",
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                            outerColor: Colors.blue,
                            innerColor: Colors.white,
                            sliderButtonIcon: Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                            ),
                            onSubmit: () {
                              // show success message
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Payment Successful!"),
                                  backgroundColor: Colors.green,
                                ),
                              );
                            },
                          ),

                  ]
                ),


            ),
          ),
            ]
                ),
          ),
        ),
    ) );
  }
}
