import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


Future<String> authTicketGetFunction(
  String username,
  String password,
) async {
  var response = await http.post(
    Uri.parse('http://ot-lo-be-dev1.ot.dev.local/otcs/llisapi.dll/api/v1/auth'),
    body: {
      'username': username, 
      'password': password
    }
  );
  // return  processor(response);
  return ((convert.jsonDecode(response.body) as Map<String, dynamic>)['ticket']).toString();
}
