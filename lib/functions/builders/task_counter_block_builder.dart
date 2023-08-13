import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_page/horizontall_container/horizontal_block.dart';
import 'package:flutter_application_terra_link_test/pages/task_page/horizontall_container/horizontal_container.dart';

TaskCountersContainer taskCountersContainerBuilder(List<dynamic> taskDescription){
  return const TaskCountersContainer( 
    <Widget>[
      TaskCounterBlock('Согласование', '6', 'assets/images/icons/Union.png'),
      TaskCounterBlock('Согласование', '6', 'assets/images/icons/Union.png'),
      TaskCounterBlock('Согласование', '6', 'assets/images/icons/Union.png'),
    ]
  );
}
