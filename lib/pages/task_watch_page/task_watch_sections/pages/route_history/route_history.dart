import 'package:flutter/material.dart';
// import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/route_history/etaps_block/etap_block.dart';
import 'package:timelines/timelines.dart';

class RouteHistoryPage extends StatefulWidget {
  const RouteHistoryPage({super.key,});
  @override
  State<RouteHistoryPage> createState() => _RouteHistoryPageState();
}

class _RouteHistoryPageState extends State<RouteHistoryPage>{

  @override
  Widget build(BuildContext context) {
      return Container(
        width: double.maxFinite,
        height: 40,
        child: Timeline.tileBuilder(
        padding: const EdgeInsets.only(left: 10),
        clipBehavior: Clip.antiAlias,
        shrinkWrap: true,
        builder: TimelineTileBuilder.connectedFromStyle(
          firstConnectorStyle: ConnectorStyle.transparent,
          lastConnectorStyle: ConnectorStyle.transparent,
          indicatorStyleBuilder: (context, index) => IndicatorStyle.outlined,
          // connectorStyleBuilder: (context, index) {
          //   return ;
          // },
          contentsBuilder:(context, index) => Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(color: Colors.amber, width: 2000, child: Text('Timeline Event $index')),
          ),

          itemExtent: 100.0,
          itemCount: 10,
        ),
      ));
      // const SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       EtapBlock(x: false,),
      //       EtapBlock(x: true,)
      //     ],
      //   ),
      // );
  }
}