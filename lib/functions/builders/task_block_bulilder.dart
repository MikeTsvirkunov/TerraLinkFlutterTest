import 'package:flutter/cupertino.dart';
import 'package:flutter_application_terra_link_test/container_extender_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';
import 'package:flutter_application_terra_link_test/pages/task_page/task_block/task_block.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_const.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_page.dart';

TaskBlock taskBlockBuilder(Map<String, dynamic> taskDescription){

  final deadLineDate = DateTime.parse(taskDescription['date_ready']);
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
  void taskWatchPageFunction() {
    containerExtenderFunction(varContainer, 'workflowIdOfWatchingTask', taskDescription['workflow_id']);
    containerExtenderFunction(varContainer, 'dateOfRegistrationOfWatchingTask', deadLineDate);
    containerExtenderFunction(varContainer, 'dateOfCreationOfWatchingTask', deadLineDate);
    containerExtenderFunction(varContainer, 'deadLineDateOfWatchingTask', deadLineDate);
    containerExtenderFunction(varContainer, 'titleOfWatchingTask', taskDescription['title']);
    containerExtenderFunction(varContainer, 'textOfOfWatchingTask', taskDescription['name']);
    containerExtenderFunction(varContainer, 'nodeIdOfWatchingTask', taskDescription['document_id']);
    Navigator.push(
        containerExtractiorFunction<BuildContext>(varContainer, 'currentContext'),
        CupertinoPageRoute(builder: (context) => TaskWatchPage(taskDescription['document_id'].toString(), taskDescription['document'].toString(), deadLineDate: deadLineDate))
    );
  }
  Map<String, String> paramsKeysValues = containerExtractiorFunction<Map<String, String>>(
          constConatiner, 'taskBlockExtraParamsMap');
  for (var element in paramsKeysValues.keys) {
    if (taskDescription[element] != null) {
        paramsList = paramsList.isNotEmpty ? '$paramsList\n' : paramsList;
        paramsList += '${paramsKeysValues[element]}: ${taskDescription[element]}';
      }
  }
  return TaskBlock(
    taskDescription['document_id'].toString(),
    <Widget>[
      Text(
        paramsList,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
      ),
    ],
    taskDescription['name'], 
    taskDescription['document'], 
    deadLineDate,  
    taskDescription['title'].toString(), 
    r, 
    g, 
    b,
    a,
     toWatchingTask: taskWatchPageFunction,
  );
}
