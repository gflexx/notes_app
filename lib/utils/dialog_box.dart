import 'package:flutter/material.dart';
import 'package:notes_app/utils/dialog_btn.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  VoidCallback onSave;
  VoidCallback onExit;
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  DialogBox({
    super.key, 
    required this.controller,
    required this.onSave,
    required this.onExit,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: 'Add Task',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DialogBtn(text: 'Save', onPressed: onSave),
                  const SizedBox(width: 12),
                  DialogBtn(text: 'Cancel', onPressed: onExit),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
