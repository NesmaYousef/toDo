import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.cyan[800],
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 30),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText){
              newTaskTitle = newText;
            },
          ),

          SizedBox(height: 20),

          TextButton(
              onPressed: (){
                addTaskCallback(newTaskTitle);
            },
              child: Text('Add'),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.cyan[800],
                foregroundColor: Colors.white
              ),
          )
        ],
      ),

    );
  }
}