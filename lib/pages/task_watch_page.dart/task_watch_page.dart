import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/back_btn.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/file_display.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/task_watch_block.dart';


class TaskWatchPage extends StatefulWidget {
  final String docName;
  final String nodeId;
  const TaskWatchPage(this.nodeId, this.docName, {super.key});
  @override
  State<TaskWatchPage> createState() => _TaskWatchPageState();
}

class _TaskWatchPageState extends State<TaskWatchPage> {
  late Future<Widget> fileDisplay;
  @override
  void initState() {
    super.initState();
    fileDisplay = containerExtractiorFunction(funConatiner, 'fileDisplayBuilder')(widget.nodeId);
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
        padding: const EdgeInsets.fromLTRB(0, 00, 0, 0),
        width: double.maxFinite,
        child: TaskWatchBlock(nodeId: widget.nodeId, docName: widget.docName,)
        // FutureBuilder(
        //   future: fileDisplay,
        //   builder: (context, AsyncSnapshot<Widget> snapshot) {
        //     if (snapshot.data != null) return snapshot.data!;
        //     return const Center(
        //       child: Text(
        //         'file loading',
        //         style: TextStyle(
        //           color: Colors.black45,
        //           decoration: TextDecoration.none,
        //           fontSize: 20,
        //         ),
        //       )
        //     );
        //   },
        // ) 
      )
    );
  }
}
