    
// 2. **While Loop Retry:**
//     
//     Create a function `simulateNetworkRetry` that uses a while loop to print “Attempt X” for 3 attempts,
//     simulating a retry mechanism. After the loop, print “Max attempts reached.”
//     



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhileLoop extends StatefulWidget {
  const WhileLoop({super.key});

  @override
  State<WhileLoop> createState() => _WhileLoopState();
}

class _WhileLoopState extends State<WhileLoop> {
  dynamic? result,k;
  List<int> _list=[];

  void simulateNetworkRetry()
  {
    int attempt=1;
    while(attempt<=3)
    {
      _list.add(attempt);
      attempt++;
    }
  }
  void main()
  {
    simulateNetworkRetry();
  }

  @override
  Widget build(BuildContext context) {

    main();
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount:_list.length,
                  itemBuilder: (context,index){
                    return Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text("attempt = ${_list[index]} ") ,
                        if(_list[index]==3)
                            Text("U have reached the Maximum attempt's")

                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
