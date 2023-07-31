import 'package:flutter/material.dart';

class HorizontalScrollBar extends StatefulWidget {
  const HorizontalScrollBar({super.key});
  @override
  State<HorizontalScrollBar> createState() => _HorizontalScrollBarState();
}

class _HorizontalScrollBarState extends State<HorizontalScrollBar> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 100),
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 215, 220, 231),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: const Column(
            children: <Widget>[
              Text(
                "Task1",
              ),
              Text(
                "Task2",
              ),
              Text(
                "Task3",
              )
            ],
          )),
    );
  }
}
