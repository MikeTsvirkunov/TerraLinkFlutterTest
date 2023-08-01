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
        // Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSECnx2LLMDQJVbltLhje5iaqtd_g3tf7gqU3Mcm2oA_LNt2VdJtkPY9YQRVT9S-YEd30E&usqp=CAU'), width: 100, height: 100,),
        ClipRRect(borderRadius: BorderRadius.circular(36.0), child: const Image(image: AssetImage('assets/images/user.jpg')),),
        const Text('Андрей Владимирович Стасенко'),
      ],
    );
  }
}
