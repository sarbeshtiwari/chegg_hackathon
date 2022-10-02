import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoubtScreen extends StatefulWidget {
  static const String id='doubt-screen';

  @override
  State<DoubtScreen> createState() => _DoubtScreenState();
}

class _DoubtScreenState extends State<DoubtScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black,),
        title: Text("Doubts" ,style: TextStyle(color: Colors.black),),
      ),
      body: Image.asset('assets/images/doubt_screen.jpg'),

    );
  }
}