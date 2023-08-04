import 'package:flutter/material.dart';
import './search_bar.dart';

class TaskPageHeader extends StatefulWidget {
  final double _scrollPosition;
  const TaskPageHeader(this._scrollPosition, {super.key});

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
          Container(
            padding: const EdgeInsets.all(0),
            color: Colors.white,
            width: double.maxFinite,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 310,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.decelerate,
                    // alignment: Alignment.topLeft,
                    alignment: widget._scrollPosition == 0 ? Alignment.topLeft : Alignment.topCenter,
                    child: Wrap(
                  // runAlignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text('Задачи',
                          style: TextStyle(
                            // fontSize: 30,
                            fontSize: widget._scrollPosition == 0 ? 30 : 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 34,
                          child: IconButton(
                            onPressed: () => {},
                            padding: const EdgeInsets.all(5),
                            icon: ImageIcon(
                              const AssetImage('assets/images/icons/restart.png'), 
                              size: widget._scrollPosition == 0 ? 34 : 22, 
                              
                              color: const Color.fromARGB(255, 210, 35, 60),
                            ),
                          )
                        )
                      ],
                    )
                  ),
                ),
                IconButton(
                  onPressed: () => {},
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  alignment: AlignmentDirectional.centerEnd,
                  icon: const ImageIcon(
                    AssetImage('assets/images/icons/notifications.png'), 
                    size: 34, 
                    color: Color.fromARGB(255, 210, 35, 60),
                  ),
                )
              ]
            ),
          ),
          
          HeaderSearchBar((p0) => null)
          ]
        ),
        );
  }
}
