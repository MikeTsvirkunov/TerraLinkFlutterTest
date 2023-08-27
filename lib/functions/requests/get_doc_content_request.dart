import 'dart:async';
import 'package:http/http.dart' as http;

Future<http.Response> getDocContent(String docId, String ticket) async {
  var response = await http.get(
    Uri.parse(
        'http://ot-lo-be-dev1.ot.dev.local/otcs/llisapi.dll/api/v1/nodes/$docId/content/'),
    headers: <String, String>{'otcsticket': ticket},
  );
  return response;
}
