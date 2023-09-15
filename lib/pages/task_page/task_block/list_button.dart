import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class DropdownListOfTaskBlock extends StatefulWidget {
  const DropdownListOfTaskBlock({super.key});

  @override
  State<DropdownListOfTaskBlock> createState() => _DropdownListOfTaskBlockState();
}

class _DropdownListOfTaskBlockState extends State<DropdownListOfTaskBlock> {
  List<String> dropdownList = [
    'Запросить',
    'Передать на доработку',
    'Ожидание',
    'Пауза',
    'Отправить',
    'Совет'
  ];
  late String dropdownValue;
  late double width;
  @override
  void initState() {
    super.initState();
    dropdownValue = dropdownList.first;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton2(
      isExpanded: true,
      customButton: SizedBox(height: 50, child: Image.asset('assets/images/icons/list.png')),
      onChanged: (value) {

      },
      underline: const SizedBox(height: 0),
      buttonStyleData: const ButtonStyleData(
        // height: 100,
      ),
      dropdownStyleData: DropdownStyleData(
        
        padding: const EdgeInsets.all(0),
        width: MediaQuery.of(context).size.width * 0.8,
      ),
      menuItemStyleData: const MenuItemStyleData(
        padding: EdgeInsets.all(0)
      ),
      items: [
        DropdownMenuItem(
          child: Container(
            padding: const EdgeInsets.all(10),
            alignment: AlignmentDirectional.centerEnd,
            color: const Color.fromARGB(255, 240, 242, 245),
            child: const Icon(Icons.close_rounded),
          ),
        ),
        ...dropdownList.map(
          (e) => DropdownMenuItem(
            value: e, 
            child: Container(padding: const EdgeInsets.all(10), child: FittedBox(child: Text(e))),
          ),
        ).toList()
      ]
    );
  }
}
