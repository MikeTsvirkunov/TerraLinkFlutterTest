import 'package:flutter/material.dart';

class MovingName extends StatefulWidget {
  final double _scrollPosition;
  const MovingName(this._scrollPosition, {super.key});
  @override
  State<MovingName> createState() => _MovingNameState();
}

class _MovingNameState extends State<MovingName> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      color: Colors.white,
      width: double.maxFinite,
      height: 40,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          AnimatedAlign(
            duration: const Duration(milliseconds: 250),
            curve: Curves.decelerate,
            alignment: widget._scrollPosition == 0
                    ? Alignment.centerLeft
                    : Alignment.center,
            child: SizedBox(
              width: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:[ 
                   Text(
                    'Задачи',
                    style: TextStyle(
                      fontSize: widget._scrollPosition == 0 ? 30 : 20,
                      // fontSize: widget._scrollPosition == 0 ? 30 : 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  IconButton(
                    onPressed: () => {},
                    padding: const EdgeInsets.all(5),
                    icon: ImageIcon(
                      const AssetImage('assets/images/icons/restart.png'),
                      size: widget._scrollPosition == 0 ? 34 : 22,
                      // size: widget._scrollPosition == 0 ? 34 : 34,
                      color: const Color.fromARGB(255, 210, 35, 60),
                    )
                  )
                ]
              )
            )
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () => {},
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              alignment: AlignmentDirectional.centerEnd,
              icon: const ImageIcon(
                AssetImage('assets/images/icons/notifications.png'),
                size: 34,
                color: Color.fromARGB(255, 210, 35, 60),
              ),
            ),
          )
        ],
      )
    );
  }
}
