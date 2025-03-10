
// 2. **Named and Optional Parameters:**
//
//     Write a function `buildCard` that uses named parameters (one required, one optional with a default value) to return a card
//     description string. Test it with different combinations of parameters.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NamedandOptional extends StatefulWidget {
  const NamedandOptional({super.key});

  @override
  State<NamedandOptional> createState() => _NamedandOptionalState();
}

class _NamedandOptionalState extends State<NamedandOptional> {
  dynamic? result;

  void buildCards(  { required String name,int age =24} )
{
result="Username = $name and age= $age";
}

  @override
  Widget build(BuildContext context) {

    void main()
    {
      buildCards(name: "Deepakraj" );
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
