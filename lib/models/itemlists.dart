import 'package:flutter/material.dart';

class TaskModel {
  int id;
  String title;
  String get getTitle => title;
  int get getId => id;
  TaskModel(this.id, this.title);
}

class TodoModel extends ChangeNotifier {
  List<TaskModel> taskList = [];
  int counter = 0;
  addtoList() {
    counter++;
    TaskModel taskmodel = TaskModel(counter, "title");
    taskList.add(taskmodel);
    notifyListeners();
  }

  removefromList(index) {
    taskList.removeWhere((element) => element.id == taskList[index].id);
    notifyListeners();
  }
}
