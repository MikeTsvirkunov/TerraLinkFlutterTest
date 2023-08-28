import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_terra_link_test/container_extender_function.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'package:path_provider/path_provider.dart';

Future<List<String>> getFilesListOfWatchingTask() async {
  var acc = await containerExtractiorFunction<Function>(funConatiner, 'getPass')();
  String ticket = await containerExtractiorFunction<Function>(funConatiner, 'getKeyAuth')(acc['username'],acc['password'],);
  String nodeId = containerExtractiorFunction(varContainer, 'nodeIdOfWatchingTask').toString();
  String preListOfRKAttachments = await containerExtractiorFunction<Function>(funConatiner, 'getListOfRKAttachments')(nodeId, ticket,);
  var z = (convert.jsonDecode(preListOfRKAttachments )as Map<String, dynamic>);
  List<dynamic> listOfRKAttachments = (convert.jsonDecode(preListOfRKAttachments )as Map<String, dynamic>)["results"];
  var dir = await getExternalStorageDirectory();
  List<String> filesPathes = [];
  for (var element in listOfRKAttachments) {
    http.Response doc = await containerExtractiorFunction<Function>(funConatiner, 'getDocContent')(element['id'].toString(), ticket);
    String fileName = doc.headers['content-disposition']!.split('filename=').last.replaceAll('"', '');
    var file = File("${dir!.path}/$fileName");
    await file.writeAsBytes(doc.bodyBytes, flush: true);
    filesPathes.add(file.path);
  }

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
    File file2 = File("${dir.path}/$filename");
    await file2.writeAsBytes(bytes, flush: true);
    completer.complete(file2);
  } catch (e) {
    throw Exception('Error parsing asset file! $e');
  }
  var f = await completer.future;
  containerExtenderFunction(varContainer, 'plugForPdf', f.path);

  return filesPathes;
}
