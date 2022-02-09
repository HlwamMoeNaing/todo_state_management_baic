import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:todo_state_management_baic/models/task_data.dart';
import 'package:todo_state_management_baic/service/dialog.dart';
import 'package:todo_state_management_baic/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dialog = PopDialog();
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                dialog.myDialog("Delete", "Press OK to delete",
                    () => taskData.deleteTask(task), context);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
