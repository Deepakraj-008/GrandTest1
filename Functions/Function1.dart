
//### Easy
//
// 1. **Hello Function:**
//
//     Write a function called `sayHello` that prints “Hello, Flutter!” and call it from `main()`.


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Function_task1 extends StatefulWidget {
  const Function_task1({super.key});

  @override
  State<Function_task1> createState() => _Function_task1State();
}

class _Function_task1State extends State<Function_task1> {
  dynamic? result;


  @override
  Widget build(BuildContext context) {

void sayHello()
{
  result="Hello Flutter";
}

    void main()
    {
      sayHello();
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
