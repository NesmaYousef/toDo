import 'package:flutter/material.dart';
import 'package:test1/screens/add_task_screen.dart';

import '../models/task.dart';
import '../widgets/tasks_list.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {

  List<Task> tasks=[
    Task(name: 'shopping'),
    Task(name: 'car'),
    Task(name: 'gift')
  ];

  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context)=> SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen(
                        (newTaskTitle){
                          setState(()
                          {
                            tasks.add(Task(name: newTaskTitle));
                          }
                          );
                        }

                    )
                  )
              ),
              );
        },
        backgroundColor: Colors.yellow[300],
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.cyan[800],
      body: Container(
        padding: const EdgeInsets.only(
            top: 60,
            left: 20,
            right: 20,
            bottom: 80
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children:const [
                Icon((Icons.playlist_add_check),
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("To Do",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white
                )
                )

              ] ,
            ),
            Text('${tasks.length} Tasks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18
              ),
            ),
            SizedBox(height:20),
            Expanded(
              child: Container(
                child:TasksList(tasks),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                      Radius.circular(20)
                  )
                ),
              ),
            )
          ],

        )
      ),
    );
  }
}

