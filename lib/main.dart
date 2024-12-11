import 'package:flutter/material.dart';
import 'package:tutorial_flutter/pages/counter_page.dart';
import 'package:tutorial_flutter/ecommerce/home_page.dart';
import 'package:tutorial_flutter/pages/setting_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

/*const MaterialColor customColor = MaterialColor(
  _customColorPrimaryValue,
  <int, Color>{
    50: Color(0xFF2C5601), // Lightest shade
    100: Color(0xFF2C5601),
    200: Color(0xFF2C5601),
    300: Color(0xFF2C5601),
    400: Color(0xFF2C5601),
    500: Color(0xFF2C5601), // Default shade
    600: Color(0xFF2C5601),
    700: Color(0xFF2C5601),
    800: Color(0xFF2C5601),
    900: Color(0xFF2C5601), // Darkest shade
  },
);

const int _customColorPrimaryValue = 0xFF2C5601; // The main color value
*/
void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensure Flutter bindings are initialized
  await Hive.initFlutter(); // Initialize Hive
  await Hive.openBox(
      'mybox'); // Open the box, no need to store it in a variable here
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          CounterPage(), // Replace with HomePage() if that's the starting screen
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        '/homepage': (context) => HomePage(),
        '/settingpage': (context) => SettingPage(),
      },
    );
  }
}
