import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoTask = [];

  final _myBox = Hive.box('mybox');

  //runnnnn this method if this is the first time ever opening this app
  void createInitialData() {
    toDoTask = [
      ["Learn New things", false],
      ["Do Exercise", false],
    ];
  }

  void loadData() {
    toDoTask = _myBox.get("TODOLIST");
  }

  void updateDataBase() {
    _myBox.put("TODOLIST", toDoTask);
  }
}
