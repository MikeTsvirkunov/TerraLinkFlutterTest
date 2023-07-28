import 'package:flutter/material.dart';
import './profile_block.dart';
import 'btn_block.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});
  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color.fromARGB(255, 215, 220, 231)),
        child: const Column(children: <Widget>[ProfileBlock(), BTNsBlock()]),
      )
    );
  }
}
