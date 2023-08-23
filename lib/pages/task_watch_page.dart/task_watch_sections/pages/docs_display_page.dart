import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/pdf_screen.dart';

class FileDisplay extends StatefulWidget {
  @override
  _FileDisplayState createState() => _FileDisplayState();
}

class _FileDisplayState extends State<FileDisplay> {
  late Future<String> remotePDFpath;

  @override
  void initState() {
    super.initState();
    remotePDFpath = containerExtractiorFunction(funConatiner, 'getFile')();
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: remotePDFpath,
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) return PDFScreen(path: snapshot.data);
          return const Center(
            child: Text(
              'File loading to display',
              style: TextStyle(color: Colors.black38),
            ),
          );
        });
  }
}
