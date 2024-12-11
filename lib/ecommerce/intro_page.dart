import 'package:flutter/material.dart';
import 'package:tutorial_flutter/ecommerce/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 1),
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
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
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
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                ),
                child: Container(
                    padding: EdgeInsets.all(19.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 2, 3, 2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'Shop Now',
                        style: TextStyle(
                          // fontStyle: FontStyle.italic,
                          color: const Color.fromARGB(255, 160, 241, 202),
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
