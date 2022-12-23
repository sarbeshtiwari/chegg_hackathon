import 'package:chegg_platform/account_screen.dart';
import 'package:chegg_platform/doubt_screen.dart';
import 'package:chegg_platform/help_screen.dart';
import 'package:chegg_platform/screens/authentication/phoneauth_screen.dart';
import 'package:chegg_platform/screens/home_screen.dart';
import 'package:chegg_platform/screens/login_screen.dart';
import 'package:chegg_platform/screens/splash_screen.dart';
import 'package:chegg_platform/home_choice.dart';
import 'package:chegg_platform/user_home.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:ffi';

void main() {
  //async
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      //Replace the 3 second delay with your initialization code:
      future: Future.delayed(Duration(seconds: 4)),
      builder: (context, AsyncSnapshot snapshot) {
        //Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
              //to remove the banner in right corner
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  primaryColor: Colors.cyan.shade900, fontFamily: 'Latin'),
              home: SplashScreen()); //need to create this screen
        } else {
          // Loading is done, return the app:
          return MaterialApp(
            //to remove the banner in right corner
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primaryColor: Colors.cyan.shade900, fontFamily: 'Latin'),
            //need to change this to initial screen, means starting screen
            home: LoginScreen(),
            routes: {
              //we will add the screens here for easy navigation
              //it is a string
              LoginScreen.id: (context) => LoginScreen(),
              PhoneAuthScreen.id: (context) => PhoneAuthScreen(),
              HomeScreen.id: (context) => HomeScreen(),
              HomeChoice.id: (context) => HomeChoice(),
              UserHome.id: (context) => UserHome(),
              DoubtScreen.id: (context) => DoubtScreen(),
              AccountScreen.id: (context) => AccountScreen(),
              HelpScreen.id: (context) => HelpScreen(),
            },
          );
        }
      },
    );
  }
}
