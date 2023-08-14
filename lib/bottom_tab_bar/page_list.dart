import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/order_page/order_page.dart';
import 'package:flutter_application_terra_link_test/pages/task_page/task_page.dart';
import 'package:flutter_application_terra_link_test/pages/more_page/more_page.dart';
import '../pages/docs_page/docs_page.dart';

const pageList = <Widget>[
  TaskPage(),
  OrdersPage(),
  Center(
    child: Text("Поручения будут."),
  ),
  DocsPage(),
  MorePage(),
];
