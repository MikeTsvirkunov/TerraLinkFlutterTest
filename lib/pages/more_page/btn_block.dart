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
        BTN(Icon(Icons.person_outlined), 'Профиль'),
        BTN(Icon(Icons.pie_chart_outline), 'Отчёты'),
        BTN(Icon(Icons.search), 'Поиск'),
      ]
    );
  }
}
