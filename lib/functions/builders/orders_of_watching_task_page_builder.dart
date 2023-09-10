import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';

List ordersOfWatchingTaskPageBuilder(List data){
  List<Widget> ordersBlocks = [];
  List tasks = containerExtractiorFunction(varContainer, 'tasksList');
  for (Map<String, dynamic> e in data){
    Map<String, dynamic> x = tasks.where((element) => e['dataid'] != element['document_id']).firstOrNull;

    e.addEntries(x.entries);
    ordersBlocks.add(containerExtractiorFunction<Function>(funConatiner, 'orderBlockOfWatchingTaskBuilder')(e));
  }
  return ordersBlocks;
}