import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


Future<Map<String, dynamic>> getDataAboutRouteTask(String wfId, String ticket) async {
  var response = await http.get(
    Uri.parse('http://ot-lo-be-dev1.ot.dev.local/otcs/llisapi.dll/api/v2/dmwf/getActivities/$wfId'),
    headers: <String, String>{'otcsticket': ticket},
  );
  return (convert.jsonDecode(response.body) as Map<String, dynamic>)['results']['value']['data'][0];
}