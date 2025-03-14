import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
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
              '12 Tasks',
              style: TextStyle(
               color: Colors.white,
               fontSize: 30.0,
              )
            ),
          ],
        ),
      ),
    );
  }
}
