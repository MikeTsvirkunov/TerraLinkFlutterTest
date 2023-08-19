import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/task_watch_page.dart';

class BTN extends StatefulWidget {
  final String text;
  final String icon;
  const BTN(this.icon, this.text, {super.key});
  @override
  State<BTN> createState() => _BTNState();
}

class _BTNState extends State<BTN> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: double.maxFinite,
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 0.1,
            blurRadius: 7,
            offset: const Offset(0, 10), // changes position of shadow
          ),
        ],
      ),
      child: TextButton(
        onPressed: () => {
            Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => TaskWatchPage(widget.text))
        )
        },
        style: const ButtonStyle(
          
          backgroundColor: MaterialStatePropertyAll(Colors.white),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            )
          ),
          overlayColor: MaterialStatePropertyAll(Color.fromARGB(255, 170, 0, 24)),
          
        ),
        child: SizedBox(
          height: 40,
          child: Row(
            children: [
              ImageIcon(AssetImage(widget.icon), size: 20, color: const Color.fromARGB(255, 170, 0, 24), ),
              Text(widget.text, style: const TextStyle(color: Colors.black),),
              const Spacer(),
              const Icon(Icons.navigate_next, color: Color.fromARGB(255, 209, 209, 214), size: 30,)
            ],
          )
        )
      ),
    );
  }
}
