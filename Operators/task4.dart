
// 2. **Logical Decisions:**
//
//     Create a function that accepts two booleans (e.g., `isLoggedIn` and `hasPremiumAccess`) and
//     uses logical operators (`&&`, `||`, `!`) to return an appropriate access message. Test this function with different inputs.
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

    void main()
    {
      bool isLoggedIn =false;
      bool hasPremiumAccess =true;
      if(isLoggedIn && hasPremiumAccess)
      {
        result = " u can access both are passes  ";
      }
     else if(isLoggedIn || hasPremiumAccess)
      {
        result = "  u can access only one of them   ";
      }
     else if(!isLoggedIn)
      {
        result = " u can access isLoggedIn pass   ";
      }
      else
        result = " u can access hasPremiumAccess pass  ";
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
