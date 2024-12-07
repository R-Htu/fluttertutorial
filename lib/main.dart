import 'package:flutter/material.dart';
import 'package:tutorial_flutter/pages/counter_page.dart';
import 'package:tutorial_flutter/pages/home_page.dart';
import 'package:tutorial_flutter/pages/setting_page.dart';

//flutter tutorial for my students

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
      routes: {
        '/homepage': (context) => HomePage(),
        '/settingpage': (context) => SettingPage(),
      },
    );
  }
}
