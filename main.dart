
import 'package:flutter/material.dart';
import 'package:grandtest1/ControlFlow/Control1.dart';
import 'package:grandtest1/ControlFlow/Control2.dart';
import 'package:grandtest1/ControlFlow/Control3.dart';
import 'package:grandtest1/ControlFlow/Control4.dart';
import 'package:grandtest1/ControlFlow/Control5.dart';
import 'package:grandtest1/ControlFlow/Control6.dart';
import 'package:grandtest1/DataTypes/Task1.dart';
import 'package:grandtest1/DataTypes/Task2.dart';
import 'package:grandtest1/DataTypes/Task3.dart';
import 'package:grandtest1/DataTypes/Task4.dart';
import 'package:grandtest1/DataTypes/Task5.dart';
import 'package:grandtest1/Functions/Function1.dart';
import 'package:grandtest1/Functions/Function2.dart';
import 'package:grandtest1/Functions/Function3.dart';
import 'package:grandtest1/Functions/Function4.dart';
import 'package:grandtest1/Functions/Function5.dart';
import 'package:grandtest1/Functions/Function6.dart';
import 'package:grandtest1/Integration/IntegrationTask1.dart';
import 'package:grandtest1/Loops/Loop1.dart';
import 'package:grandtest1/Loops/Loop2.dart';
import 'package:grandtest1/Loops/Loop3.dart';
import 'package:grandtest1/Loops/Loop4.dart';
import 'package:grandtest1/Loops/Loop5.dart';
import 'package:grandtest1/Loops/Loop6.dart';
import 'package:grandtest1/Operators/task1.dart';
import 'package:grandtest1/Operators/task2.dart';
import 'package:grandtest1/Operators/task3.dart';
import 'package:grandtest1/Operators/task4.dart';
import 'package:grandtest1/Operators/task5.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DynamicList
        (),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
