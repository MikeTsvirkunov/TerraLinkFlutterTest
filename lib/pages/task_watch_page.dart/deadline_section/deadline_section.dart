import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/deadline_section/deadline_date.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/deadline_section/role_block.dart';


class DeadLineSection extends StatefulWidget {
  final DateTime deadLineDate;
  const DeadLineSection({super.key, required this.deadLineDate, });
  @override
  State<DeadLineSection> createState() => _DeadLineSectionPageState();
}

class _DeadLineSectionPageState extends State<DeadLineSection> {
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
      color: const Color.fromARGB(255, 238, 240, 244),
      width: double.maxFinite,
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DeadLineDate(deadLineDate: widget.deadLineDate,),
          const Card(
            elevation: 0,
            color: Color.fromARGB(0, 0, 0, 0),
            child: DropdownButtonExample(),
          )
        ]
      ),
    );
  }
}
