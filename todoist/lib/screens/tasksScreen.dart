// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todoist/widgets/list_view.dart';

import '../modules/task.dart';
import '../widgets/bottomSheet.dart';

class tasksScreen extends StatefulWidget {
  const tasksScreen({super.key});

  @override
  State<tasksScreen> createState() => _tasksScreenState();
}

class _tasksScreenState extends State<tasksScreen> {

  Widget buildBottomThing(BuildContext build) =>
      AddTaskScreen((String newTaskTile) {
        print(task);
        setState(() {
          task.add(Task(name: newTaskTile));
        });
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(context: context, builder: buildBottomThing);
        },
        backgroundColor: Colors.lightBlueAccent,
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            // ignore: prefer_const_literals_to_create_immutables
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 30,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Todoey",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "${task.length} task",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              // ignore: sort_child_properties_last
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: viewLmfao(task),
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
