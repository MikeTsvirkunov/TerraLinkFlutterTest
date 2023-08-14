import 'package:http/http.dart' as http;


Future<String> orderListGetFunction(
  String url,
  String ticket
) async {
  var response = await http.get(
    Uri.parse(url),
    headers: <String, String>{
      'otcsticket': ticket,
      'assignmentsOnly': 'true'
    },
  );
  return response.body;
}