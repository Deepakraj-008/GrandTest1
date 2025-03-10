
// ### Easy
// 
// 1. **For Loop Basics:**
//     
//     Write a program that uses a for loop to print the numbers 1 through 5.



import 'package:flutter/material.dart';

class ForLoopBasics extends StatefulWidget {
  const ForLoopBasics({super.key});

  @override
  State<ForLoopBasics> createState() => _ForLoopBasicsState();
}

class _ForLoopBasicsState extends State<ForLoopBasics> {
  dynamic? result;

  List<int> _list=[];
  void main()
  {
    for(int x=1; x<=5;x++)
    {
      _list.add(x);
    }

  }

  @override
  Widget build(BuildContext context) {


    main();
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
           // Text("$result"),
            Expanded(
              child: ListView.builder(
                itemCount: _list.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                return Text("${_list[index]}");
              }),
            )
          ],
        ),
      ),
    );
  }
}
