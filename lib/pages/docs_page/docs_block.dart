import 'package:flutter/material.dart';
// import 'package:flutter_application_terra_link_test/global.dart';

class DocsBlock extends StatefulWidget {
  final List<Widget> paramsList;
  final String typeOfTask;
  final String docName;
  final String day;
  final String month;
  final String description;
  final int red;
  final int green;
  final int blue;
  final int alpha;
  const DocsBlock(this.paramsList, this.typeOfTask, this.docName, this.day, this.month, this.description, this.red, this.green, this.blue, this.alpha, {super.key});
  @override
  State<DocsBlock> createState() => _DocsBlockState();
}

class _DocsBlockState extends State<DocsBlock> {
  @override
  Widget build(BuildContext context) {
    return InkWell( 
        onTap: () {
          print('Err');
        },
    child: Container(
      padding: const EdgeInsets.all(12),
      width: double.maxFinite,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color.fromARGB(255, 230, 232, 235), width: 2)), 
        color: Colors.white,
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              widget.typeOfTask,
              style: TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, widget.red, widget.green, widget.blue)
              ),
            ),
            Text(
              widget.docName,
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 18,
                color: Color.fromARGB(255, widget.red, widget.green, widget.blue)
              ),
            ),
          ] + widget.paramsList + [
            Text(
              widget.description,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
        )
          ],
        )
      )
    );
  }
}
