import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tutorial_flutter/component/dialog_box.dart';
import 'package:tutorial_flutter/component/to_do_tile.dart';
import 'package:tutorial_flutter/data/database.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({super.key});

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  final _myBox = Hive.box('myBox');
  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {
    //if this is the 1st time ever opening the app, then create default data
    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }
    super.initState();
  }

  final _controller = TextEditingController();

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.toDoTask[index][1] = !db.toDoTask[index][1];
    });
    db.updateDataBase();
  }

  void saveNewTask() {
    final taskName = _controller.text.trim();
    if (taskName.isNotEmpty) {
      setState(() {
        db.toDoTask.add([taskName, false]);
      });
      _controller.clear();
      Navigator.of(context).pop();
      db.updateDataBase();
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

  void deleteTask(int index) {
    setState(() {
      db.toDoTask.removeAt(index);
    });
    db.updateDataBase();
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
        itemCount: db.toDoTask.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: db.toDoTask[index][0],
            taskCompleted: db.toDoTask[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}
