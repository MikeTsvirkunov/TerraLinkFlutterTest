import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/route_history/etaps_block/main_description_of_executor_block.dart';


class ExecutorBlock extends StatelessWidget {
  final String role;
  final String name;
  final String post;
  final String organisation;
  final String rightsAndDuties;
  const ExecutorBlock({
    super.key, 
    required this.role, 
    required this.name, 
    required this.post, 
    required this.organisation,
    required this.rightsAndDuties,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainDescriptionOfExecutorBlock(
          role: role, 
          name: name, 
          post: post, 
          organisation: organisation
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20
          ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 240, 242, 245),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)
            ),
            border: Border.all(
              color: const Color.fromARGB(255, 225, 229, 235),
              width: 1
            )
          ),
          child: Text(
            rightsAndDuties, 
            textScaler: const TextScaler.linear(1.25),
            style:const TextStyle(
              color: Color.fromARGB(255, 51, 51, 51)
            ),
          ),
        )
      ],
    );
  }
}

