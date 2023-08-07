import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


Future<String> taskListGetFunction(
  String url,
  String ticket
) async {
  var response = await http.get(
    Uri.parse(url),
    headers: <String, String>{
      'otcsticket': ticket
    },
  );
  return response.body;
}