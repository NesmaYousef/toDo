import 'package:flutter/material.dart';
import 'package:test1/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks=[
    Task(name: 'task1'),
    Task(name: 'task2'),
    Task(name: 'task3')
  ];
  void addTask(String newTaskTitle){
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task){
    task.doneChange();
    notifyListeners();
  }
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }

}
