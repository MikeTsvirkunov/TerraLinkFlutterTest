import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
// import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/task_watch_sections/pages/requisites_page/common_requisites_block.dart';

class OrdersPage extends StatefulWidget {
  // final String nodeId;
  const OrdersPage({Key? key}) : super(key: key);
  @override
  State<OrdersPage> createState() => _RequisitesPageState();
}

class _RequisitesPageState extends State<OrdersPage> {
  late Future<Map<String, dynamic>> relatedDocs;

  @override
  void initState() {
    super.initState();
    relatedDocs = containerExtractiorFunction<Function>(funConatiner, 'relatedDocsGetter')();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: relatedDocs,
        builder: (BuildContext context,
            AsyncSnapshot<Map<String, dynamic>> snapshot) {
          if (snapshot.data != null) {
            return containerExtractiorFunction<Function>(funConatiner, 'relatedDocsOfWatchingTaskPageBuilder')(snapshot.data);
          }
          return const Center(
            child: Text('Loading'),
          );
        }
    );
  }
}
