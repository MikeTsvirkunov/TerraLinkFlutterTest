import 'package:flutter/material.dart';

class RelationDocBlock extends StatefulWidget {
  final String? docName;
  final String? authorName;
  final String? docTitle;
  const RelationDocBlock({Key? key, this.docName, this.authorName, this.docTitle})
      : super(key: key);
  @override
  State<RelationDocBlock> createState() => _RelationDocBlockState();
}

class _RelationDocBlockState extends State<RelationDocBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 238, 240, 244),
            width: 1
          )
        ), 
      ),
      padding: const EdgeInsets.all(10),
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.docName ?? 'Не указан', textScaler: const TextScaler.linear(1.2)),
          const SizedBox(height: 2.5,),
          Text('Автор: ${widget.authorName ?? "Не указан"}', textScaler: const TextScaler.linear(1.1), style: const TextStyle(color: Color.fromARGB(255, 128, 130, 133)),),
          const SizedBox(height: 2.5,),
          Text(widget.docTitle ?? 'Не указан', textScaler: const TextScaler.linear(1.2)),
        ],
      ),
    );
  }
}
