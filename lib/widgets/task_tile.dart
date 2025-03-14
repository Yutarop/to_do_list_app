import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxCallback;

  TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
        )
    );
  }
}