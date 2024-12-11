import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 160),
                child: Image.asset(
                  'lib/images/logo.jpg',
                  height: 240,
                  // width: 240,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Just Do it',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Brand new shoes with premium quality',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green[300],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: () {}, child: Text('Show Now'))
            ],
          ),
        ),
      ),
    );
  }
}
