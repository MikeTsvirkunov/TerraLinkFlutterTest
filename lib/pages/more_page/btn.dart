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
    return TextButton(
            onPressed: () => {},
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
            child: Row(
              children: [
                icon,
                Text(text),
                const Icon(Icons.navigate_next)
              ],
            )
          );
  }
}
