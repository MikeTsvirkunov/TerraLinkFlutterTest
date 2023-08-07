import 'package:flutter/material.dart';
// import 'horizontall_container/horizontal_scroll_bar.dart';
import 'horizontall_container/horizontal_container.dart';
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
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Column(
            children: <Widget>[
              Container(
                color: const Color.fromARGB(255, 240, 242, 245),
                width: double.maxFinite,
                height: 120,
                child: const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TaskCounterBlock('Согласование', '6', 'assets/images/icons/Union.png'),
                      TaskCounterBlock('Согласование', '6', 'assets/images/icons/Union.png'),
                      TaskCounterBlock('Согласование', '6', 'assets/images/icons/Union.png'),
                    ],
                  ),
                ),
              ),
              const TaskBlock(
                  <Widget>[
                    Text(
                      'Автор: Панасенков Г.В. \nBlaBla',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                  ],
                  'Подписание',
                  'Служебная записка ПЗ456-890',
                  '23',
                  'дек',
                  'Задача — проблемная ситуация с явно заданной целью, которую необходимо достичь; в более узком смысле задачей также называют саму',
                  243,
                  0,
                  52,
                  15
                ),
              const TaskBlock(
                  <Widget>[
                    Text(
                      'Автор: Панасенков Г.В. \nBlaBla',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                  ],
                  'Подписание',
                  'Служебная записка ПЗ456-890',
                  '23',
                  'дек',
                  'Задача — проблемная ситуация с явно заданной целью, которую необходимо достичь; в более узком смысле задачей также называют саму',
                  0,
                  0,
                  0,
                  0),
              const TaskBlock(
                  <Widget>[
                    Text(
                      'Автор: Панасенков Г.В. \nBlaBla',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                  ],
                  'Подписание',
                  'Служебная записка ПЗ456-890',
                  '23',
                  'дек',
                  'Задача — проблемная ситуация с явно заданной целью, которую необходимо достичь; в более узком смысле задачей также называют саму',
                  0,
                  0,
                  0,
                  0),
            ],
          )),
    );
  }
}
