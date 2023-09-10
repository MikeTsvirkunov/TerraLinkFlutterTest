import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

List routeDataAssociatedWithDocumentDataPreprocessor(http.Response routeDataAssociatedWithDocument){
  var routeDataAssociatedWithDocumentMap = convert.jsonDecode(routeDataAssociatedWithDocument.body) as Map<String, dynamic>;
  return routeDataAssociatedWithDocumentMap['results']['value']['data'];
}