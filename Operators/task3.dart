
// ### Medium
//
// 1. **Comparison Challenge:**
//
//     Write a function that accepts two numbers and uses comparison operators (`==`, `!=`, `<`, `>`, `<=`, `>=`) to check various conditions.
//     Return a string message for each condition and print it.


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComparisonChallenge extends StatefulWidget {
  const ComparisonChallenge({super.key});

  @override
  State<ComparisonChallenge> createState() => _ComparisonChallengeState();
}

class _ComparisonChallengeState extends State<ComparisonChallenge> {
  dynamic? result;


  @override
  Widget build(BuildContext context) {

    String Compare( int a , int b)
    {
      if(a==b)
        {
        return  result = " a = $a and b = $b values are same  ";
        }
      else if(a>b)
      {
        return result = " a = $a Lesser then  b = $b   ";
      }else if(a>=b)
      {
        return result = " a = $a Greater then  b = $b  ";
      }else if(a<b)
      {
        return result = " a = $a Lesser then  b = $b  ";
      }else if(a<=b)
      {
        return result = " a = $a Greater then  b = $b  ";
      }else if(a!=b)
      {
        return result = " a = $a and b = $b values are Not same  ";
      }
      else
        return result = " please enter the values of a & b  ";


    }
    void main()
    {
      Compare(75,25);
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
