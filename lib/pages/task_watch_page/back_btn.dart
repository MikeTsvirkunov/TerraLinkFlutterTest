import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackBtn extends StatefulWidget {
  const BackBtn({super.key});
  @override
  State<BackBtn> createState() => _BackBtnState();
}

class _BackBtnState extends State<BackBtn> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: Colors.white,
      alignment: AlignmentDirectional.centerStart,
      padding: const EdgeInsets.all(0),
      onPressed: () {
        Navigator.pop(context);
      }, 
      child: const SizedBox(
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.chevron_left_sharp,
              color: Color.fromARGB(255, 210, 35, 60),
              size: 40,
            ),
            Text(
              'К списку задач',
              style: TextStyle(
                color: Color.fromARGB(255, 210, 35, 60)
              ),
            ),
          ]
        )
      ),
    );
  }
}