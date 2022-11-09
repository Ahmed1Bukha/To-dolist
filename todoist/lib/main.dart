import 'package:flutter/material.dart';
import 'package:todoist/screens/tasksScreen.dart';
import 'package:provider/provider.dart';

import 'modules/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create: (BuildContext context) {  },
      builder: (context, child) => TaskData(),
      child: MaterialApp(
        home: tasksScreen(),
      ),
    );
  }
}
