
// ### Medium
// 
// 1. **Else-If Ladder:**
//     
//     Create a function `connectionStatusMessage` that accepts a string (`"loading"`, `"success"`, or `"failure"`) and 
//     returns a message for each status. Use an else‑if ladder for the logic. Test the function with all three inputs.


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElseIfLadder extends StatefulWidget {
  const ElseIfLadder({super.key});

  @override
  State<ElseIfLadder> createState() => _ElseIfLadderState();
}

class _ElseIfLadderState extends State<ElseIfLadder> {
  String? k;
  bool status =true;
  void connectionStatusMessage( )
  {
    if(status == "success")
    {
      k = " u r status was success  ";
    }
    else if(status == "failure")
    {
      k = "  u r status was failure    ";
    }
    else if(status == "rendering")
    {
      k = "  u r status was rendering    ";
    }
    else
      k = "  Unknown Status found!  ";
  }
  @override
  Widget build(BuildContext context) {

    void main()
    {
      connectionStatusMessage();
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
