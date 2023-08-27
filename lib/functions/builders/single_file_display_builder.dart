import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/pdf_screen.dart';
import 'package:open_file/open_file.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:file_picker/file_picker.dart';

Widget singleFileDisplayBuilder(String filePath) {
  switch (filePath.split('.').last) {
    case 'pdf':
      return PDFScreen(path: filePath);
    default:
      // OpenFile.open(filePath);
      return MyApp(
        filePath: filePath,
      );
    // Center(
    //   child: TextButton(
    //     child: Text(
    //       'Open file in enother app'
    //     ),
    //     onPressed: () async {
    //       if (await Permission.manageExternalStorage.request().isGranted) var x =  await OpenFile.open(filePath);
    //       x

    //     },
    //   ),
    // );
  }
}

class MyApp extends StatefulWidget {
  final String filePath;
  const MyApp({super.key, required this.filePath});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _openResult = 'Unknown';

  Future<void> openFile() async {
    _openAppPrivateFile();
  }

  _openAppPrivateFile() async {
    //open an app private storage file
    final result = await OpenFile.open(widget.filePath);
    setState(() {
      _openResult = "type=${result.type}  message=${result.message}";
    });
  }

  // ignore: unused_element
  _openExternalFile() async {
    //open an external storage file
    if (await Permission.manageExternalStorage.request().isGranted) {
      final result = await OpenFile.open(widget.filePath);
      setState(() {
        _openResult = "type=${result.type}  message=${result.message}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('open result: $_openResult\n'),
              TextButton(
                child: Text('Tap to open file'),
                onPressed: openFile,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
