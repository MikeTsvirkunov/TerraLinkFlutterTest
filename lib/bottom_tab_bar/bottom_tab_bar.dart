import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/bottom_tab_bar/tabs/add_btn.dart';
import 'package:flutter_application_terra_link_test/bottom_tab_bar/tabs/app_tab.dart';
import './page_list.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({super.key});

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  int tabControllerIndex = 0;

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
        clipBehavior: Clip.hardEdge,
        controller: _tabController,
        children: pageList,
      ),
      bottomNavigationBar: TabBar(
          tabAlignment: TabAlignment.fill,
          padding: const EdgeInsets.symmetric(horizontal: 0),
          indicator: ShapeDecoration(
              shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          )),
          labelStyle: const TextStyle(color: Colors.black),
          unselectedLabelColor: const Color.fromARGB(255, 151, 162, 187),
          labelColor: Colors.black,
          controller: _tabController,
          onTap: (value) {
            setState(() {
              tabControllerIndex = _tabController.index;
            });
            
            if (kDebugMode) {
              print(_tabController.index);
            }

          },
          tabs: <Widget>[
            MainAppTab(
              img: 'assets/images/icons/task.svg',
              text: 'Поручения',
              color: const Color.fromARGB(255, 151, 162, 187),
              activeColor: Colors.black,
              tabControllerIndex: tabControllerIndex,
              index: 0,
            ),
          
            MainAppTab(
              img: 'assets/images/icons/bookmark.svg',
              text: 'Поручения',
              color: const Color.fromARGB(255, 151, 162, 187),
              activeColor: Colors.black,
              tabControllerIndex: tabControllerIndex,
              index: 1,
            ),
            const AddBtn(),
            MainAppTab(
              img: 'assets/images/icons/folder.svg',
              text: 'Файлы',
              color: const Color.fromARGB(255, 151, 162, 187),
              activeColor: Colors.black,
              tabControllerIndex: tabControllerIndex,
              index: 3,
            ),
            MainAppTab(
              img: 'assets/images/icons/more.svg',
              text: 'Ещё',
              color: const Color.fromARGB(255, 151, 162, 187),
              activeColor: Colors.black,
              tabControllerIndex: tabControllerIndex,
              index: 4,
            ),
          ]),
    );
  }
}
