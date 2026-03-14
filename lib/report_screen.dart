import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  int _selectedTab = 0; // 0=Weekly, 1=Monthly, 2=Yearly

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
                // Top Row
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.arrow_back, color: Colors.blue),
                    ),
                    SizedBox(width: 16),
                    Text(
                      "Reports",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Tab switcher
                Row(
                  children: [
                    _tabButton("Weekly", 0),
                    SizedBox(width: 8),
                    _tabButton("Monthly", 1),
                    SizedBox(width: 8),
                    _tabButton("Yearly", 2),
                  ],
                ),
                SizedBox(height: 20),

                // Chart
                Container(
                  height: 200,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: BarChart(
                    BarChartData(
                      barGroups: [
                        BarChartGroupData(x: 0, barRods: [
                          BarChartRodData(toY: 8, color: Colors.blue),
                        ]),
                        BarChartGroupData(x: 1, barRods: [
                          BarChartRodData(toY: 5, color: Colors.blue),
                        ]),
                        BarChartGroupData(x: 2, barRods: [
                          BarChartRodData(toY: 9, color: Colors.blue),
                        ]),
                        BarChartGroupData(x: 3, barRods: [
                          BarChartRodData(toY: 3, color: Colors.blue),
                        ]),
                        BarChartGroupData(x: 4, barRods: [
                          BarChartRodData(toY: 7, color: Colors.blue),
                        ]),
                        BarChartGroupData(x: 5, barRods: [
                          BarChartRodData(toY: 6, color: Colors.blue),
                        ]),
                        BarChartGroupData(x: 6, barRods: [
                          BarChartRodData(toY: 4, color: Colors.blue),
                        ]),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Summary cards
                Text(
                  "Summary",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.green.shade50,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.arrow_downward, color: Colors.green),
                            SizedBox(height: 8),
                            Text("Income", style: TextStyle(color: Colors.grey)),
                            Text(
                              "\$4,500.00",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.red.shade50,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.arrow_upward, color: Colors.red),
                            SizedBox(height: 8),
                            Text("Expenses", style: TextStyle(color: Colors.grey)),
                            Text(
                              "\$1,200.00",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
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

  // Tab button helper
  Widget _tabButton(String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTab = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: _selectedTab == index ? Colors.blue : Colors.blue.shade50,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: _selectedTab == index ? Colors.white : Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}