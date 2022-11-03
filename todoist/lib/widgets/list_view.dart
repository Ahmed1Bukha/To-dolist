import 'package:flutter/material.dart';
import 'list_tile.dart';
import 'package:todoist/modules/task.dart';

class viewLmfao extends StatelessWidget {
  List<Task> task = [
    Task(name: "Take the trash out."),
    Task(name: "Lmfao gg ff go next"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      // ignore: prefer_const_literals_to_create_immutables
      children: [listTileLmao(), listTileLmao()],
    );
  }
}
