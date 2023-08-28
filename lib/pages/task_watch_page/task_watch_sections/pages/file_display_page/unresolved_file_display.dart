import 'package:flutter/material.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:permission_handler/permission_handler.dart';

class UnresolveFileFormatScreen extends StatefulWidget {
  final String filePath;
  const UnresolveFileFormatScreen({super.key, required this.filePath});
  @override
  State<UnresolveFileFormatScreen> createState() => _MyAppState();
}

class _MyAppState extends State<UnresolveFileFormatScreen> {

  Future<void> openFile() async {
    _openExternalFile();
  }

  _openExternalFile() async {
    if (await Permission.manageExternalStorage.request().isGranted) {
      await OpenFile.open(widget.filePath);
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
          child: TextButton(
            onPressed: openFile,
            child: const Text('Tap to open file'),
          ),
        ),
      ),
    );
  }
}
