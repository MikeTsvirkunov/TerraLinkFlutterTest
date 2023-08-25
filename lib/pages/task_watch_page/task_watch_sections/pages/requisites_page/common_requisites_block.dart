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
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(widget.name),
          widget.value != null ? Text(widget.value!): const Text('Не указан'),
        ],
      ),
    );
  }
}
