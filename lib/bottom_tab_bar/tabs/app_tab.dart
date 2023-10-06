import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainAppTab extends StatefulWidget {
  final String img;
  final String text;
  final double? widthTab;
  final int tabControllerIndex;
  final Color color;
  final Color activeColor;
  final int index;

  const MainAppTab(
      {super.key,
      required this.img,
      required this.text,
      this.widthTab,
      required this.color, 
      required this.tabControllerIndex,
      required this.index,
      required this.activeColor});
  @override
  State<MainAppTab> createState() => _MainAppTabtate();
}

class _MainAppTabtate extends State<MainAppTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      margin: EdgeInsets.all(0),
      height: 70,
      width: widget.widthTab,
      child:
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        // ImageIcon(AssetImage(widget.img)),
          SvgPicture.asset(widget.img,
            width: 25,
            height: 25,
            fit: BoxFit.scaleDown,
            colorFilter: ColorFilter.mode(widget.tabControllerIndex == widget.index ? widget.activeColor : widget.color, BlendMode.srcIn)
          ),
          FittedBox(
            clipBehavior: Clip.hardEdge,
            fit: BoxFit.fitWidth,
            child: Text(
              widget.text,
              maxLines: 1,
              textWidthBasis: TextWidthBasis.parent,
              style: const TextStyle(fontSize: 10, overflow: TextOverflow.visible),
            )
          )
        ]
      ),
    );
  }
}
