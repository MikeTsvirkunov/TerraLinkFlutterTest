import 'package:flutter/material.dart';
// import './horizontal_container.dart';

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
        // height: 300,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 100),
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 215, 220, 231),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              // height: 60,
              // width: 50,
              color: Colors.white,
              child: const Column(
                children: [
                  Row(
                    children: [
                      Text('6'), 
                      ImageIcon(
                        AssetImage('assets/images/icons/Union.png')
                      )
                    ],
                  )
                ],
              ),
            ),
            const Text(
              "Task2",
              textScaler: TextScaler.linear(20),
            ),
            const Text(
              "Task3",
                textScaler: TextScaler.linear(20),
            )
          ],
        )
      ),
    );
  }
}
