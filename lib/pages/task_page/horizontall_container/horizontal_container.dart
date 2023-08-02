import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/global.dart';

class TaskCounterBlock extends StatefulWidget {
  final String name;
  final String counter;
  final String icon;
  const TaskCounterBlock(this.name, this.counter, this.icon, {super.key});
  @override
  State<TaskCounterBlock> createState() => _TaskCounterBlockState();
}

class _TaskCounterBlockState extends State<TaskCounterBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white
      ),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(150, 244, 215, 235),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Text(widget.counter),
                ),
                // Spacer(),
                ImageIcon(AssetImage(widget.icon))
              ],
            )
          ),
          Text(widget.name)
        ]
      ),
    );
  }
}
