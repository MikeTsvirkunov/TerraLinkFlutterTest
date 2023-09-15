import 'package:flutter_application_terra_link_test/container_extender_function.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<Map<String, dynamic>> commonRequisitesOfWatchingTaskGetter() async {
  var acc = await containerExtractiorFunction<Function>(funConatiner, 'getPass')();
  var ticket = await containerExtractiorFunction<Function>(funConatiner, 'getKeyAuth')(
    acc['username'],
    acc['password'],
  );
  var wfId = await containerExtractiorFunction(varContainer, 'workflowIdOfWatchingTask');
  var nodeId = await containerExtractiorFunction(varContainer, 'nodeIdOfWatchingTask');
  http.Response res = await containerExtractiorFunction<Function>(funConatiner, 'getDataAboutRouteOFWatchingTask')(wfId.toString(), ticket);
  http.Response res2 = await containerExtractiorFunction<Function>(funConatiner, 'getRouteDataAssociatedWithDocument')(nodeId.toString(), ticket);
  // var preRequisits1 = (convert.jsonDecode(res.body) as Map<String, dynamic>);
  var requisits1 = (convert.jsonDecode(res.body) as Map<String, dynamic>)['results']['value']['data'].last;
  var requisits2 = (convert.jsonDecode(res2.body) as Map<String, dynamic>)['results']['value']['data'].last;
  containerExtenderFunction(varContainer, 'registratorOfWatchingTask', null);
  containerExtenderFunction(varContainer, 'approvalStampOfWatchingTask', null);
  containerExtenderFunction(varContainer, 'responesForNumOfWatchingTask', null);
  containerExtenderFunction(varContainer, 'responesForDateOfWatchingTask', null);
  containerExtenderFunction(varContainer, 'dateInitOfWatchingTask', DateTime.parse(requisits2['date_init']));
  containerExtenderFunction(varContainer, 'authorOfWatchingTask', requisits2['author']);
  containerExtenderFunction(varContainer, 'coauthorOfWatchingTask', null);
  containerExtenderFunction(varContainer, 'groupOfCreatorsOfWatchingTask', null);
  containerExtenderFunction(varContainer, 'sighterOfIdepartmentsOfWatchingTask', null);
  containerExtenderFunction(varContainer, "sighterOfWatchingTask", null);
  containerExtenderFunction(varContainer, 'executorOfWatchingTask', requisits1['performer']);
  return convert.jsonDecode(res.body) as Map<String, dynamic>;
}
