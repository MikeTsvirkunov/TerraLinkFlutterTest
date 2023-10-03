import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/route_history/etaps_block/info_column.dart';

class EtapBlock extends StatelessWidget {
  final bool x;
  const EtapBlock({
    super.key, required this.x,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      height: 630,
      width: double.maxFinite,
      child: Flex(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // mainAxisSize: MainAxisSize.min,
      direction: Axis.horizontal,
      children: [
        Flexible(
          child: Container(
            width: 50,
            height: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: x ? Color.fromARGB(255, 209, 209, 214) : Colors.white,
                  height: 17,
                  width: 2,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 8),
                  width: double.maxFinite,
                  height: 26,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 209, 209, 214),
                      width: 4.5
                    ),
                    shape: BoxShape.circle
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 209, 209, 214),
                    width: 2,
                  )
                )
              ],
            )
          )
        ),
        const Flexible(
          flex: 8,
          child: InfoColumn()
        )
      ]
    ));
  }
}
