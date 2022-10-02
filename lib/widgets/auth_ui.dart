import 'package:chegg_platform/screens/authentication/phoneauth_screen.dart';
import 'package:chegg_platform/screens/home_screen.dart';
import 'package:chegg_platform/home_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Authui extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 220,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)
                ),
                onPressed: (){
                  Navigator.pushNamed(context, PhoneAuthScreen.id);
                  },
                child: Row(
                  children: [
                    Icon(Icons.phone_android_outlined,color: Colors.black,),
                    SizedBox(width: 8,),
                    Text('Continue with Phone',style: TextStyle(color: Colors.black),)
                  ],
                ),),
            ),
            Padding(padding: const EdgeInsets.all(8.0),
            ),

            SignInButton(
              Buttons.GoogleDark,
              text: ('Continue with Google'),
              onPressed: (){
                showAlertDialog(context);
              },
            ),
            Padding(padding: const EdgeInsets.all(8.0),
            ),
            SignInButton(
              Buttons.AppleDark,
              text: ('Continue with Apple'),
              onPressed: () {
                showAlertDialog(context);
              },
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('OR',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
            ),

            SignInButton(
              Buttons.Microsoft,
              text: ('SKIP FOR NOW'),
              onPressed: (){
                Navigator.pushNamed(context, HomeChoice.id);
              },
            ),

          ],
        )
    );
  }
  showAlertDialog(BuildContext context){
    AlertDialog alert = AlertDialog(
      content: Row(
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor), //color of circular loading
          ),
          SizedBox(width: 8,),
          Text('It is a Prototype, Use Skip for now')
        ],
      ),
    );
    showDialog(
      //barrierDismissible: false,
        context: context, builder: (BuildContext context){
      return alert;
    });
  }
}