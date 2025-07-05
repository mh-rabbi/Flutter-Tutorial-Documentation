import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // variable
  int _counter = 0;

  // method
  void _incrementCounter() {
    //setstate rebuilds the widget
    // without setstate increment will not show
    setState(() {
      _counter++;
    });
  }

  //method to decrement
  void _decrementCounter() {
    //setstate rebuilds the widget
    // without setstate increment will not show

    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  // UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Stateful Widget')),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //show message
            Text('You push the button this many times'),

            //Counter value
            Text(_counter.toString(), style: TextStyle(fontSize: 40)),

            //button to increment
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Increment'),
            ),

            //button to decrement
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: _decrementCounter,
                child: Text('Decrement'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
