import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';


class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);
  @override
  State<OrdersPage> createState() => _RequisitesPageState();
}

class _RequisitesPageState extends State<OrdersPage> {
  late Future<List> relatedDocs;

  @override
  void initState() {
    relatedDocs = containerExtractiorFunction<Function>(funConatiner, 'ordersOfWatchingTaskGetter')();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: relatedDocs,
        builder: (BuildContext context,
            AsyncSnapshot<List> snapshot) {
          if (snapshot.data != null) {
            return SingleChildScrollView(child: Column(children: containerExtractiorFunction<Function>(funConatiner, 'ordersOfWatchingTaskPageBuilder')(snapshot.data)));
          }
          return const Center(
            child: Text('Loading'),
          );
        }
    );
  }
}
