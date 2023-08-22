import 'package:flutter/material.dart';
import './page_list.dart';
import './tabs_list.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({super.key});

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: pageList,
      ),
      bottomNavigationBar: TabBar(
        tabAlignment: TabAlignment.fill,
        // isScrollable: true,
        indicator: ShapeDecoration(
            // color: Colors.white,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          )
        ),
        labelStyle: const TextStyle(color: Colors.black),
        unselectedLabelColor: const Color.fromARGB(255, 151, 162, 187),
        labelColor: Colors.black,
        controller: _tabController,
        tabs: tabsList,
        
      ),
    );
  }
}
