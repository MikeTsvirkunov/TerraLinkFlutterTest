import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_page/task_block/accept_button.dart';
import 'package:flutter_application_terra_link_test/pages/task_page/task_block/label_of_task_block.dart';
import 'package:flutter_application_terra_link_test/pages/task_page/task_block/list_button.dart';
import 'package:flutter_swipe_action_cell/flutter_swipe_action_cell.dart';
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
  const TaskBlock(
      this.nodeId,
      this.paramsList,
      this.typeOfTask,
      this.docName,
      this.deadLineDate,
      this.description,
      this.red,
      this.green,
      this.blue,
      this.alpha,
      {super.key,
      required this.toWatchingTask});
  @override
  State<TaskBlock> createState() => _BlockTaskState();
}

class _BlockTaskState extends State<TaskBlock> {
  bool pressed = true;
  // buttonDecor
    
  @override
  Widget build(BuildContext context) {
    List<SwipeAction> trailingActions = [
      SwipeAction(
        color: const Color.fromARGB(255, 244, 244, 245),
        content: IconButton(
            style: ButtonStyle(
               foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                return states.contains(MaterialState.pressed)
                    ? Color.fromARGB(255, 210, 35, 60)
                    : Color.fromARGB(255, 0, 0, 0);
              })
            ),
            onPressed: () {
            },
            icon: Image.asset('assets/images/icons/cancel.png')),
        onTap: (handler) {
          // handler(false);
          // await handler(true);
          // list.removeAt(index);
          setState(() {});
        }
      ),
      SwipeAction(
          color: Color.fromARGB(255, 244, 244, 245),
          content: AcceptButton(
            action: () {
              setState(() {
                pressed = false;
              });
            },
          ),
          onTap: (CompletionHandler handler) {},
        ),
      SwipeAction(
          color: const Color.fromARGB(255, 244, 244, 245),
          content: DropdownListOfTaskBlock(),
          onTap: (handler) {}
        ),
    ];

    List<SwipeAction> acceptActions = [
    SwipeAction(
      widthSpace: 240,
        color: Color.fromARGB(255, 244, 244, 245),
        content: Container(
          alignment: AlignmentDirectional.center,
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        return states.contains(MaterialState.pressed)
                            ? Color.fromARGB(255, 210, 35, 60)
                            : Color.fromARGB(255, 151, 162, 187);
                      }),
                      overlayColor:
                          MaterialStatePropertyAll(Color.fromARGB(0, 0, 0, 0))),
                onPressed: (){}, 
                child: Text(
                  'Согласовано',
                  textScaler: TextScaler.linear(1.5),
                )
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    pressed = true;
                  });
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {return states.contains(MaterialState.pressed) ? Color.fromARGB(255, 210, 35, 60) : Color.fromARGB(255, 151, 162, 187);}),
                  overlayColor: MaterialStatePropertyAll(Color.fromARGB(0, 0, 0, 0))
                ),
                child: Text(
                  'Отменить',
                  textScaler: TextScaler.linear(1.5),
                )
              ),
            ],
          ),
        ),
        onTap: (CompletionHandler handler) {},
      ),
    ];
    return SwipeActionCell(
        key: ValueKey(widget.nodeId),
        selectedForegroundColor: Color.fromARGB(255, 255, 0, 0),
        trailingActions: pressed ? trailingActions : acceptActions,
        child: InkWell(
            onTap: () {
              widget.toWatchingTask();
            },
            child: LabelOfTaskBlock(
              widget.nodeId,
              widget.paramsList,
              widget.typeOfTask,
              widget.docName,
              widget.deadLineDate,
              widget.description,
              widget.red,
              widget.green,
              widget.blue,
              widget.alpha,
              toWatchingTask: widget.toWatchingTask,
            )));
  }
}
