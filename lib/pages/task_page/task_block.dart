import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/global.dart';

class TaskBlock extends StatefulWidget {
  const TaskBlock({super.key});
  @override
  State<TaskBlock> createState() => _BlockTaskState();
}

class _BlockTaskState extends State<TaskBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Color.fromARGB(255, 230, 232, 235), width: 2)), 
        color: Colors.white,
      ),
      child: const Row(
        children: [
          SizedBox(
            width: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Подписание',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Служебная записка ПЗ456-890',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  'Автор: Панасенков Г.В.',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                ),
              ],
            )
          ),
          Spacer(),
          Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('23',
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 25)
            ),
            Text(
              'дек.',
              style: TextStyle(fontSize: 15),
            )
          ],
        )
      ],
    )
    );
  }
}
