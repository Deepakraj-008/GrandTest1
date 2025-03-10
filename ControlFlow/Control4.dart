
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

  void navigateRoute( String route)
  {
   switch(route)
    {
     case "/home"
       :k="U r in Home Page";
     break;
     case "/Profile"
       :k="U r in Profile Page";
     break;
     case "/Login"
       :k="U r in Login Page";
     break;
     case "/Logout"
       :k="U r in Logout Page";
     break;
     case "/Settings"
       :k="U r in Settings Page";
     break;
     default :
       k=" Unknown route path ";
       break;

    }

  }
  @override
  Widget build(BuildContext context) {

    void main()
    {
      navigateRoute("/Settings");
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
