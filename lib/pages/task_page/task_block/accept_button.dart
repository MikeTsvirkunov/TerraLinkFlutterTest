import 'package:flutter/material.dart';

class AcceptButton extends StatefulWidget {
  final Function action;
  const AcceptButton({
    super.key,
    required this.action,
  });
  @override
  State<AcceptButton> createState() => _AcceptButtonState();
}

class _AcceptButtonState extends State<AcceptButton> {
  bool press = true;
  @override
  Widget build(BuildContext context) {
    var x = IconButton(
      onPressed:(){
        widget.action();
        // setState(() {
        //   press=false;
        // });
      }, icon: Image.asset('assets/images/icons/accept.png')
    );
    return Container(
      child: press ? x : Text('asd'),
    );
  }
}
