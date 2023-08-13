import 'package:flutter/material.dart';
import './search_bar.dart';
import 'moving_name.dart';

class TaskPageHeader extends StatefulWidget {
  final String text;
  final double _scrollPosition;
  const TaskPageHeader(this.text, this._scrollPosition, {super.key});

  @override
  State<TaskPageHeader> createState() => _TaskPageHeaderState();
}

class _TaskPageHeaderState extends State<TaskPageHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: Colors.white,
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MovingName(widget.text, widget._scrollPosition),
          HeaderSearchBar((p0) => null)
        ]
      ),
    );
  }
}
