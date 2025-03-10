    
// 2. **For-In Simple:**
//     
//     Create a list of widget names (e.g., “Text”, “Image”, “Button”) and use a for‑in loop to print each widget name.



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForInSimple extends StatefulWidget {
  const ForInSimple({super.key});

  @override
  State<ForInSimple> createState() => _ForInSimpleState();
}

class _ForInSimpleState extends State<ForInSimple> {
  dynamic? result;

  List<dynamic> _list=[];
  List<dynamic> widgets =[];
  void main()
  {
    widgets=["Text","Image","Button","List"];
    for(var m in widgets)
    {
      _list.add(m);
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
                    return Text("${_list[index]} ");
                  }),
            )
          ],
        ),
      ),
    );
  }
}
