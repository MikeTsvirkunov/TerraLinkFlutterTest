import 'package:flutter/material.dart';
import 'btn.dart';

class BTNsBlock extends StatefulWidget {
  const BTNsBlock({super.key});
  @override
  State<BTNsBlock> createState() => _BTNsBlockState();
}

class _BTNsBlockState extends State<BTNsBlock> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        BTN(ImageIcon(AssetImage('assets/images/icons/profile.png'), size: 0.5,), 'Профиль'),
        BTN(ImageIcon(AssetImage('assets/images/icons/stat.png'), size: 0.5), 'Отчёты'),
        BTN(ImageIcon(AssetImage('assets/images/icons/search.png'), size: 0.5), 'Поиск'),
      ]
    );
  }
}
