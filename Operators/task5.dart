
// ### Hard
//
// 1. **Bitwise Manipulation:**
// Write a function that:
//     - Accepts an integer representing a bit field (simulate widget configuration flags).
//     - Uses bitwise operators (`&`, `|`, `^`, `<<`, `>>`) to toggle a specific flag and then prints the updated value.
//     Explain in comments how the operation could be used in managing widget state or permissions.


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BitwiseManipulation extends StatefulWidget {
  const BitwiseManipulation({super.key});

  @override
  State<BitwiseManipulation> createState() => _BitwiseManipulationState();
}

class _BitwiseManipulationState extends State<BitwiseManipulation> {
  dynamic? result;


  @override
  Widget build(BuildContext context) {

    int toggleFlag(int flags, int flag) {
      return result= flags ^ flag;
    }
    toggleFlag(20,26);

// Example usage:
// int Flags 20; // example flag configuration
// int flag 26;
// int newFlags = toggleFlag(Flags, flag);



    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("the updated value = $result"),
          ],
        ),
      ),
    );
  }
}
