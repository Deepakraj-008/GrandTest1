
// 2. **Logical Decisions:**
//
//     Create a function that accepts two booleans (e.g., `isLoggedIn` and `hasPremiumstatus`) and
//     uses logical operators (`&&`, `||`, `!`) to return an appropriate status message. Test this function with different inputs.
//
//


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogicalDecisions extends StatefulWidget {
  const LogicalDecisions({super.key});

  @override
  State<LogicalDecisions> createState() => _LogicalDecisionsState();
}

class _LogicalDecisionsState extends State<LogicalDecisions> {
  dynamic? result;


  @override
  Widget build(BuildContext context) {

    String checkstatus(bool isLoggedIn, bool Premiumstatus) {
      if (isLoggedIn && Premiumstatus)
      {
        return "U can granted for both status";
      }
      else if (isLoggedIn && !Premiumstatus)
      {
        return "Login status granted. premium status not granted";
      }
      else if (!isLoggedIn && Premiumstatus)
      {
        return "Premium status granted but not logged in.";
      }
      else {
        return "status denied.";
      }
    }
    result=(checkstatus(true, false));

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
