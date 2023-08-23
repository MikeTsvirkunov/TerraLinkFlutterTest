import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/task_watch_sections/pages/requisites_page/common_requisites_block.dart';

class RequisitesPage extends StatefulWidget {
  final String nodeId;
  const RequisitesPage({Key? key, required this.nodeId}) : super(key: key);
  @override
  State<RequisitesPage> createState() => _RequisitesPageState();
}

class _RequisitesPageState extends State<RequisitesPage> {
  late Future<Map<String, dynamic>> requisitesPageParams;

  @override
  void initState() {
    super.initState();
    requisitesPageParams = containerExtractiorFunction<Function>(funConatiner, 'requisitesPageParamsGetter')();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: requisitesPageParams, 
      builder: (BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot){
        return containerExtractiorFunction<Function>(funConatiner, 'requisitesPageBuilder')<Widget>(context, snapshot);
      }
    );
  }
}
