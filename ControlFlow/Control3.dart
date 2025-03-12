
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

  @override
  Widget build(BuildContext context) {
    String connectionStatusMessage( String status )
    {
      if(status == "success")
      {
        return k = " u r status was success  ";
      }
      else if(status == "failure")
      {
        return k = "  u r status was failure    ";
      }
      else if(status == "loading")
      {
        return k = "  u r status was loading    ";
      }
      else
        return k = "  Unknown Status found!  ";
    }
    connectionStatusMessage("loading");

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
