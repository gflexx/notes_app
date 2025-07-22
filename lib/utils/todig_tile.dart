import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TodigTile extends StatelessWidget {
  final String? taskName;
  final bool? taskCompleted;
  Function(bool?)? onChanged;

  TodigTile({super.key, this.taskName, this.taskCompleted, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6.3, right: 6.3, top: 9),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted, 
              onChanged: onChanged,
              activeColor: Colors.black54,
            ),
            Text(
              taskName!,
              style: TextStyle(
                decoration: taskCompleted! ? TextDecoration.lineThrough : null
              ),
            ),
          ],
        ),
      ),
    );
  }
}
