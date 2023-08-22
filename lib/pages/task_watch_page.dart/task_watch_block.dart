import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/task_watch_sections/pages/task_watch_sections_pages_list.dart';
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
        title: Text(
          widget.docName,
          style: const TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10),
          child: TaskWatchSectionTabBar(tabController: _tabController,),
        )
      ),
      body: TabBarView(
        controller: _tabController,
        children: taskWatchSectionsPagessList,
      ),
    );
  }
}