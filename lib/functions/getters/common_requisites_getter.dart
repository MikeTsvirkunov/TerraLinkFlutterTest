import 'package:http/http.dart' as http;
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';

Future<Map<String, dynamic>> commonRequisitesOfWatchingTaskGetter() async {
  var acc = await containerExtractiorFunction<Function>(funConatiner, 'getPass')();
  var ticket = await containerExtractiorFunction<Function>(funConatiner, 'getKeyAuth')(
    acc['username'],
    acc['password'],
  );
  var wfId = await containerExtractiorFunction(varContainer, 'wfIdOfWatchingTask');
  http.Response res = await containerExtractiorFunction<Function>(funConatiner, 'getDataAboutRouteTask')(wfId, ticket);
  return res.body as Map<String, dynamic>;
}