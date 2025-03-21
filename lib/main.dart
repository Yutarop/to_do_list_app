import 'package:flutter/material.dart';
import 'package:to_do_list_app/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_app/models/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Data(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
