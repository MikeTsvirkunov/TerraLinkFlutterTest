
import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';

List<Widget> taskWatchSectionsPagessListGetter(String nodeId){
  return <Widget>[
    containerExtractiorFunction<Function>(funConatiner, 'fileDisplayGetter')<Widget>(nodeId),
    containerExtractiorFunction<Function>(funConatiner, 'requisitesPageGetter')<Widget>(nodeId),
    const Center(
      child: Text('Файлы'),
    ),
    const Center(
      child: Text('Файлы'),
    ),
    const Center(
      child: Text('Файлы'),
    ),
  ];

}