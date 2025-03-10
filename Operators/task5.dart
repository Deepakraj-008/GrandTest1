
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

    void Flutters()
    {
    int num1=20;
    int num2=20;

    int And=num2&num1; //   This performs a bitwise AND operation. Each bit in the result is set to 1 if the corresponding bits in
                                 // both operands are 1.

    int Xor=num2^num1; //This performs a bitwise XOR (exclusive OR) operation. Each bit in the result is set to 1
                                  // if the corresponding bits in the operands are different.

    int OR=num2|num1; // This performs a bitwise OR operation. Each bit in the result is set to 1 if at
                                  // least one of the corresponding bits in the operands is 1.

    int Shiftleft=num2<<num1; //This performs a left shift operation. It shifts the bits of num2 to the left by the number of
                                  // positions specified by num1, effectively multiplying num2 by 2 raised to the power of num1.

    int Shiftright=num2>>num1; //This performs a right shift operation. It shifts the bits of num2 to the right by
                               // the number of positions specified by num1, effectively dividing num2 by 2 raised to the power of num1.

    result="Bitwise Operators are :- \n And = $And \n Xor = $Xor \n OR = $OR  \n  Shiftleft = $Shiftleft \n Shiftright = $Shiftright  \n";
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
