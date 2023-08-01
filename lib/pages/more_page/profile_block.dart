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
        ClipRRect(borderRadius: BorderRadius.circular(36.0), child: const Image(image: AssetImage('assets/images/user/user.jpg')),),
        const SizedBox(width: 200, child: Text('Андрей Владимирович Стасенко', textAlign: TextAlign.center,)),
      ],
    );
  }
}
