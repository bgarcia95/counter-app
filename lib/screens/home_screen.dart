import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // Key helps to identify widget within the Context
  const HomeScreen({super.key});

  // declaring here would be a variable: e.g: final String? name;

  // BuildContext is the widgets tree. Helps to know the context our widget is being created (knows everything before this widget).
  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    // here would be a variable
    int counter = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
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
          print('Hello World: $counter');
          counter++;
        }),
        child: const Icon(Icons.add),
      ),
    );
  }
}
