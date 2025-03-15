import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_app/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxCallback;
  DateTime? dragStartTime;

  TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: LongPressDraggable(
          feedback: Text(
            taskTitle,
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
              decoration: TextDecoration.none,
            ),
          ),
          child: Text(
            taskTitle,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              decoration: isChecked ? TextDecoration.lineThrough : null,
            ),
          ),
          onDragStarted: () {
            dragStartTime = DateTime.now();
          },
          onDragEnd: (details) {
            if (dragStartTime != null && DateTime.now().difference(dragStartTime!)
                >= Duration(milliseconds: 500)){
              Provider.of<Data>(context, listen: false).deleteTask(taskTitle);
            }
          },
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
        )
    );
  }
}