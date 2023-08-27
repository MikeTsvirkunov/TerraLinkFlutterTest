// import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<String> getListOfRKAttachments(String nodeId, String ticket) async {
  var response = await http.get(
    Uri.parse(
        'http://ot-lo-be-dev1.ot.dev.local/otcs/llisapi.dll/api/v2/app/container/$nodeId/page'),
    headers: <String, String>{'otcsticket': ticket},
  );
  return response.body;
}
