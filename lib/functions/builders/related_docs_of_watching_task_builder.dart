import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';

Widget relatedDocsOfWatchingTaskPageBuilder(List relatedDocs){
  List<Widget> x = [];
  for (var element in relatedDocs) {
    x.add(containerExtractiorFunction<Function>(funConatiner, 'relatedDocBlockBuilder')(element));
  }
  return SingleChildScrollView(child: Column(children: x,),);
}