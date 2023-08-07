import 'package:flutter/material.dart';

class MainAppTab extends StatefulWidget {
  final String img;
  final String text;
  final double? widthTab;
  
  const MainAppTab(this.img, this.text, this.widthTab, {super.key});
  @override
  State<MainAppTab> createState() => _MainAppTabtate();
}

class _MainAppTabtate extends State<MainAppTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      height: 70,
      width: widget.widthTab,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageIcon(AssetImage(widget.img)),
          Text(
            widget.text,
            style: const TextStyle(
              fontSize: 11, 
              overflow: TextOverflow.visible
            ),
          )
        ]
      ),
    );
  }
}
