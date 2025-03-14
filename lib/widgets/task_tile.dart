import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Buy milk',
        style: kToDoTextStyle,
      ),
      trailing: Checkbox(
          value: false,
          onChanged: (value){}),
    );
  }
}