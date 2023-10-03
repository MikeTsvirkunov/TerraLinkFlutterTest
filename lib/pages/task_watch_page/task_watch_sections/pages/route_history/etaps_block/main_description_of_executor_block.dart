import 'package:flutter/material.dart';

class MainDescriptionOfExecutorBlock extends StatelessWidget {
  final String role;
  final String name;
  final String post;
  final String organisation;
  const MainDescriptionOfExecutorBlock({
    super.key,
    required this.role,
    required this.name,
    required this.post,
    required this.organisation,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$role:',
          style: const TextStyle(
            color: Color.fromARGB(255, 161, 163, 166)),
          textScaler: const TextScaler.linear(1.25),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.maxFinite,
          child: Flex(
            direction: Axis.horizontal, 
            children: [
              Flexible(
                flex: 6,
                fit: FlexFit.tight,
                child: Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                  textScaler: const TextScaler.linear(1.6),
                )
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle
                  ),
                  child: Image.asset('assets/images/icons/char.png'),
                )
              )
            ]
          )  
        ),
        Text(
          post,
          style: const TextStyle(
            color: Color.fromARGB(255, 123, 130, 133)
          ),
          textScaler: const TextScaler.linear(1.25),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          organisation,
          style: const TextStyle(
            color: Color.fromARGB(255, 123, 130, 133)
          ),
          textScaler: const TextScaler.linear(1.43),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
