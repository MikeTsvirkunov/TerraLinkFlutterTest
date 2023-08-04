import 'package:flutter/material.dart';

class BTN extends StatefulWidget {
  final String text;
  final ImageIcon icon;
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
            offset: Offset(0, 10), // changes position of shadow
          ),
        ],
      ),
      child: TextButton(
        onPressed: () => {},
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.white),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            )
          ),
          overlayColor: MaterialStatePropertyAll(Color.fromARGB(255, 170, 0, 24))
        ),
        child: SizedBox(
          height: 40,
          child: Row(
            children: [
              const ImageIcon(AssetImage('assets/images/icons/stat.png'), size: 20,),
              Text(widget.text),
              const Spacer(),
              const Icon(Icons.navigate_next)
            ],
          )
        )
      ),
    );
  }
}
