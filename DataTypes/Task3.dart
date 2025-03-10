
//1. **Immutable vs. Mutable:**
//
//     Write a small program that declares one variable as `final` (e.g., a project name) and another as a regular variable.
//     Then try changing both values and explain in comments why one fails.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImmutableAndMutable extends StatefulWidget {
  const ImmutableAndMutable({super.key});

  @override
  State<ImmutableAndMutable> createState() => _ImmutableAndMutableState();
}

class _ImmutableAndMutableState extends State<ImmutableAndMutable> {


  @override
  Widget build(BuildContext context) {
    final  projectname ="raj";
    dynamic name="Lucky";
   // projectname="navadeep";   //Variables must be declared using the keywords 'const', 'final', 'var' or a type name. and The name 'projectname' is already defined.

    name="deepak";
    return Scaffold(
      body: Column(
        children: [
          Text("//The final variable 'projectname' can only be set once. (Documentation)  Try making 'projectname' non-final."),
        ],
      ),
    );
  }
}
