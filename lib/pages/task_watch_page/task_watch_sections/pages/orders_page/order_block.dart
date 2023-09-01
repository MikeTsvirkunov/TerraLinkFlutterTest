import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
// import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/task_watch_sections/pages/requisites_page/common_requisites_block.dart';

class OrderBlock extends StatefulWidget {
  final String docName;
  final String taskName;
  const OrderBlock({Key? key, required this.docName, required this.taskName}) : super(key: key);
  @override
  State<OrderBlock> createState() => _OrderBlockState();
}

class _OrderBlockState extends State<OrderBlock> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(widget.docName),
      trailing: Column(
        children: [
          Row(
            children: [
              Text('Название поручения'),
              Container(
                decoration: BoxDecoration(color: Color.fromARGB(255, 240, 242, 245)),
                child: Text(widget.taskName),
              )
            ],
          )
        ],
      ),

    );
  }
}
