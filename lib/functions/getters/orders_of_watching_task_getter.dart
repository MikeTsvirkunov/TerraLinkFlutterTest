import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';
import 'package:http/http.dart' as http;

Future<List> ordersOfWatchingTaskGetter() async {
  var acc = await containerExtractiorFunction<Function>(funConatiner, 'getPass')();
  var ticket = await containerExtractiorFunction<Function>(funConatiner, 'getKeyAuth')(
    acc['username'],
    acc['password'],
  );
  var nodeId = await containerExtractiorFunction(varContainer, 'nodeIdOfWatchingTask');
  http.Response relatedDocs = await containerExtractiorFunction<Function>(funConatiner, 'getRelatedDocuments')(nodeId, ticket);
  List relatedDocsList = containerExtractiorFunction<Function>(funConatiner, 'getRelatedDocumentsResponesDataProcessor')(relatedDocs);
  for (var e in relatedDocsList){
    http.Response res = await containerExtractiorFunction<Function>(funConatiner, 'getRouteDataAssociatedWithDocument')(e['dataid'].toString(), ticket);
    containerExtractiorFunction<Function>(funConatiner, 'routeDataAssociatedWithDocumentDataPreprocessor')(res);
  }
  return relatedDocsList;
}