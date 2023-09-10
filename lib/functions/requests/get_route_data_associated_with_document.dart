// import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


/// # 4.2.4	Получение данных о маршрутах, связанных с документом
/// [nodeId] : node_id задачи 
Future<http.Response> getRouteDataAssociatedWithDocument(String nodeId, String ticket) async {
  var response = await http.get(
    Uri.parse('http://ot-lo-be-dev1.ot.dev.local/otcs/llisapi.dll/api/v2/dmnodes/$nodeId/allworkflows'),
    headers: <String, String>{'otcsticket': ticket},
  );
  return response;
}
