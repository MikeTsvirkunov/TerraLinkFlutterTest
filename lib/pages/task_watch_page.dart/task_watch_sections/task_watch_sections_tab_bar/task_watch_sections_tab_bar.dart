import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/task_watch_sections/task_watch_sections_tab_bar/task_watch_sections_tabs_list.dart';

class TaskWatchSectionTabBar extends StatefulWidget {
  final TabController tabController;
  const TaskWatchSectionTabBar({super.key, required this.tabController});

  @override
  State<TaskWatchSectionTabBar> createState() => _TaskWatchSectionTabBarState();
}

class _TaskWatchSectionTabBarState extends State<TaskWatchSectionTabBar> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: const ShapeDecoration(
        shape: Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 210, 35, 60),
            width: 2
          )
        )
      ),
      tabAlignment: TabAlignment.start,
      isScrollable: true,
      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelColor: const Color.fromARGB(255, 51, 51, 51),
      labelColor: const Color.fromARGB(255, 210, 35, 60), //For Selected tab
      controller: widget.tabController,
      tabs: taskWatchSectionsTabsList,
    );
  }
}
