import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';
import 'package:flutter_application_terra_link_test/functions/builders/task_block_bulilder.dart';
import 'header/header.dart';
import 'dart:convert' as convert;
import './task_container.dart';
// import './horizontall_container/horizontal_container.dart';

class ColapseableAppBar extends StatefulWidget {
  const ColapseableAppBar({super.key});
  @override
  State<ColapseableAppBar> createState() => _ChangingAppBarState();
}

class _ChangingAppBarState extends State<ColapseableAppBar> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var getKeyAuth =
        containerExtractiorFunction<Function>(funConatiner, 'getKeyAuth');
    var getTaskList =
        containerExtractiorFunction<Function>(funConatiner, 'getTaskList');
    var getPass =
        containerExtractiorFunction<Function>(funConatiner, 'getPass');
    // var getTaskListProcessor = containerExtractiorFunction<Function>(
    //     funConatiner, 'getTaskListProcessor');
    // var responesCodeProcessor = containerExtractiorFunction<Function>(
    //     funConatiner, 'responesCodeProcessor');
    Future<String> f() async {
      var acc = await getPass();
      var x = await getKeyAuth(
        varConatiner['AuthLink'],
        acc['username'],
        acc['password'],
      );
      var x2 = await getTaskList(varConatiner['TaskLink'], x);
      return x2;
    }
    return Scaffold(
      backgroundColor: Colors.white,
      drawerEdgeDragWidth: double.maxFinite,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        toolbarHeight: 98,
        title: TaskPageHeader(_scrollPosition)
      ),
      body: TaskContainer(_scrollController),
    );
  }
}