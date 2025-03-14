import 'package:flutter/material.dart';
import 'package:to_do_list_app/widgets/tasks_list.dart';
import 'package:to_do_list_app/screens/add_task_screen.dart';
import 'package:to_do_list_app/models/task.dart';

class TasksScreen extends StatefulWidget {
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> taskItems = [
    Task(name: 'Buy tomato'),
    Task(name: 'Study quantum mechanics')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddTaskScreen(
                    addedButtonCallback: (addedTask) {
                      setState(() {
                        taskItems.add(Task(name: addedTask, isDone: false));
                      });
                    },
                  )
                )
              )
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 40.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 30.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                    'Todoey',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${taskItems.length} Tasks',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: 30.0,
                  )
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)
                ),
              ),
              child: Padding(
              padding: EdgeInsets.only(top: 0, left: 40.0, right: 40.0, bottom: 10.0),
                child: TasksList(tasks: taskItems,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
