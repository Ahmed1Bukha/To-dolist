import 'dart:ui';

import 'package:flutter/material.dart';

class listTileLmao extends StatefulWidget {
  const listTileLmao({super.key});

  @override
  State<listTileLmao> createState() => _listTileLmaoState();
}

class _listTileLmaoState extends State<listTileLmao> {
  bool isChecked = false;

  void isCheckedCallBack() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "This is a task",
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: taskChecBox(isChecked, isCheckedCallBack),
    );
  }
}

class taskChecBox extends StatelessWidget {
  final bool isChecked;
  final Function isCheckedCallBack;
  taskChecBox(this.isChecked, this.isCheckedCallBack);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (value) => isCheckedCallBack(),
    );
  }
}
