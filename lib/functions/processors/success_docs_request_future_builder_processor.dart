import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';

Widget successDocsRequestFutureBuilderProcessor(AsyncSnapshot<List<dynamic>> snapshot){
  List<Widget> m = [];
  return Column(
    children: <Widget>[
      containerExtractiorFunction(funConatiner, 'docsCountersContainerBuilder')((snapshot.data ?? m)),
    ] + containerExtractiorFunction(funConatiner, 'generateDocsBlockList')(snapshot.data ?? m)
  );
}