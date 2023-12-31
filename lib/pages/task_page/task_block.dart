import 'package:flutter/material.dart';
// import 'package:flutter_application_terra_link_test/global.dart';

class TaskBlock extends StatefulWidget {
  final List<Widget> paramsList;
  final String typeOfTask;
  final String docName;
  final String day;
  final String month;
  final String description;
  final int red;
  final int green;
  final int blue;
  final int alpha;
  const TaskBlock(this.paramsList, this.typeOfTask, this.docName, this.day, this.month, this.description, this.red, this.green, this.blue, this.alpha, {super.key});
  @override
  State<TaskBlock> createState() => _BlockTaskState();
}

class _BlockTaskState extends State<TaskBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.maxFinite,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color.fromARGB(255, 230, 232, 235), width: 2)), 
        color: Colors.white,
      ),
      child: Column(
        children: [ 
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(
              width: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.typeOfTask,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, widget.red, widget.green, widget.blue)
                    ),
                  ),
                  Text(
                    widget.docName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 18,
                      color: Color.fromARGB(255, widget.red, widget.green, widget.blue)
                    ),
                  ),
                ] + widget.paramsList,
              )
            ),
            const Spacer(),
            Container(
              height: 58,
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                color: Color.fromARGB(45, widget.red, widget.green, widget.blue)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(widget.day,
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 24, 
                      height: 0,
                      color: Color.fromARGB(255, widget.red, widget.green, widget.blue))
                  ),
                  Text(
                    widget.month,
                    style: TextStyle(
                      fontSize: 16,
                      height: 0,
                      color: Color.fromARGB(255, widget.red, widget.green, widget.blue)
                    ),
                  )
                ],
              )
            ),
          ],
        ),
        SizedBox(
          width: double.maxFinite,
          child: Text(
            widget.description,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          )
        ),
      ]
      )
    );
  }
}
