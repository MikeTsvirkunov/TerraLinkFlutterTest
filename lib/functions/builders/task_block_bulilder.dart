import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_page/task_block.dart';

TaskBlock taskBlockBuilder(Map<String, dynamic> taskDescription){
  
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
  
  // if (taskDescription["from_user_name"] != "null"){
  //   paramsList = paramsList.isNotEmpty ? '$paramsList\n' : paramsList;
  //   paramsList += 'Автор: ${taskDescription["from_user_name"]}';
  // }
  // if (taskDescription["to_user_name"] != "null") {
  //   paramsList = paramsList.isNotEmpty ? '$paramsList\n' : paramsList;
  //   paramsList += 'Исполнитель: ${taskDescription["to_user_name"]}';
  // }
  Map<String, String> paramsKeysValues = {"from_user_name": "Автор", "to_user_name": "Исполнитель"};

  for (var element in paramsKeysValues.keys) {
    if (taskDescription[element] != "null") {
        paramsList = paramsList.isNotEmpty ? '$paramsList\n' : paramsList;
        paramsList += '${paramsKeysValues[element]}: ${taskDescription[element]}';
      }
  }
  return TaskBlock(
    <Widget>[
      Text(
        paramsList,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
      ),
    ],
    taskDescription['name'], 
    taskDescription['document'], 
    time.day.toString(), 
    time.month.toString(), 
    taskDescription['title'], 
    r, 
    g, 
    b,
    a
  );
}
