import 'package:flutter/material.dart';

class TapWidget extends StatefulWidget {
  const TapWidget({super.key});

  @override
  State<TapWidget> createState() => _TapWidgetState();
}

class _TapWidgetState extends State<TapWidget> {
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: userTap,
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 4, 28, 9),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50)),
            ),
            height: 200,
            width: 200,
            child: Center(
              child: Text(
                'Tap me!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
        // Only show the message if it's not empty
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
    );
  }
}
