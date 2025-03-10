
//### Easy
//
// 1. **Arithmetic Practice:**
//
//     Declare two integers and use arithmetic operators (`+`, `-`, `*`, `/`, `%`) to calculate and print their sum, difference, product, quotient, and remainder.


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArithmeticPractice extends StatefulWidget {
  const ArithmeticPractice({super.key});

  @override
  State<ArithmeticPractice> createState() => _ArithmeticPracticeState();
}

class _ArithmeticPracticeState extends State<ArithmeticPractice> {
  dynamic? result;


  @override
  Widget build(BuildContext context) {



    void main()
    {
   int a =60;
   int b =40;
   int add=a+b;
   int sub=a-b;
   int multiply=a*b;
   double divider=a/b;
   int modulus=a%b;

   result = " Addition = $add \n Subtraction= $sub \n Multiplication = $multiply \n division= $divider \n Modulus = $modulus ";
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
