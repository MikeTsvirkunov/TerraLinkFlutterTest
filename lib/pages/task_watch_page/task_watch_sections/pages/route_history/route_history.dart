import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/route_history/etaps_block/etap_block.dart';

class RouteHistoryPage extends StatefulWidget {
  const RouteHistoryPage({super.key,});
  @override
  State<RouteHistoryPage> createState() => _RouteHistoryPageState();
}

class _RouteHistoryPageState extends State<RouteHistoryPage>{

  @override
  Widget build(BuildContext context) {
      return const SingleChildScrollView(
        child: Column(
          children: [
            EtapBlock(x: false,),
            EtapBlock(x: true,)
          ],
        ),
      );
  }
}