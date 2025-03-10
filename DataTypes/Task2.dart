
//2. **Explicit Declaration:**
//
//     Declare an integer variable for your age and a string variable for your username using explicit types.
//     Print both in a single sentence.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExplicitDeclaration extends StatefulWidget {
  const ExplicitDeclaration({super.key});

  @override
  State<ExplicitDeclaration> createState() => _ExplicitDeclarationState();
}

class _ExplicitDeclarationState extends State<ExplicitDeclaration> {

  int age =30;
  String Username="deepak";

  @override
  Widget build(BuildContext context) {

    dynamic add= " My name is $Username and my age = $age ";
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("$add"),
          ],
        ),
      ),
    );
  }
}
