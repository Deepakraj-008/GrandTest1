
//2. ### Easy
// 
// 1. **Basic If-Else:**
//     
//     Write a function `checkLoginStatus` that declares a boolean variable (e.g., `isLoggedIn`) and uses an if‑else statement to 
//     print “User is logged in” or “User is not logged in.”


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicIfElse extends StatefulWidget {
  const BasicIfElse({super.key});

  @override
  State<BasicIfElse> createState() => _BasicIfElseState();
}

class _BasicIfElseState extends State<BasicIfElse> {
  dynamic? k;
bool isLoggedIn= true;
  void checkLoginStatus( )
  {
    if(isLoggedIn == true) {
      k="U r Login was successful";
    }
    else
      k="U r Login was failure";

  }
  @override
  Widget build(BuildContext context) {

    void main()
    {
      checkLoginStatus();
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
