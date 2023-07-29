import 'package:flutter/material.dart';

class BTN extends StatefulWidget {
  final String text;
  final Icon icon;
  const BTN(this.icon, this.text, {super.key});
  @override
  State<BTN> createState() => _BTNState(this.icon, this.text);
}

class _BTNState extends State<BTN> {
  final String text;
  final Icon icon;
  _BTNState(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
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
          height: 50,
          child: Row(
            children: [
              icon,
              Text(text),
              const Spacer(),
              const Icon(Icons.navigate_next)
            ],
          )
        )
      ),
    );
  }
}
