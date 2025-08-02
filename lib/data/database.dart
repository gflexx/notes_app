import 'package:hive/hive.dart';

class ToDoDatabase{
  List toDig = [];

  // reference the box
  final _myBox = Hive.box('todoBox');

  // run this method when the app starts
  void createInitialData() {
    toDig = [
      ["Add your first task", false],
      ["Swipe left to delete", false]
    ];
  }

  // load the data from database
  void loadData() {
    toDig = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDig);
  }
}