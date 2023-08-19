import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/functions/builders/docs_block_bulilder.dart';

List<Widget> generateDocsBlockList(List<dynamic> snapshot){
  List<Widget> k = [];
  for (var e in snapshot) {
    k.add(docsBlockBuilder(e));
  }
  return k;
}