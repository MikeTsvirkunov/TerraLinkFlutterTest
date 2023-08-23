import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/deadline_section/deadline_section.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/task_watch_sections/task_watch_sections_tab_bar/task_watch_sections_tab_bar.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/task_watch_sections/task_watch_sections_tab_bar/task_watch_sections_tabs_list.dart';

class TaskWatchBlock extends StatefulWidget {
  final String nodeId;
  final String docName;
  const TaskWatchBlock({super.key, required this.nodeId, required this.docName,});
  @override
  State<TaskWatchBlock> createState() => _TaskWatchBlockState();
}

class _TaskWatchBlockState extends State<TaskWatchBlock> with TickerProviderStateMixin {
    late final TabController _tabController;
    late Future<Widget> fileDisplay;
    
    @override
    void initState() {
      super.initState();
      _tabController = TabController(length: taskWatchSectionsTabsList.length, vsync: this);
    }

    @override
    void dispose() {
      _tabController.dispose();
      super.dispose();
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 0,
        leading: const Text(''),
        title: Text(
          widget.docName,
          style: const TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child:
          Column(
            children: [ 
              DeadLineSection(deadLineDate: DateTime(2017, 9, 7, 17, 30)),
              TaskWatchSectionTabBar(tabController: _tabController,),
            ]
          )
        )
      ),
      body: TabBarView(
        controller: _tabController,
        children: containerExtractiorFunction(funConatiner, 'taskWatchSectionPagesGetter')(widget.nodeId),
      ),
    );
  }
}