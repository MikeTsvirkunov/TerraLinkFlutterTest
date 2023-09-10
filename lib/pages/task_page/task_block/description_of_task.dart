import 'package:flutter/material.dart';

class descriptionOfTaskBlock extends StatefulWidget {
  final String description;
  const descriptionOfTaskBlock({super.key, required this.description,});
  @override
  State<descriptionOfTaskBlock> createState() => _descriptionOfTaskBlockState();
}

class _descriptionOfTaskBlockState extends State<descriptionOfTaskBlock> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Text(
        widget.description,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.normal),
      )
    );
  }
}
