import 'package:flutter/material.dart';

class TaskContainer extends StatefulWidget {
  final ScrollController contr;
  const TaskContainer(this.contr, {super.key});
  @override
  State<TaskContainer> createState() => _TaskContainerState(contr);
}

class _TaskContainerState extends State<TaskContainer> {
  final ScrollController contr;
  _TaskContainerState(this.contr);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: contr,
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 100),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 215, 220, 231),
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: const Column(children: <Widget>[
            Text("Task1", textScaler: TextScaler.linear(20),),
            Text("Task2", ),
            Text("Task3", )
          ],
        )
      ),
    );
  }
}
