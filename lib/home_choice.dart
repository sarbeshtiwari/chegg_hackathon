import 'package:chegg_platform/screens/home_screen.dart';
import 'package:flutter/material.dart';

class HomeChoice extends StatefulWidget {
  static const String id = 'under-development';

  @override
  State<HomeChoice> createState() => _HomeChoiceState();
}

class _HomeChoiceState extends State<HomeChoice> {
  bool validate = false;
  var phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "What we can call you.......",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 320,
          child: Card(
            elevation: 6,
            color: Colors.amber.shade100,
            semanticContainer: true,
            child: InkResponse(
              containedInkWell: true,
              highlightShape: BoxShape.rectangle,
              onTap: () {
                // Clear all showing snack bars
                ScaffoldMessenger.of(context).clearSnackBars();
                // Display a snack bar
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Welcome Dear Student"),
                ));
                Navigator.pushNamed(context, HomeScreen.id);
              },
              // Add image & text
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Ink.image(
                      width: double.infinity,
                      height: 240,
                      fit: BoxFit.cover,
                      image: const NetworkImage(
                          'https://i2.wp.com/rollercoasteryears.com/wp-content/uploads/Thrive-During-Finals-.jpg?fit=1000%2C667&ssl=1')),
                  const Text(
                    'Student',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
