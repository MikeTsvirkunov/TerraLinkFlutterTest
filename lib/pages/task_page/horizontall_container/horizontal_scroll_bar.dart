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
        width: double.maxFinite,
        alignment: AlignmentDirectional.center,
        // height: 100,
        padding: const EdgeInsets.all(30),
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 100),
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 205, 210, 221),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              // height: 60,
              width: 100,
              color: Colors.green,
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
              textScaler: TextScaler.linear(10),
            ),
            const Text(
              "Task3",
                textScaler: TextScaler.linear(10),
            )
          ],
        )
      ),
    );
  }
}
