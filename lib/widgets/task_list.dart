import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool? ) checkboxChange;

  TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxChange});

  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.yellow[300],
        onChanged: checkboxChange
      ),
    );
  }
}


