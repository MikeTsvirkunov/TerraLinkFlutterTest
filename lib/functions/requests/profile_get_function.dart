import 'package:http/http.dart' as http;

Future<String> profileListGetFunction(
  String url, 
  String ticket
) async {
  var response = await http.get(
    Uri.parse(url),
    headers: {
      'otcsticket': ticket
    }
  );
  return response.body;
}
