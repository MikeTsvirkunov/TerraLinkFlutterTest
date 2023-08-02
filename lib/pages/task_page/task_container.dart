import 'package:flutter/material.dart';
// import 'horizontall_container/horizontal_scroll_bar.dart';
import './task_block.dart';

class TaskContainer extends StatefulWidget {
  final ScrollController contr;
  const TaskContainer(this.contr, {super.key});
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
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: const Column(
          
          children: <Widget>[
            // Text("Task1", textScaler: TextScaler.linear(20),),
          TaskBlock(
            'Подписание', 
            'Служебная записка ПЗ456-890', '23', 
            'дек', 
            'Задача — проблемная ситуация с явно заданной целью, которую необходимо достичь; в более узком смысле задачей также называют саму', 243, 0, 52),
          TaskBlock(
            'Подписание', 
            'Служебная записка ПЗ456-890', '23', 
            'дек', 
            'Задача — проблемная ситуация с явно заданной целью, которую необходимо достичь; в более узком смысле задачей также называют саму', 0, 0, 0),
          TaskBlock(
            'Подписание', 
            'Служебная записка ПЗ456-890', '23', 
            'дек', 
            'Задача — проблемная ситуация с явно заданной целью, которую необходимо достичь; в более узком смысле задачей также называют саму', 0, 0, 0),
          ],
        )
      ),
    );
  }
}
