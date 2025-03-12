
// 2. **Closures and Higher‑Order Functions:**
//
//     Write a function `makeIncrementer` that returns a closure. Each time the closure is called, it increments an internal counter
//     and returns the new value. Simulate multiple “button presses” by calling the closure several times and printing
//     the counter after each press.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClosuresandHigherOrder extends StatefulWidget {
  const ClosuresandHigherOrder({super.key});

  @override
  State<ClosuresandHigherOrder> createState() => _ClosuresandHigherOrderState();
}

class _ClosuresandHigherOrderState extends State<ClosuresandHigherOrder> {
  dynamic? result=0;



  @override
  Widget build(BuildContext context) {

    Function makeIncrementer() {
      int counter= 0;
      return () {
        counter++;
        return counter;
      };

    }
var increment =  makeIncrementer();
   result = increment();
   result = increment();
   result = increment();
   print(result);

    return SafeArea(
      child: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text("no. of Counts = $result ")
          ],
        ),
      ),
    );
  }
}
