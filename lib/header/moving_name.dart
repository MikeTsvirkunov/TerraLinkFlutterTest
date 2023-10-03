import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MovingName extends StatefulWidget {
  final String text;
  final double _scrollPosition;
  const MovingName(this.text, this._scrollPosition, {super.key});
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
              // width: 10,
              child: Row(
                mainAxisAlignment: widget._scrollPosition == 0 ? MainAxisAlignment.start : MainAxisAlignment.center,
                children:[ 
                   Text(
                      widget.text,
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
                    icon: SvgPicture.asset('assets/images/icons/restart.svg',
                      width: widget._scrollPosition == 0 ?  24: 15,
                      height: widget._scrollPosition == 0 ?  24: 15,
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
              icon: SvgPicture.asset(
                'assets/images/icons/notifications.svg',
                height: 34,
              ),
            ),
          )
        ],
      )
    );
  }
}
