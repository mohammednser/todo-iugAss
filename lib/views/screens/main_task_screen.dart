

import 'package:flutter/material.dart';
import 'package:todo_iug/views/screens/all_task_screen.dart';
import 'package:todo_iug/views/screens/complete_tasks.dart';
import 'package:todo_iug/views/screens/incomplete_tasks.dart';

class MainTasksScreen extends StatefulWidget {
  const MainTasksScreen({super.key});

  
  @override
  State<MainTasksScreen> createState() => _MainTasksScreenState();
}

class _MainTasksScreenState extends State<MainTasksScreen> {
  PageController pageController = PageController();

  int pageIndex = 0;
  refreshPage(){
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
         currentIndex: pageIndex,
         onTap: (value) {
           pageIndex=value;
           pageController.jumpToPage(value);
           setState(() { });
         },
        
        items: const [
         BottomNavigationBarItem(icon: Icon(Icons.list),label: "All Task"),
        BottomNavigationBarItem(icon: Icon(Icons.done),label: "Complete Task"),
        BottomNavigationBarItem(icon: Icon(Icons.cancel),label: "InComplete Task"),
      ]),
      appBar: AppBar(title: const Text("Todo App")),
      body: PageView(
        controller: pageController,
        children: [
           AllTasksScreen(refreshPage),
           CompleteTasksScreen(refreshPage),
           InCompleteTasksScreen(refreshPage),
        ],
      ),
    );
  }
}