    
// 2. **Ternary Greeting:**
//     
//     Write a function `greetingMessage` that uses a ternary operator to return “Good Morning” if a boolean `isMorning` is true 
//     
//     or “Good Evening” if false. Print the result.
//     

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TernaryGreeting extends StatefulWidget {
  const TernaryGreeting({super.key});

  @override
  State<TernaryGreeting> createState() => _TernaryGreetingState();
}

class _TernaryGreetingState extends State<TernaryGreeting> {
  String? k;
  bool isMorning =true;
  void greetingMessage( )
  {
   k= isMorning == true ? "Good Morning" : "Good Evening";

  }
  @override
  Widget build(BuildContext context) {

    void main()
    {
      greetingMessage();
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
