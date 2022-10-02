import 'package:chegg_platform/widgets/auth_ui.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String id='login-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Column (
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width, //to get device size
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 100,),
                  // Image.asset('assets/images/SplashScreen.jpg',
                  //   //color: Colors.blue,
                  // ),
                  SizedBox(height:10,),
                  Text('StudyON', style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrangeAccent
                  ),)
                ],
              ),
            ),),
          Expanded(
            child: Container(
              child: Authui(),
            ),),
          Padding(padding: const EdgeInsets.all(8.0),
            child: Text('If you continue, you are accepting\nTerms and conditions and privacy Policy',
              textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 10),),
          ),

        ],
      ),
    );

  }
}


