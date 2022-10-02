import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PhoneAuthScreen extends StatefulWidget {
  static const String id='phone-auth-screen';

  @override
  State<PhoneAuthScreen> createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
  bool validate = false;
  var countryCodeController = TextEditingController(text: '+91'); //country code
  var phoneNumberController = TextEditingController(); //Phone number

  //alert dialog
  showAlertDialog(BuildContext context){
    AlertDialog alert = AlertDialog(
      content: Row(
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor), //color of circular loading
          ),
          SizedBox(width: 8,),
          Text('Please wait')
        ],
      ),
    );
    showDialog(
        //barrierDismissible: false,
        context: context, builder: (BuildContext context){
      return alert;
    });
  }

  phoneAuthentication(number){
    //to authenticate number
    print("Passed");
  }

  //String counterText='0';
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black,),
        title: Text(" Login" ,style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue,
              child: Icon(
                CupertinoIcons.person_alt_circle,
                color: Colors.red,
                size: 60,
              ),
            ),
            SizedBox(height: 12,),
            Text('Enter your Phone',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Text('We will send confirmation code to your phone',
              style: TextStyle(color: Colors.grey),
            ),
            Row(
              children: [
                Expanded(flex: 1,
                  child: TextFormField(
                    controller: countryCodeController,
                    enabled: false,
                    decoration: InputDecoration(
                        counterText: '10',
                        labelText: 'Country Code'
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(flex: 3,
                  child: TextFormField(
                    onChanged: (value){
                      if(value.length==10){
                        setState(() {
                          validate = true;
                        });
                      }
                      if(value.length<10){
                        setState(() {
                          validate = false;
                        });

                      }
                    },
                    autofocus: true,
                    maxLength: 10,
                    keyboardType: TextInputType.phone,
                    controller: phoneNumberController,
                    // onChanged: (value){
                    //   setState(() {
                    //     counterText=value.length.toString();
                    //   });
                    // },
                    decoration: InputDecoration(
                      //contentPadding: EdgeInsets.only(bottom: 22,top: 22),
                      // counterText: ' $counterText/10 ',
                      //   counterStyle: TextStyle(fontSize: 10),
                      labelText: 'Phone Number',
                      hintText: 'Enter Your Phone number',
                      hintStyle: TextStyle(fontSize: 10,color: Colors.grey),

                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: AbsorbPointer(
            absorbing: validate ? false : true,
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor:
              validate
                  ? MaterialStateProperty.all(Theme.of(context).primaryColor) //if validate
                  : MaterialStateProperty.all(Colors.grey), //if not validate
              ),
              onPressed: (){
                String number = '${countryCodeController.text}${phoneNumberController.text}';
                //to show loading
                showAlertDialog(context);
                phoneAuthentication(number);
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text( 'Next',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                ),
              ),
            ),
          ),
        ),
      ),
    ); // scaffold
  }
}