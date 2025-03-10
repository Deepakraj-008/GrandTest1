
// ### Hard
// 
// 1. **Do-While for Progress:**
//     
//     Write a function `simulateProgress` that uses a do‑while loop to increment a progress variable (starting at 0) by
//     20 until it reaches or exceeds 100. Print “Loading: X%” at each step.


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoWhileProgress extends StatefulWidget {
  const DoWhileProgress({super.key});

  @override
  State<DoWhileProgress> createState() => _DoWhileProgressState();
}

class _DoWhileProgressState extends State<DoWhileProgress> {
  dynamic? result,process=0;


  List<String> _list=[];
   void simulateProgress()
   {
     do{
 _list.add("Loading : $process");
 process+=20;
     }while(process<=100);
   }

  @override
  void initState() {
    super.initState();
    simulateProgress();

  }

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Text("$result"),
            Expanded(
              child: ListView.builder(
                  itemCount: _list.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context,index){
                    return Text("${_list[index]}%");
                  }),
            )
          ],
        ),
      ),
    );
  }
}
