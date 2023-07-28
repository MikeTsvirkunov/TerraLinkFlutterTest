import 'package:flutter/material.dart';

class ProfileBlock extends StatefulWidget {
  const ProfileBlock({super.key});
  @override
  State<ProfileBlock> createState() => _ProfileBlockState();
}

class _ProfileBlockState extends State<ProfileBlock> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Image.asset("assets/images/user.jpg"),
        const Text('Андрей Владимирович Стасенко'),
      ],
    );
  }
}
