import 'package:flutter/material.dart';
import 'package:to_do_list_app/widgets/task_tile.dart';
import 'package:to_do_list_app/models/task.dart';

class TasksList extends StatefulWidget {
  List<Task> tasks;
  TasksList({required this.tasks});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkboxCallback: (checkboxState) {setState(() {
            widget.tasks[index].toggleDone();
          });},
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}