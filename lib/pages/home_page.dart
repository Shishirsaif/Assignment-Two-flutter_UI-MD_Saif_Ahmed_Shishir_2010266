import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome back, Shishir", style: TextStyle(color: Colors.black, fontSize: 16)),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [Icon(Icons.notifications_none, color: Colors.black), SizedBox(width: 10)],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Balance Card
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total Balance", style: TextStyle(color: Colors.white70)),
                  SizedBox(height: 10),
                  Text("\$765.32", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Savings: \$5,100", style: TextStyle(color: Colors.white)),
                      Text("Last 30 days: +\$200 →", style: TextStyle(color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            // Quick Actions
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildActionIcon(Icons.send, "Transfer"),
                _buildActionIcon(Icons.receipt, "Pay Bills"),
                _buildActionIcon(Icons.link, "Invest"),
              ],
            ),
            SizedBox(height: 30),
            Text("Recent Transactions", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            _buildTransaction("Netflix", "Entertainment", "-\$19.99", Colors.red),
            _buildTransaction("Coffee Shop", "Food", "-\$4.50", Colors.red),
            _buildTransaction("Salary Deposit", "Income", "+\$3500.00", Colors.green),
          ],
        ),
      ),
    );
  }

  Widget _buildActionIcon(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(radius: 25, backgroundColor: Colors.blue.withOpacity(0.1), child: Icon(icon, color: Colors.blue)),
        SizedBox(height: 5),
        Text(label),
      ],
    );
  }

  Widget _buildTransaction(String title, String sub, String amount, Color color) {
    return ListTile(
      leading: CircleAvatar(backgroundColor: Colors.grey[200], child: Icon(Icons.shopping_bag, size: 20)),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(sub),
      trailing: Text(amount, style: TextStyle(color: color, fontWeight: FontWeight.bold)),
    );
  }
}