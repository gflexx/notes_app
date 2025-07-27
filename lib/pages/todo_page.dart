import 'package:flutter/material.dart';
import 'package:notes_app/utils/dialog_box.dart';
import 'package:notes_app/utils/todig_tile.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final TextEditingController _controller = TextEditingController();

  List toDig = [];

  // checkbox change
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDig[index][1] = value;
    });
  }

  // save task
  void saveTask(){
    setState(() {
      toDig.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  // create task
  void createNewTask() {
    debugPrint('Create New Task');
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
  void deleteTask(int index){
    setState(() {
      toDig.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('TO DIG LIST'),
        elevation: 0,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add, color: Colors.black),
      ),
      body: ListView.builder(
        itemCount: toDig.length,
        itemBuilder: (context, index) {
          return TodigTile(
            taskName: toDig[index][0],
            taskCompleted: toDig[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteAction: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}
