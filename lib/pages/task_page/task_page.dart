import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_page/task_container.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});
  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Home page")),
        body: const TaskContainer());
  }
}
