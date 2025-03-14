import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallback(bool? checkboxState){
    setState(() {
      isChecked = checkboxState ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Buy milk',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(checkboxSate: isChecked, toggleCheckboxState: checkboxCallback,),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxSate;
  final void Function(bool?) toggleCheckboxState;
  TaskCheckBox({required this.checkboxSate, required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxSate,
      onChanged: toggleCheckboxState,
    );
  }
}