import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_const.dart';

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  List<String> dropdownList = containerExtractiorFunction<List<String>>(
      constConatiner, 'taskWatchRoleList');
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = dropdownList.first;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 35,),
      elevation: 16,
      underline: Container(height: 0),
      style: const TextStyle(
        color: Color.fromARGB(255, 51, 51, 51)
      ),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: dropdownList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Container(
            margin: const EdgeInsets.only(right: 5),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15), 
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(100)
              )
            ), 
            child: FittedBox(
              child: Text(
                value,
                textAlign: TextAlign.center,
                textScaler: const TextScaler.linear(1.2),
              )
            )
          ),
        );
      }).toList(),
    );
  }
}