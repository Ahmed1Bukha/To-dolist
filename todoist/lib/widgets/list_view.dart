import 'package:flutter/material.dart';
import 'list_tile.dart';
import 'package:todoist/modules/task.dart';

class viewLmfao extends StatefulWidget {
  final List<Task> task;

  viewLmfao(this.task);
  @override
  State<viewLmfao> createState() => _viewLmfaoState();
}

class _viewLmfaoState extends State<viewLmfao> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.task.length,
      itemBuilder: ((context, index) {
        return listTileLmao(
            taskTitle: widget.task[index].name,
            isChecked: widget.task[index].isDone,
            checkBoxCallBack: () {
              setState(() {
                widget.task[index].toggleDone();
              });
            });
      }),
    );
  }
}
