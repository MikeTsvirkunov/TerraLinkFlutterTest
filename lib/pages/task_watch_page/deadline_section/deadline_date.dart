import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_const.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';

class DeadLineDate extends StatefulWidget {
  const DeadLineDate({
    super.key
  });
  @override
  State<DeadLineDate> createState() => _DeadLineDatePageState();
}

class _DeadLineDatePageState extends State<DeadLineDate> {
  List<String> dropDownList = ['Исполнители', 'Xnj-nj', 'Xnj-nj2'];
  late DateTime deadLineDate;

  @override
  void initState() {
    super.initState();
    deadLineDate = containerExtractiorFunction<DateTime>(varContainer, 'deadLineDateOfWatchingTask');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Выполнить до:',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.normal
            ),
          ),
          Text(
            '${deadLineDate.day} ${containerExtractiorFunction<Map<int, String>>(constConatiner, 'monthNumNameMapForFull')[deadLineDate.month]!.toLowerCase()}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              decoration: TextDecoration.none
            )
          )
        ],
      )
    );
  }
}
