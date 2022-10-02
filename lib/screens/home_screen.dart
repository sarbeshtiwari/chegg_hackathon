import 'package:chegg_platform/account_screen.dart';
import 'package:chegg_platform/doubt_screen.dart';
import 'package:chegg_platform/help_screen.dart';
import 'package:chegg_platform/home_choice.dart';
import 'package:chegg_platform/user_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id='home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black,),
        title: Text(" Welcome, USER" ,style: TextStyle(color: Colors.black),),
      ),
      body:
      // SizedBox(
      //     width: 300,
      //     height: 340,
      //     child: Card(
      //       elevation: 6,
      //       color: Colors.amber.shade100,
      //       semanticContainer: true,
      //       // Implement InkResponse
      //       child: InkResponse(
      //         containedInkWell: true,
      //         highlightShape: BoxShape.rectangle,
      //         onTap: () {
      //           // Clear all showing snack bars
      //           ScaffoldMessenger.of(context).clearSnackBars();
      //           // Display a snack bar
      //           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      //             content: Text("Let's me sleep."),
      //           ));
      //         },
      //         // Add image & text
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Ink.image(
      //                 width: double.infinity,
      //                 height: 240,
      //                 fit: BoxFit.cover,
      //                 image: const NetworkImage(
      //                     'https://yesofcorsa.com/wp-content/uploads/2019/07/4K-Bottle-Best-Wallpaper.jpg')),
      //             const Text(
      //               'Test',
      //               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      //             ),
      //             const SizedBox(height: 10),
      //
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
        ButtonBar(
          mainAxisSize: MainAxisSize.min, // this will take space as minimum as posible(to center)
          children: [
            Padding(padding: EdgeInsets.only(left: 200),),
            ElevatedButton(
            child: Text("Home"),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
            ),
            onPressed:(){
              // Clear all showing snack bars
              ScaffoldMessenger.of(context).clearSnackBars();
              // Display a snack bar
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Welcome"),
              ));
              Navigator.pushNamed(context, HomeScreen.id);
            },),
            Padding(padding: EdgeInsets.only(left: 80),),
            ElevatedButton(
              child: Text("StudyON"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
              ),
              onPressed:(){
                Navigator.pushNamed(context, UserHome.id);
              },),
            Padding(padding: EdgeInsets.only(left: 80),),
            ElevatedButton(
              child: Text("Doubts"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
              ),
              onPressed:(){
                Navigator.pushNamed(context, DoubtScreen.id);
              },),
            Padding(padding: EdgeInsets.only(left: 80),),
            ElevatedButton(
              child: Text("My Account"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
              ),
              onPressed:(){
                Navigator.pushNamed(context, AccountScreen.id);
              },),
            Padding(padding: EdgeInsets.only(left: 80),),
            ElevatedButton(
              child: Text("Help & Feedback"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
              ),
              onPressed:(){
                Navigator.pushNamed(context, HelpScreen.id);
              },),
          ],
      ),


    );
  }
}