import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/back_btn.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_block.dart';


class TaskWatchPage extends StatefulWidget {
  final String docName;
  final String nodeId;
  final DateTime deadLineDate;
  const TaskWatchPage(this.nodeId, this.docName, {super.key, required this.deadLineDate});
  @override
  State<TaskWatchPage> createState() => _TaskWatchPageState();
}

class _TaskWatchPageState extends State<TaskWatchPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      navigationBar: const CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.all(0),
        leading: BackBtn()
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        width: double.maxFinite,
        child: TaskWatchBlock(nodeId: widget.nodeId, docName: widget.docName)
      )
    );
  }
}
