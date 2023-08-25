import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/pdf_screen.dart';
import 'package:path_provider/path_provider.dart';

class FileDisplay extends StatefulWidget {
  final String nodeId;

  const FileDisplay({super.key, required this.nodeId});
  
  @override
  State<FileDisplay> createState() => _FileDisplayState();
}

class _FileDisplayState extends State<FileDisplay> {
  late Future<String> remotePDFpath;

  @override
  void initState() {
    super.initState();
    remotePDFpath = createFileOfPdfUrl();
  }

  Future<String> createFileOfPdfUrl() async {
    Completer<File> completer = Completer();
    if (kDebugMode) {
      print("Start download file from internet!");
    }
    try {
      const url = "https://pdfkit.org/docs/guide.pdf";
      final filename = url.substring(url.lastIndexOf("/"));
      var request = await HttpClient().getUrl(Uri.parse(url));
      var response = await request.close();
      var bytes = await consolidateHttpClientResponseBytes(response);
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/$filename");
      await file.writeAsBytes(bytes, flush: true);
      completer.complete(file);
    } catch (e) {
      throw Exception('Error parsing asset file! $e');
    }
    var f = await completer.future; 
    return f.path;
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
      }
    );
  }
}


