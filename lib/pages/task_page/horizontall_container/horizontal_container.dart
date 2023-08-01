import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/global.dart';

class BlockTaskCounter extends StatefulWidget {
  final String name;
  final String counter;
  final String icon;
  const BlockTaskCounter(this.name, this.counter, this.icon, {super.key});
  @override
  State<BlockTaskCounter> createState() => _BlockTaskCounterState();
}

class _BlockTaskCounterState extends State<BlockTaskCounter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: ,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  
                ),
                child: SizedBox(
                  child: Text(widget.counter)
                ),
              ),
              const Spacer(),
              ImageIcon(AssetImage(widget.icon))
            ],
          )
        ],
      ),
    );
  }
}
