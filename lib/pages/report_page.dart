import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Text("Monthly Spending Report", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15), boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]),
              child: Column(
                children: [
                  Text("Total Expenses (Last 30 days)"),
                  Text("-\$1500.00", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.red)),
                  Text("↑ Up 12% from last month", style: TextStyle(color: Colors.redAccent)),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text("Spending Breakdown", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            _buildProgressRow("Food & Drink", 0.35, "\$500.00 (35%)", Colors.red),
            _buildProgressRow("Shopping", 0.25, "\$500.00 (25%)", Colors.blue),
            _buildProgressRow("Housing", 0.22, "\$500.00 (22%)", Colors.orange),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressRow(String label, double val, String amount, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(label), Text(amount)]),
          SizedBox(height: 5),
          LinearProgressIndicator(value: val, backgroundColor: Colors.grey[200], color: color, minHeight: 8),
        ],
      ),
    );
  }
}