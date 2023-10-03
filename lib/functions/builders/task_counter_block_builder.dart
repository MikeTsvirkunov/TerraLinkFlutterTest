import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/pages/task_page/horizontall_container/horizontal_block.dart';
import 'package:flutter_application_terra_link_test/pages/task_page/horizontall_container/horizontal_container.dart';

TaskCountersContainer taskCountersContainerBuilder(List<dynamic> taskDescription){
  Map<String, int> counterValue = {};
  for (var task in taskDescription){
    counterValue[task['name']] = counterValue.containsKey(task['name']) ? counterValue[task['name']]! + 1 : 1; 
  }
  List<Widget> counterWidgets = [];
  counterWidgets.add(
    const SizedBox(width: 5,)
  );
  for (var counter in counterValue.keys){
    counterWidgets.add(
      TaskCounterBlock(
        counter, 
        counterValue[counter].toString(), 
        containerExtractiorFunction(funConatiner, 'getImageForTaskCounterBlock')(counter)
      )
    );
  }
  counterWidgets.add(const SizedBox(
    width: 5,
  ));
  return TaskCountersContainer( 
    counterWidgets
  );
}
