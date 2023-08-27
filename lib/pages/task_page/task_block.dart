import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_const.dart';
// import 'package:flutter_application_terra_link_test/global.dart';

class TaskBlock extends StatefulWidget {
  final List<Widget> paramsList;
  final String typeOfTask;
  final String docName;
  final DateTime deadLineDate;
  final String description;
  final String nodeId;
  final int red;
  final int green;
  final int blue;
  final int alpha;
  final Function toWatchingTask;
  const TaskBlock(this.nodeId, this.paramsList, this.typeOfTask, this.docName, this.deadLineDate, this.description, this.red, this.green, this.blue, this.alpha, {super.key, required this.toWatchingTask});
  @override
  State<TaskBlock> createState() => _BlockTaskState();
}

class _BlockTaskState extends State<TaskBlock> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){widget.toWatchingTask();},
      child: Container(
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
                height: 60,
                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  color: Color.fromARGB(45, widget.red, widget.green, widget.blue)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(widget.deadLineDate.day.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 24, 
                        height: 0,
                        color: Color.fromARGB(255, widget.red, widget.green, widget.blue))
                    ),
                    Text(
                      containerExtractiorFunction<Map<int, String>>(constConatiner, 'monthNumNameMap')[widget.deadLineDate].toString(),
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
      )
    );
  }
}
