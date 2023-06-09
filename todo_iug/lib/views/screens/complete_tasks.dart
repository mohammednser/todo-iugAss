

import 'package:flutter/material.dart';
import 'package:todo_iug/data/data_source.dart';
import 'package:todo_iug/views/widgets/task_widget.dart';

class CompleteTasksScreen extends StatelessWidget {
  Function function;
   CompleteTasksScreen(this.function, );
  
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: DataSource.tasks.where((element) => element.isComplete).length,
      itemBuilder:(context,index){
        return TaskWidget(DataSource.tasks.where((element) => element.isComplete).toList()[index],function);
      } );
  }
}