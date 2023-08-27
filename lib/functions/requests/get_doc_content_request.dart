import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

Future<File> getDocContent(String docId, String ticket) async {
  var response = await http.get(
    Uri.parse(
        'http://ot-lo-be-dev1.ot.dev.local/otcs/llisapi.dll/api/v1/nodes/$docId/content/'),
    headers: <String, String>{'otcsticket': ticket},
  );
  var dir = await getApplicationDocumentsDirectory();
  // docId + response.headers['Content-Disposition']!;
  // File file = File("${dir.path}/${docId + respon}");
  // await file.writeAsBytes(bytes, flush: true);
  return File('');
}
