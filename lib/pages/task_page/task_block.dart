import 'package:flutter/material.dart';
// import 'package:flutter_application_terra_link_test/global.dart';

class TaskBlock extends StatefulWidget {
  final String typeOfTask;
  final String docName;
  final String day;
  final String month;
  final String description;
  final int red;
  final int green;
  final int blue;
  const TaskBlock(this.typeOfTask, this.docName, this.day, this.month, this.description, this.red, this.green, this.blue, {super.key});
  @override
  State<TaskBlock> createState() => _BlockTaskState();
}

class _BlockTaskState extends State<TaskBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color.fromARGB(255, 230, 232, 235), width: 2)), 
        color: Colors.white,
      ),
      child: Column(
        children: [ Row(
          children: [
            SizedBox(
              width: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.typeOfTask,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, widget.red, widget.green, widget.blue)
                    ),
                  ),
                  Text(
                    widget.docName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 25,
                      color: Color.fromARGB(255, widget.red, widget.green, widget.blue)
                    ),
                  ),
                  const Text(
                    'Автор: Панасенков Г.В.',
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                ],
              )
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: Color.fromARGB(60, widget.red, widget.green, widget.blue)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(widget.day,
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 25, 
                      color: Color.fromARGB(255, widget.red, widget.green, widget.blue))
                  ),
                  Text(
                    widget.month,
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, widget.red, widget.green, widget.blue)
                    ),
                  )
                ],
              )
            ),
          ],
        ),
        Text(
            widget.description,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          ),
      ]
      )
    );
  }
}
