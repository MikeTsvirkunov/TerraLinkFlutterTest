import 'package:flutter/material.dart';

class DescriptionOfTaskBlock extends StatefulWidget {
  final String description;
  const DescriptionOfTaskBlock({super.key, required this.description,});
  @override
  State<DescriptionOfTaskBlock> createState() => _DescriptionOfTaskBlockState();
}

class _DescriptionOfTaskBlockState extends State<DescriptionOfTaskBlock> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Text(
        widget.description,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 16, 
          fontWeight: FontWeight.normal
        ),
      )
    );
  }
}
