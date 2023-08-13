import 'package:flutter/material.dart';
// import 'package:flutter_application_terra_link_test/global.dart';

class TaskCountersContainer extends StatefulWidget {
  final List<Widget> listOfTaskCounterBlocks;
  const TaskCountersContainer(this.listOfTaskCounterBlocks, {super.key});
  @override
  State<TaskCountersContainer> createState() => _TaskCountersContainerState();
}

class _TaskCountersContainerState extends State<TaskCountersContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 240, 242, 245),
      width: double.maxFinite,
      height: 120,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: widget.listOfTaskCounterBlocks,
        ),
      ),
    );
  }
}
