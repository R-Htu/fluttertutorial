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
          decoration: BoxDecoration(
              color: const Color.fromARGB(221, 33, 59, 24),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
              )),
          height: 300,
          width: 300,
        ),
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(221, 33, 59, 24),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
              )),
          height: 200,
          width: 200,
        ),
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(221, 7, 26, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
              )),
          height: 100,
          width: 100,
        ),
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(221, 5, 22, 0),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
              )),
          height: 50,
          width: 50,
        ),
        Container(
          decoration: BoxDecoration(
              color: const Color.fromRGBO(1, 6, 0, 0.867),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
              )),
          height: 10,
          width: 10,
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
