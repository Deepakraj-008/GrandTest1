
// 
// ### Hard
// 
// 1. **Composite Condition:**
//     
//     Write a function `getUserMessage` that:
//     
//     - Accepts two parameters: a boolean `isLoggedIn` and an integer `notificationCount`.
//     - Uses a combination of if‑else statements and a ternary operator to return:
//         - “Welcome back, you have [notificationCount] new notifications” if logged in and notifications > 0.
//         - “Welcome back, no new notifications” if logged in and notifications are 0.
//         - “Please log in” if not logged in.
//         Test the function with different scenarios.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompositeCondition extends StatefulWidget {
  const CompositeCondition({super.key});

  @override
  State<CompositeCondition> createState() => _CompositeConditionState();
}

class _CompositeConditionState extends State<CompositeCondition> {
  String? k;

  void getUserMessage( bool isLoggedIn , int notificationCount )
  {
    if(isLoggedIn == true)
    {
     k= (isLoggedIn && notificationCount > 0) ? "Welcome back, you have $notificationCount new notifications" : "Welcome back, no new notifications";
    }
    else
      k = "  Please log in   ";

  }
  @override
  Widget build(BuildContext context) {

    void main()
    {
      getUserMessage(true,15);
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
