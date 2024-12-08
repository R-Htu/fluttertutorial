import 'package:flutter/material.dart';

//‌ counter ‌ေရးထားတဲ့ နံပါတ်စဥ်တွေကို အရင်လုပ်နေ်
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // counter
  int counter = 0;

  // counter
  void increment() {
    setState(() {
      counter++;
    });
  }

  String message = "";

  void userTap() {
    setState(() {
      if (message == 'Hello world') {
        message = '';
      } else {
        message = 'Hello world';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(121, 44, 86, 1),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 224, 246, 226),
        child: Column(
          children: [
            const DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 35,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('H O M E'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('S E T T I N G S'),
              onTap: () {
                Navigator.pushNamed(context, '/settingpage');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                Container(
                  height: 2,
                  width: 2,
                  color: const Color.fromARGB(221, 6, 246, 6),
                ),
              ],
            ),
            SizedBox(height: 20),
            //counter အစ
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
                foregroundColor: const Color.fromARGB(255, 249, 249, 244),
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
            //counter အဆုံး
            SizedBox(height: 20),
            GestureDetector(
              onTap: userTap,
              child: Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 4, 28, 9),
                child: Center(
                    child: Text(
                  'Tap me!',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ),
            ),
            if (message.isNotEmpty) SizedBox(height: 20),
            if (message.isNotEmpty)
              Text(
                message,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
