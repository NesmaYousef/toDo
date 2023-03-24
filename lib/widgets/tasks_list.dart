import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:test1/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
        itemCount : Provider.of<TaskData>(context).tasks.length,
        itemBuilder: (context, index){
        return TaskTile(
        isChecked:taskData.tasks[index].isDone,
        taskTitle:taskData.tasks[index].name,
        checkboxChange:(newValue) {
          taskData.updateTask(taskData.tasks[index]);
        }
        ,listTileDelete: (){
          taskData.deleteTask(taskData.tasks[index]);

        },);
        }
        );


      },
    );
  }
}

