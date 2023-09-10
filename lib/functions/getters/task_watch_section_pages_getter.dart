import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/file_display_page/file_display.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/orders_page/orders_page.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/relations_page.dart/relations_page.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/requisites_page/requisites_page.dart';

List<Widget> taskWatchSectionPagesGetter(String nodeId){
  var taskWatchSectionsPagessList = <Widget>[
    FileDisplay(nodeId: nodeId,),
    const RequisitesPage(),
    const Center(
      child: Text('Файлы'),
    ),
    const OrdersPage(),
    const RelationPage(),
  ];
  return taskWatchSectionsPagessList;
}