import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/file_display.dart';


class TaskWatchPage extends StatefulWidget {
  final String name;
  const TaskWatchPage(this.name, {super.key});
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
        child: FileDisplay()
      )
    );
  }
}
