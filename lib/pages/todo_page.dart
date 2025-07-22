import 'package:flutter/material.dart';
import 'package:notes_app/utils/todig_tile.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('To Dig List'),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          TodigTile(
            taskCompleted: false,
            taskName: "Dig Carrots",
            onChanged: (p0){},
          ),
          TodigTile(
            taskCompleted: true,
            taskName: "Plant Maize",
            onChanged: (p0){},
          ),
          TodigTile(
            taskCompleted: false,
            taskName: "Potatoes",
            onChanged: (p0){},
          ),
          TodigTile(
            taskCompleted: true,
            taskName: "Find Geese",
            onChanged: (p0){},
          ),
        ],
      )
    );
  }
}
