
// 2. **Switch-Case Navigator:**
//     
//     Write a function `navigateRoute` that takes a string representing a route (e.g., “/home”, “/profile”, “/settings”) and 
//     uses a switch‑case statement to return the name of the screen to display. Print the result for each case.
//     
 

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchNavigator extends StatefulWidget {
  const SwitchNavigator({super.key});

  @override
  State<SwitchNavigator> createState() => _SwitchNavigatorState();
}

class _SwitchNavigatorState extends State<SwitchNavigator> {
  String? k;


  @override
  Widget build(BuildContext context) {


    String navigateRoute( String route) {
      switch (route) {
        case "/home"
            :
          return k = "U r in Home Page";

        case "/Profile"
            :
          return k = "U r in Profile Page";

        case "/settings"
            :
          return k = "U r in settings Page";

        default :
          return k = " Unknown route path ";
      }
    }
    navigateRoute("/settings");


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
