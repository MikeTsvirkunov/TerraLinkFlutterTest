import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/docs_page/docs_block.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_const.dart';

DocsBlock docsBlockBuilder(Map<String, dynamic> taskDescription){

  final time = DateTime.parse(taskDescription['date_ready']);
  int r, g, b, a;
  String paramsList = '';
  if (taskDescription['priority'] > 50){
    r = 243;
    g = 0;
    b = 52;
    a = 15;
  } else {
    r = 0;
    g = 0;
    b = 0;
    a = 0;
  }
  Map<String, String> paramsKeysValues = containerExtractiorFunction<Map<String, String>>(
          constConatiner, 'taskBlockExtraParamsMap');
  for (var element in paramsKeysValues.keys) {
    if (taskDescription[element] != null) {
        paramsList = paramsList.isNotEmpty ? '$paramsList\n' : paramsList;
        paramsList += '${paramsKeysValues[element]}: ${taskDescription[element]}';
      }
  }
  return DocsBlock(
    <Widget>[
      Text(
        paramsList,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
      ),
    ],
    taskDescription['name'], 
    taskDescription['document'], 
    time.day.toString(), 
    containerExtractiorFunction<Map<int, String>>(
              constConatiner, 'monthNumNameMap')[time.month].toString(), 
    taskDescription['title'].toString(), 
    r, 
    g, 
    b,
    a
  );
}
