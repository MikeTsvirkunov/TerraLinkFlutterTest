import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';

class DeadLineDate extends StatefulWidget {
  final DateTime deadLineDate;
  const DeadLineDate({
    super.key,
    required this.deadLineDate,
  });
  @override
  State<DeadLineDate> createState() => _DeadLineDatePageState();
}

class _DeadLineDatePageState extends State<DeadLineDate> {
  List<String> dropDownList = ['Исполнители', 'Xnj-nj', 'Xnj-nj2'];
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = dropDownList.first;
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
            '${widget.deadLineDate.day} ${containerExtractiorFunction<Map<int, String>>(varConatiner, 'monthNumNameMapForFull')[widget.deadLineDate.month]!.toLowerCase()}',
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
