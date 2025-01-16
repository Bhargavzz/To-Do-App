import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  //reference our box
  final _myBox = Hive.box('mybox');

  //run this method if this is the first time ever the app is opened
  void createInitialData() {
    toDoList = [
      ['Make tutorial', false],
      ['Do Exercise', false],
    ];
  }

  //load the data from the database

  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  //update the database
  void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
