import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/functions/builders/task_block_bulilder.dart';

List<Widget> generateTaskBlockList(List<dynamic> snapshot){
  List<Widget> k = [];
  for (var e in snapshot) {
    k.add(taskBlockBuilder(e));
  }
  return k;
}