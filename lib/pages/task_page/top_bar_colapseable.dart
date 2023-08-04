import 'package:flutter/material.dart';
import 'header/header.dart';
import 'package:flutter_application_terra_link_test/pages/task_page/task_container.dart';
import './horizontall_container/horizontal_container.dart';

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
    return Scaffold(
      backgroundColor: Colors.white,
      drawerEdgeDragWidth: double.maxFinite,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        toolbarHeight: 98,
        title: TaskPageHeader(_scrollPosition)
      ),
      body: Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 242, 245),
        appBar: AppBar(
          surfaceTintColor: const Color.fromARGB(255, 240, 242, 245),
          backgroundColor: const Color.fromARGB(255, 240, 242, 245),
          toolbarHeight: 100,
          title: const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TaskCounterBlock('Согласование', '6', 'assets/images/icons/Union.png'),
                TaskCounterBlock('Согласование', '6', 'assets/images/icons/Union.png'),
                TaskCounterBlock('Согласование', '6', 'assets/images/icons/Union.png'),
              ],
            ),
          ) // const HorizontalScrollBar(),
          // bottom: PreferredSize(preferredSize: Size(double.maxFinite, 100), child: TabBarExample())
          // toolbarHeight: 300,
        ),
        
        body: TaskContainer(_scrollController),
      )
    );
  }
}
