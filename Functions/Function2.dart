
// 2. **Simple Return:**
//
//     Create a function `doubleNumber` that takes an integer, doubles it, and returns the result. Test the function and print the
//     output.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleReturn extends StatefulWidget {
  const SimpleReturn({super.key});

  @override
  State<SimpleReturn> createState() => _SimpleReturnState();
}

class _SimpleReturnState extends State<SimpleReturn> {
  dynamic? result;


  @override
  Widget build(BuildContext context) {

   int doubleNumber(int n)
   {
     return  result = n * 2;
   }

    void main()
    {
      doubleNumber(20);
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
