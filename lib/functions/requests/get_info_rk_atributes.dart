import 'package:http/http.dart' as http;

Future<String> getInfoRKAtributes(String nodeId, String ticket) async {
  var response = await http.get(
    Uri.parse('http://ot-lo-be-dev1.ot.dev.local/otcs/llisapi.dll/api/v1/forms/nodes/update?id=$nodeId'),
    headers: <String, String>{'otcsticket': ticket},
  );
  return response.body;
}
