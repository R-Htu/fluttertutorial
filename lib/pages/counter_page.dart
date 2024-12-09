import 'package:flutter/material.dart';
import 'package:tutorial_flutter/component/app_drawer.dart';
import 'package:tutorial_flutter/component/stack_widget.dart';
import 'package:tutorial_flutter/component/tap_widget.dart';
import 'package:tutorial_flutter/pages/to_do_list_page.dart';

//‌ counter လို့ ‌ေရးထားတွေကို အရင်လုပ်နေ်
//a tutorial for my students
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //backgroundColor: Color.fromARGB(121, 44, 86, 1),
          ),
      // drawer နဲ့ဆိုင်တာကို app_drawer.dart မှာ သွားကြည့်
      drawer: AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Stack နဲ့ဆိုင်တာကို stack_widget.dart မှာ သွားကြည့်
            StackWidget(),
            SizedBox(height: 20),
            //counter အစ
            Text(
              'Press the increment button to see the number rise',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 28,
                color: const Color.fromARGB(255, 21, 52, 2),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(199, 6, 55, 7),
                    foregroundColor: const Color.fromARGB(255, 249, 249, 244),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ToDoListPage()),
                    );
                  },
                  child: Text(
                    'To do list',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            //counter အဆုံး
            SizedBox(height: 20),
            // GetureDetector နဲ့ဆိုင်တာကို tap_widget.dart မှာ သွားကြည့်
            TapWidget(),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
