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
        BTN('assets/images/icons/profile.png', 'Профиль'),
        BTN('assets/images/icons/stat.png', 'Отчёты'),
        BTN('assets/images/icons/search.png', 'Поиск'),
      ]
    );
  }
}
