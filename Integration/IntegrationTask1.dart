
// ### Grand Integration Project
//
// - **Exercise:**
//
//     Imagine you’re building a Flutter app that displays a list of notifications fetched from an API.
//     Write a function `fetchNotifications` that:
//
//     1. Uses a while loop to simulate retrying the fetch operation (up to 3 attempts).
//     2. Once “fetched” (simulate success on the 3rd attempt), returns a list of maps where each map represents a
//     notification with keys `"title"` (String) and `"read"` (boolean).
//     3. Write another function `buildNotificationUI` that:
//         - Uses an if‑else (or switch‑case) to decide whether to show “No notifications” if the list is empty or to build
//         a list of notification titles.
//         - Uses a for‑in loop (or `.map()`) to process and print each notification’s title, adding a “(New)” suffix
//         if `"read"` is false.
//     4. Call these functions in `main()` and print the final simulated UI output.
//
//     *Hint:* Think about how you would update state in a Flutter app once data is fetched and processed.



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GrandIntegrationProject extends StatefulWidget {
  const GrandIntegrationProject({super.key});

  @override
  State<GrandIntegrationProject> createState() => _GrandIntegrationProjectState();
}

class _GrandIntegrationProjectState extends State<GrandIntegrationProject> {
  dynamic result,n,m,num;

  List<dynamic> _list=[];
  List<dynamic> noty =[];
  List<dynamic> FinalOP =[];

  void fetchNotifications()
  {
    m=0;
    while(m<3) {
      m++;
      _list.add("Attempt :- $m");
    }
   // print(_list.length);
   // print("m value $m");
    if (m == 3) {
      n = m;
       noty = [{
        "title": "Streak Notifications",
        "Read": false
      }, {
        "title": "Job Notifications",
        "Read": false
      }, {
        "title": "Food Notifications",
        "Read": true
      }, {
        "title": "Car Notifications",
        "Read": true
      },
      ];
      // widgets.add(noty);

    //  print("im printing widgets here---------------------------------------> function ");
    //  print(noty);
    }

  }


  void buildNotificationUI()
  {
    if(noty.isEmpty)
    {
      result="No notifications" ;
     // print("im in a if statement");
    }
    else
    {

    //  print("im in a else before function ");
    //   for (var Finals in noty) {
    //     String title = Finals["title"];
    //     bool isRead = Finals["read"];
    //     print(isRead ? title : "$title (New)");
    //   }

     FinalOP.add(noty.where((noty)=>noty["Read"]== false).map((t)=> "${t["title"]} (New)").toList());



    //  print("im in a else after function ");

    }
  }


@override
  void initState() {
    super.initState();
    fetchNotifications();
    buildNotificationUI();
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
                    return  Text("${_list[index]} ") ;
                  }),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: FinalOP.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context,index){
                    return  Text("${FinalOP[index]}  ");
                  }),
            )
          ],
        ),
      ),
    );
  }
}
