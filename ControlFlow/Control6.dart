
// 2. **Advanced Switch:**
//     
//     Write a function `selectTheme` that takes an integer representing a theme mode (e.g., 1 for “Light”, 2 for “Dark”, 3 for 
//     “System Default”) and returns the theme as a string using a switch‑case. Include a default case for invalid numbers. 
//     Print the output.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdvancedSwitch extends StatefulWidget {
  const AdvancedSwitch({super.key});

  @override
  State<AdvancedSwitch> createState() => _AdvancedSwitchState();
}

class _AdvancedSwitchState extends State<AdvancedSwitch> {
  String? k;

  void selectTheme(int theme )
  {
    switch(theme)
    {
      case 1
          :k="Dark";
      break;
      case 2
          :k="Light";
      break;
      default :
          k="System Default";
          break;

    }

  }
  @override
  Widget build(BuildContext context) {

    void main()
    {
      selectTheme(2);
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
