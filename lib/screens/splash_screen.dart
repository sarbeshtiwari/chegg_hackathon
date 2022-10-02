
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.deepOrangeAccent,
      Colors.blue,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 100.0,
      fontFamily: 'Latin',
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Image.asset(
              //   'assets/images/SplashScreen.jpg',
              // ),
              const SizedBox(height: 10,),
              AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'StudyON',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
              ),
            ],
          )
      ),
    );
  }
}
