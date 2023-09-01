import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/file_display_page/page_controller.dart';

class MultipleFileDisplay extends StatefulWidget {
  final List<String> filePathes;
  const MultipleFileDisplay({super.key, required this.filePathes});

  @override
  State<MultipleFileDisplay> createState() => _MultipleFileDisplayState();
}

class _MultipleFileDisplayState extends State<MultipleFileDisplay> {
  int currentPath = 0;

  prevPage(){
    setState(() {
      currentPath = currentPath < 1 ? (widget.filePathes.length - 1) : currentPath - 1;
    });
  } 
  nextPage(){
    setState(() {
      currentPath = currentPath < (widget.filePathes.length - 1) ? currentPath + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        containerExtractiorFunction(funConatiner, 'singleFileDisplayBuilder')(widget.filePathes[currentPath]),
        PageControllerBtns(prevPage: prevPage, nextPage: nextPage)
      ]
    );
  }
}
