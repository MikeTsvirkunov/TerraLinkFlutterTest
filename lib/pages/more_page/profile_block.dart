import 'package:flutter/material.dart';

class ProfileBlock extends StatefulWidget {

  final Image photo;
  final String name;
  const ProfileBlock(this.photo, this.name, {super.key});
  @override
  State<ProfileBlock> createState() => _ProfileBlockState();
}

class _ProfileBlockState extends State<ProfileBlock> { 
  @override
  Widget build(BuildContext context) {
    return 
    Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(36.0),
          child: widget.photo,
        ),
        SizedBox(
          width: 200,
          child: Text(
            widget.name,
            textAlign: TextAlign.center,
          )
        ),
      ],
    );
  }
}
