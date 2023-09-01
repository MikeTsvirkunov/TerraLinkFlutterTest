import 'package:flutter/material.dart';

class PageControllerBtns extends StatefulWidget {
  final Function nextPage;
  final Function prevPage;
  const PageControllerBtns({super.key, required this.nextPage, required this.prevPage});

  @override
  State<PageControllerBtns> createState() => _PageControllerState();
}

class _PageControllerState extends State<PageControllerBtns> {
  int currentPath = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
            onPressed: (){widget.nextPage();},
            child: const Icon(
              Icons.arrow_right_alt_sharp,
              textDirection: TextDirection.rtl,
            )),
        ElevatedButton(
            onPressed: (){widget.prevPage();},
            child: const Icon(Icons.arrow_right_alt_sharp))
      ],
    );
  }
}
