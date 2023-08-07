import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<String> getTaskListProcessor(http.Response response) async {
  return convert.jsonDecode(response.body).toString();
}
