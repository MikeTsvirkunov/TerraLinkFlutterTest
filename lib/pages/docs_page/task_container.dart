import 'package:flutter/material.dart';

class TaskContainer extends StatefulWidget {
  final ScrollController contr;
  final List<Widget> listOfTasks;
  const TaskContainer(this.contr, this.listOfTasks, {super.key});
  @override
  State<TaskContainer> createState() => _TaskContainerState();
}

class _TaskContainerState extends State<TaskContainer> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: widget.contr,
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 100),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: widget.listOfTasks
        )
      ),
    );
  }
}
