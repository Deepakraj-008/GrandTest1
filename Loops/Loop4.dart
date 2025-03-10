    
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


  @override
  Widget build(BuildContext context) {
    List<int> _list=[];

    void simulateNetworkRetry()
    {
      int n=0,m=2;
      while(n<=m)
      {
        n++;
        _list.add(n);

      }
    }

    void main()
    {
      simulateNetworkRetry();
    }


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
                         Text("${_list[index]} ") ,
                        if(_list[index]==3)
                            Text("Max attempt reached")

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
