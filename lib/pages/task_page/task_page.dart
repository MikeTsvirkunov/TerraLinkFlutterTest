import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_page/task_container.dart';
import 'top_bar_colapseable.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});
  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return const ColapseableAppBar();
  }
}
