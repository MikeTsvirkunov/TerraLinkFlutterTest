import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/orders_page/order_block.dart';

Widget orderBlockOfWatchingTaskBuilder(Map<String, dynamic> data){
  
  return OrderBlock(
    docName: data['document'], 
    taskName: data['xreftype'], 
    author: data['from_user_name'], 
    executor: data['to_user_name'], 
    dateDue: data['date_due'], 
    dateReady: data['date_ready'], 
    title: data['title']
  );
}