
// ### Hard
//
// 1. **Advanced Function Use:**
//
//     Write a recursive function `factorial` that computes the factorial of a given number. Then, integrate this function into a
//     simulated Flutter scenario by creating a function `buildFactorialWidget` that returns a string like “Factorial of 5 is 120”.
//     Print the result.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdvancedFunction extends StatefulWidget {
  const AdvancedFunction({super.key});

  @override
  State<AdvancedFunction> createState() => _AdvancedFunctionState();
}

class _AdvancedFunctionState extends State<AdvancedFunction> {
  dynamic? result;

  void main() {
    int m= fub(5);
    //print("The sum of n digits number $m");
    // print("The fabnicco of n=7 digit number $m");
  //  print("The factorial of n digits number $m");
    result ="The factorial of n digits number $m";
  }


  int fub(int n)
  {
    if(n<=1)
    {
      return 1;
    }
    // return fub(n-1) + fub(n-2);
    //return n+ fub(n-1);
    return n * fub(n-1);
  }
  @override
  Widget build(BuildContext context) {

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
