import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 60),
              CircleAvatar(radius: 50, backgroundColor: Colors.indigo, child: Text("SN", style: TextStyle(color: Colors.white, fontSize: 30))),
              SizedBox(height: 20),
              _profileField("Name", "MD. Saif Ahmed Shishir"),
              _profileField("Student ID", "2010266"),
              _profileField("Email", "2010266@iub.edu.bd"),
              _profileField("Bio / Story", "I am a CSE student at IUB, passionate about Flutter development and UI design."),
            ],
          ),
        ),
      ),
    );
  }

  Widget _profileField(String label, String value) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(color: Colors.grey, fontSize: 12)),
          Text(value, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}