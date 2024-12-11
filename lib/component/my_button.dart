import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.all(13),
      onPressed: onPressed,
      color: const Color.fromARGB(255, 10, 43, 3),
      //   color: Theme.of(context).primaryColor,
      child: Text(
        text,
        style: TextStyle(
          color: const Color.fromARGB(255, 247, 239, 239),
          //  fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
