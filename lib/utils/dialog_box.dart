import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      title: Text('Create New Dig Task', textAlign: TextAlign.center),
      content: SizedBox(
        height: 207,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Add Task',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9)
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
