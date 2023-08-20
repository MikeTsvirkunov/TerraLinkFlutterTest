import 'dart:async';
import 'dart:io';

import 'package:aspose_words_cloud/aspose_words_cloud.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/pdf_screen.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

class FileDisplay extends StatefulWidget {
  @override
  _FileDisplayState createState() => _FileDisplayState();
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
      var dir2 = await getApplicationDocumentsDirectory();
      File file2 = File("${dir2.path}/blabla.doc");
      var data = await rootBundle.load('assets/files/FileTest.doc');
      await file2.writeAsBytes(data.buffer.asUint8List(), flush: true);
      final doc = File("${dir2.path}/blabla.doc");
      // final PdfDocument document = PdfDocument(inputBytes: doc.readAsBytesSync());

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
        if (snapshot.data != null|| snapshot.data != null) return PDFScreen(path: snapshot.data);
        return const Center(child: Text('blabla', style: TextStyle(color: Colors.black38),),);
      }
    );
  }
}


