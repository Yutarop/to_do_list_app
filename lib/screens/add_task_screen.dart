import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  late String task;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 40, right: 40, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Add Task',
            style: TextStyle(
              fontSize: 40,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              task = value;
            },
            decoration: InputDecoration(
                hintText: 'Enter here',
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent,
                    )
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.lightBlueAccent,
                    )
                )
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                ),
                backgroundColor: Colors.lightBlueAccent,
              ),
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          MediaQuery.of(context).viewInsets.bottom == 0 ? SizedBox(height: 250,) : SizedBox(),
        ],
      ),
    );
  }
}
