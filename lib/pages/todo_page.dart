import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/data/database.dart';
import 'package:notes_app/utils/dialog_box.dart';
import 'package:notes_app/utils/todig_tile.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final TextEditingController _controller = TextEditingController();

  final toDoBox = Hive.box('todoBox');
  ToDoDatabase db = ToDoDatabase();

  @override
  void initState() {
    // create default on first load
    if (toDoBox.get('TODOLIST') == null) {
      db.createInitialData();
    } else {
      // load data from database
      db.loadData();
    }
    super.initState();
  }

  // checkbox change
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.toDig[index][1] = value;
    });
    db.updateDatabase();
  }

  // save task
  void saveTask() {
    setState(() {
      db.toDig.add([_controller.text, false]);
      _controller.clear();
    });
    db.updateDatabase();
    Navigator.of(context).pop();
  }

  // create task
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveTask,
          onExit: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  // delete taks
  void deleteTask(int index) {
    setState(() {
      db.toDig.removeAt(index);
    });
    db.updateDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('TO DO'),
        elevation: 0,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add, color: Colors.black),
      ),
      body: ListView.builder(
        itemCount: db.toDig.length,
        itemBuilder: (context, index) {
          return TodigTile(
            taskName: db.toDig[index][0],
            taskCompleted: db.toDig[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteAction: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}
