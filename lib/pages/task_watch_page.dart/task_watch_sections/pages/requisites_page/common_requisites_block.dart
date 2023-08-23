import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';

class CommonRequisitesBlock extends StatefulWidget {
  final Map<String, String> commonRequisites;
  const CommonRequisitesBlock({Key? key,required this.commonRequisites,})
      : super(key: key);
  @override
  State<CommonRequisitesBlock> createState() => _CommonRequisitesBlockState();
}

class _CommonRequisitesBlockState extends State<CommonRequisitesBlock> {
  late Future<String> commonRequisites;

  @override
  void initState() {
    super.initState();
    commonRequisites = containerExtractiorFunction(funConatiner, 'commonRequisitesGetter')();
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('Общие реквизиты'),
      subtitle: Column(
        children: [
          Text('Общие реквизиты'),
          Text('Общие реквизиты'),
          Text('Общие реквизиты')
        ]
      ),
    );
  }
}
