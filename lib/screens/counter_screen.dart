import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  // Key helps to identify widget within the Context
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // declaring here would be a variable: e.g: final String? name;
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    // here would be a variable

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // this one is relative to the Widget with bigger width
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            const Text('Taps Counter:', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          counter++;
          setState(() {});
        }),
        child: const Icon(Icons.add),
      ),
    );
  }
}
