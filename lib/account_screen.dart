import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  static const String id='account-screen';

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black,),
        title: Text("My Account" ,style: TextStyle(color: Colors.black),),
      ),
      body:
      Padding(
        padding: EdgeInsets.only(left: 30, top: 30),
        child: Image.asset('assets/images/img.png'),
      )

    );
  }
}