import 'package:flutter/material.dart';
import 'package:tutorial_flutter/component/dialog_box.dart';
import 'package:tutorial_flutter/component/to_do_tile.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({super.key});

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  final _controller = TextEditingController();
  List toDoTask = [
    ['Learn New Things', false],
    ['Do Exercise', false],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoTask[index][1] = !toDoTask[index][1];
    });
  }

  void saveNewTask() {
    final taskName = _controller.text.trim();
    if (taskName.isNotEmpty) {
      setState(() {
        toDoTask.add([taskName, false]);
      });
      _controller.clear();
      Navigator.of(context).pop();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: const Text(
          "Task cannot be empty",
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        )),
      );
    }
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onCancel: () => Navigator.of(context).pop(), // Close the dialog
          onSaved: saveNewTask,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(167, 57, 71, 56),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 42, 68, 53),
        title: Center(
          child: Text(
            'Daily Routine',
            style: TextStyle(fontSize: 24),
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 221, 245, 221),
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 70),
        itemCount: toDoTask.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoTask[index][0],
            taskCompleted: toDoTask[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
