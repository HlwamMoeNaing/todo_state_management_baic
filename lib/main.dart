import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todo_state_management_baic/models/task_data.dart';
import 'package:todo_state_management_baic/screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: const MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
