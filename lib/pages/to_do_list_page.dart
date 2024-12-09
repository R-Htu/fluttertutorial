import 'package:flutter/material.dart';
import 'package:tutorial_flutter/component/to_do_tile.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({super.key});

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(167, 57, 71, 56),
      appBar: AppBar(
        title: Text('List'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          ToDoTile(
            taskName: 'Make tutorial',
            taskCompleted: true,
            onChanged: (p0) {},
          ),
        ],
      ),
    );
  }
}
