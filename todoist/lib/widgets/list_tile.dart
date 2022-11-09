import 'dart:ui';

import 'package:flutter/material.dart';

class listTileLmao extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  Function checkBoxCallBack;
  listTileLmao(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (value) => checkBoxCallBack(),
      ),
    );
  }
}
