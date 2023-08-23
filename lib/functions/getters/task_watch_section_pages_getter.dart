import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/file_display.dart';

List<Widget> taskWatchSectionPagesGetter(String nodeId){
  var taskWatchSectionsPagessList = <Widget>[
    FileDisplay(nodeId: nodeId,),
    const Center(
      child: Text('Файлы'),
    ),
    const Center(
      child: Text('Файлы'),
    ),
    const Center(
      child: Text('Файлы'),
    ),
    const Center(
      child: Text('Файлы'),
    ),
  ];
  return taskWatchSectionsPagessList;
}