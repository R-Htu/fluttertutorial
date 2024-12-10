import 'package:flutter/material.dart';
import 'package:tutorial_flutter/pages/counter_page.dart';
import 'package:tutorial_flutter/pages/home_page.dart';
import 'package:tutorial_flutter/pages/setting_page.dart';

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
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.green,
        //  textTheme: GoogleFonts.emilysCandyTextTheme(),
      ),
      routes: {
        '/homepage': (context) => HomePage(),
        '/settingpage': (context) => SettingPage(),
      },
    );
  }
}
