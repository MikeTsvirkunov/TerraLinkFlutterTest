import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/file_display.dart';


class TaskWatchPage extends StatefulWidget {
  final String name;
  final String node_id;
  const TaskWatchPage(this.node_id, this.name, {super.key});
  @override
  State<TaskWatchPage> createState() => _TaskWatchPageState();
}

class _TaskWatchPageState extends State<TaskWatchPage> {
  late Future<Widget> fileDisplay;
  @override
  void initState() {
    super.initState();
    fileDisplay = containerExtractiorFunction(funConatiner, 'fileDisplayBuilder')(widget.node_id);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {
              Navigator.pop(context);
            }, 
            child: const SizedBox(
              height: 100,
              child: Text(
                'К списку задач',
              ),
            ),
          )
        ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 110, 0, 0),
        width: double.maxFinite,
        child: FutureBuilder(
          future: fileDisplay,
          builder: (context, AsyncSnapshot<Widget> snapshot) {
            if (snapshot.data != null) return snapshot.data!;
            return Text('file loading');
          },
        ) 
      )
    );
  }
}
