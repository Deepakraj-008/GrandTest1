
//1. **Simple Variable Declaration:**
//
//     Declare a variable using `var` with your favorite Flutter widget’s name (for example, "Text") and print its value.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class variableDeclaration extends StatefulWidget {
  const variableDeclaration({super.key});

  @override
  State<variableDeclaration> createState() => _variableDeclarationState();
}

class _variableDeclarationState extends State<variableDeclaration> {


  var widgets="Text";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("$widgets"),
        ],
      ),
    );
  }
}
