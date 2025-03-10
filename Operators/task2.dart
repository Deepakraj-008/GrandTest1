
// 2. **String Concatenation:**
//
//     Use the `+` operator to combine two string variables (e.g., “Hello” and “Flutter”) and print the result.


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StringConcatenation extends StatefulWidget {
  const StringConcatenation({super.key});

  @override
  State<StringConcatenation> createState() => _StringConcatenationState();
}

class _StringConcatenationState extends State<StringConcatenation> {
  dynamic? result;


  @override
  Widget build(BuildContext context) {



    void main()
    {
     String name1="Deepak";
     String name2="Raj";
      result=name1+name2;

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
