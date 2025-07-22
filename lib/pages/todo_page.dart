import 'package:flutter/material.dart';
import 'package:notes_app/utils/dialog_box.dart';
import 'package:notes_app/utils/todig_tile.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List toDig = [
    ['Dig Carrots', false],
    ['Plant Maize', true],
    ['Water Plants', false],
    ['Harvest Potatoes', true],
    ['Weed Garden', false],
    ['Fertilize Soil', true],
    ['Prune Trees', false],
    ['Mulch Beds', true],
    ['Compost Kitchen Waste', false],
    ['Plan Next Season', true],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDig[index][1] = value;
    });
  }

  void createNewTask() {
    debugPrint('Create New Task');
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox();
      },
    );
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
          );
        },
      ),
    );
  }
}
