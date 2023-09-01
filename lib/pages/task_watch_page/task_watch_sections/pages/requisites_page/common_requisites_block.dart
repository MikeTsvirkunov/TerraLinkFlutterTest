import 'package:flutter/material.dart';

class CommonRequisitesBlock extends StatefulWidget {
  final String name;
  final String? value; 
  const CommonRequisitesBlock({Key? key, required this.name, required this.value}): super(key: key);
  @override
  State<CommonRequisitesBlock> createState() => _CommonRequisitesBlockState();
}

class _CommonRequisitesBlockState extends State<CommonRequisitesBlock> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        border: Border(
            bottom: BorderSide(
              width: 1,
              color: Color.fromARGB(255, 238, 240, 244),
            )
          )
        ),
      width: double.maxFinite,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.name, 
            style: const TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 128, 130, 133)
            ),
          ),
          const SizedBox(height: 5),
          widget.value != null ? 
          Text(
            widget.value!,
            style: const TextStyle(fontSize: 16),
          ): 
          const Text(
            'Не указан', 
            style: TextStyle(
              color: Color.fromARGB(255, 161, 163, 166),
              fontSize: 16
            ),
          ),
        ],
      ),
    );
  }
}
