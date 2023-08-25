import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/deadline_section/deadline_date.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/deadline_section/role_block.dart';


class DeadLineSection extends StatefulWidget {
  const DeadLineSection({super.key});
  @override
  State<DeadLineSection> createState() => _DeadLineSectionPageState();
}

class _DeadLineSectionPageState extends State<DeadLineSection> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 238, 240, 244),
      width: double.maxFinite,
      height: 75,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DeadLineDate(),
          Card(
            elevation: 0,
            color: Color.fromARGB(0, 0, 0, 0),
            child: DropdownButtonExample(),
          )
        ]
      ),
    );
  }
}
