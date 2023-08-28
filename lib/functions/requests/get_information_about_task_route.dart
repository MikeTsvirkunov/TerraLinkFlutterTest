import 'package:http/http.dart' as http;

Future<http.Response> getListOfRKAttachments(String wfId, String ticket) async {
  var response = await http.get(
    Uri.parse(
        'http://ot-lo-be-dev1.ot.dev.local/otcs/llisapi.dll/api/v2/app/container/$wfId/page'),
    headers: <String, String>{'otcsticket': ticket},
  );
  return response;
}
