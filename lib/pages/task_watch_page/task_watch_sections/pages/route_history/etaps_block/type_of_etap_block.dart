import 'package:flutter/material.dart';

class TypeOfEtapBlock extends StatelessWidget {
  final String name;
  const TypeOfEtapBlock({
    super.key,
    required this.name,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 240, 242, 245),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10)
        )
      ),
      width: double.maxFinite,
      height: 60,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 10
      ),
      child: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.fitHeight,
        child: Text(
          name,
          style: const TextStyle(
            color: Color.fromARGB(255, 128, 130, 133),
            fontWeight: FontWeight.bold,
          ),
        )
      )
    );
  }
}
