import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
