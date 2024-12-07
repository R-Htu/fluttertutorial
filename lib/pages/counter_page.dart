import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Stack to overlay containers
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  color: const Color.fromARGB(221, 33, 59, 24),
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: const Color.fromARGB(221, 33, 59, 24),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: const Color.fromARGB(221, 7, 26, 1),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: const Color.fromARGB(221, 5, 22, 0),
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: const Color.fromARGB(221, 1, 6, 0),
                ),
              ],
            ),
            // Space between Stack and Button
            SizedBox(height: 30),
            // Text and Button outside of Stack
            Text(
              'You pushed the button many times',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 23,
                color: const Color.fromARGB(255, 21, 52, 2),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(199, 6, 55, 7),
                foregroundColor: const Color.fromARGB(255, 72, 68, 3),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: increment,
              child: Text(
                'Increment',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
