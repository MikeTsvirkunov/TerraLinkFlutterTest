// import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<http.Response> getRouteDataAssociatedWithDocument(String nodeId, String ticket) async {
  var response = await http.get(
    Uri.parse(
        'http://ot-lo-be-dev1.ot.dev.local/otcs/llisapi.dll/api/v2/dmnodes/$nodeId/allworkflows'),
    headers: <String, String>{'otcsticket': ticket},
  );
  return response;
}
