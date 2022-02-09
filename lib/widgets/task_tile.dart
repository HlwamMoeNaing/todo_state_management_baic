import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final bool isChecked;
  final String taskTitle;
  void Function(bool?) checkboxCallback;
  final Function() longPressCallback;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longPressCallback});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: widget.longPressCallback,
      title: Text(
        widget.taskTitle,
        style: TextStyle(
            decoration: widget.isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: widget.isChecked,
          onChanged: widget.checkboxCallback),
    );
  }
}
