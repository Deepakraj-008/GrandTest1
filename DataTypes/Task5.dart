
//1. **Flutter Widget Data Display:**
// Write a Flutter‑inspired function that:
//     - Declares variables of different types (e.g., a string for title, an int for item count, a boolean for state).
//     - Combines these into a formatted message (e.g., “Welcome to [title]! You have [count] new notifications.”).
//     - (Optional) Imagine integrating this into a Flutter widget’s `build()` method.
//     Print the final message.


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlutterWidgetData extends StatefulWidget {
  const FlutterWidgetData({super.key});

  @override
  State<FlutterWidgetData> createState() => _FlutterWidgetDataState();
}

class _FlutterWidgetDataState extends State<FlutterWidgetData> {
dynamic? result;


  @override
  Widget build(BuildContext context) {

    void Flutters()
    {
      String title ="Flutter.com";
      int count= 15;
      bool state=true;
      result ="Welcome to $title ! You have $count new notifications are visible ? = $state";
    }

    void main()
    {
      Flutters();

    }
    main();
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("$result"),
          ],
        ),
      ),
    );
  }
}
