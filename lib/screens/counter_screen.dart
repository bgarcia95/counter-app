import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  // Key helps to identify widget within the Context
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // declaring here would be a property: e.g: final String? name;
  int counter = 10;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    TextStyle counterStyles =
        TextStyle(fontSize: 30, color: Colors.grey.shade500);

    // here would be a variable

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // this one is relative to the Widget with bigger width/height
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text('Taps Counter:', style: fontSize30),
            Text('$counter', style: counterStyles),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions(
      {super.key,
      required this.increaseFn,
      required this.decreaseFn,
      required this.resetFn});

  // Since our fn is generated in runtime not compilation time can't be constant
  // Whenever something will not change on runtime can be a constant

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_outlined),
          onPressed: () => resetFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => increaseFn(),
        ),
      ],
    );
  }
}
