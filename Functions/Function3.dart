
// ### Medium
//
// 1. **Parameters Galore:**
//
//     Write a function `describeWidget` that takes two required positional parameters: a widget name (String) and its version (int).
//     The function should return a formatted description. Call the function and print the result.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ParametersGalore extends StatefulWidget {
  const ParametersGalore({super.key});

  @override
  State<ParametersGalore> createState() => _ParametersGaloreState();
}

class _ParametersGaloreState extends State<ParametersGalore> {
  dynamic? result;


  @override
  Widget build(BuildContext context) {

   void describeWidget(  String name,  int version)
   {
     result="This app was built by $name and there version = $version";
   }

    void main()
    {
      describeWidget("Flutter", 8);
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
