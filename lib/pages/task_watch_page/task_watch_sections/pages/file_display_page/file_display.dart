import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extender_function.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/file_display_page/doc_bottom_controller.dart';

class FileDisplay extends StatefulWidget {
  final String nodeId;

  const FileDisplay({super.key, required this.nodeId});
  
  @override
  State<FileDisplay> createState() => _FileDisplayState();
}

class _FileDisplayState extends State<FileDisplay> {
  late Future<List<String>> filePathes;

  @override
  void initState() {
    super.initState();
    containerExtenderFunction(varContainer, 'nodeIdOfWatchingTask', widget.nodeId);
    filePathes = containerExtractiorFunction(funConatiner, 'getFilesListOfWatchingTask')();
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: filePathes, 
      builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
        if (snapshot.hasData){
          return FractionallySizedBox(
            heightFactor: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                fit: FlexFit.tight,
                flex: 9,
                child: containerExtractiorFunction(funConatiner, 'fileDisplayBuilder')(snapshot.data)
              ),
              const Flexible(
                fit: FlexFit.tight,
                child: DocBottomController()
              )
            ]
          ));
        }
        return const Center(
          child: Text(
            'File loading to display', 
            style: TextStyle(color: Colors.black38),
          ),
        );
      }
    );
  }
}


