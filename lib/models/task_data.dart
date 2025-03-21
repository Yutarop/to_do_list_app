import 'package:flutter/material.dart';
import 'package:to_do_list_app/models/task.dart';
import 'dart:collection';

class Data extends ChangeNotifier {
  final List<Task> _taskItems = [
    Task(name: 'Go shopping'),
    Task(name: 'Study quantum mechanics'),
    Task(name: 'Do laundry'),
  ];
  
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_taskItems);
  }
  
  int get taskCount {
    return _taskItems.length;
  }

  void addTask(String taskItem) {
    Task task = Task(name: taskItem);
    _taskItems.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(String taskItem) {
    _taskItems.removeWhere((task) => task.name == taskItem);
    notifyListeners();
  }
}
