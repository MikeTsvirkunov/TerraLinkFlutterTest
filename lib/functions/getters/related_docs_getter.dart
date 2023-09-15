import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';
import 'package:http/http.dart' as http;

Future<List> relatedDocsGetter() async {
  var acc = await containerExtractiorFunction<Function>(funConatiner, 'getPass')();
  var ticket = await containerExtractiorFunction<Function>(funConatiner, 'getKeyAuth')(
    acc['username'],
    acc['password'],
  );
  var nodeId = containerExtractiorFunction(varContainer, 'nodeIdOfWatchingTask').toString();
  http.Response relatedDocs = await containerExtractiorFunction<Function>(funConatiner, 'getRelatedDocuments')(nodeId, ticket);
  List relatedDocsList = containerExtractiorFunction<Function>(funConatiner, 'getRelatedDocumentsResponesDataProcessor')(relatedDocs);
  return relatedDocsList;
}