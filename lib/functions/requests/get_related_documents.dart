import 'package:http/http.dart' as http;


/// [getRelatedDocuments] : 4.2.11	Получение связанных документов.
/// [nodeId] : id узла.
Future<http.Response> getRelatedDocuments(String nodeId, String ticket) async {
  var response = await http.get(
    Uri.parse(
        'http://ot-lo-be-dev1.ot.dev.local/otcs/llisapi.dll/api/v2/dmrecman/xrefs/$nodeId'),
    headers: <String, String>{'otcsticket': ticket},
  );
  return response;
}
