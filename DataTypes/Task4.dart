
//2. **Data Type Methods:**
//
//     Create a function that:
//
//     - Accepts a double (for a widget’s padding).
//     - Returns its value formatted to two decimal places using a built‑in method.
//     Call the function and print the result.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuiltInMethods extends StatefulWidget {
  const BuiltInMethods({super.key});

  @override
  State<BuiltInMethods> createState() => _BuiltInMethodsState();
}

class _BuiltInMethodsState extends State<BuiltInMethods> {
  String? k;

  void padding( )
  {
    double  padding=34.090999;
    k=padding.toStringAsFixed(2);

  }
  @override
  Widget build(BuildContext context) {

    void main()
    {
      padding();
    }
    main();
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("$k"),
          ],
        ),
      ),
    );
  }
}
