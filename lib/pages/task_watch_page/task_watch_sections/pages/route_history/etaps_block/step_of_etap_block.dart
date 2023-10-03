import 'package:flutter/material.dart';

class StepOfEtapBlock extends StatelessWidget {
  final DateTime date;
  final String name;
  const StepOfEtapBlock({
    super.key,
    required this.date,
    required this.name,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5
      ),
      height: 50,
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: FittedBox(
              alignment: Alignment.centerLeft,
              child: Text(
                '${date.day}.${date.month}.${date.year}',
                textScaler: const TextScaler.linear(1.5),
              )
            )
          ),
          const SizedBox(width: 40,),
          Flexible(
            flex: 2,
            child: FittedBox(
              alignment: Alignment.centerLeft,
              child: Text(
                name,
                textScaler: TextScaler.linear(1.25),
                style: const TextStyle(
                  color: Color.fromARGB(255, 163, 163, 166)
                ),
              )
            )
          ),
        ],
      )
    );
  }
}
