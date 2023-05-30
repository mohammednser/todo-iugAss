import 'package:flutter/material.dart';

class LargeScreen  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     
      
      appBar: AppBar(title: const Text("Todo App")),
      body: Row(
       children: [
          Expanded(child: Column(children: [
             const UserAccountsDrawerHeader(
                accountName: Text('name'), accountEmail: Text("email"))
        
          ],)),
          const Expanded(
            child: Center(
              child: Text("Screen Body"),
            ),
          ),
        ],
      ),
    );
  }
  
}