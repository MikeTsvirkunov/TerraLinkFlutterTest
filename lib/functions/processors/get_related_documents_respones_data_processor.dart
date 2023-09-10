import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

List getRelatedDocumentsResponesDataProcessor(http.Response relatedDocsResponse){
  var relatedDocsMap = convert.jsonDecode(relatedDocsResponse.body) as Map<String, dynamic>;
  return relatedDocsMap['results']['value'];
}