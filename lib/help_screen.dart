import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  static const String id='help-screen';

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black,),
        title: Text("Help & Feedback" ,style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        Text(
          'From here the USER can contact Administration',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.redAccent),
        ),
        ]
      ),
    ),
    );
  }
}