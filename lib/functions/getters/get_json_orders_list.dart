import 'dart:convert' as convert;
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';

Future<List<dynamic>> getJsonOrdersList() async {
  var getKeyAuth = containerExtractiorFunction<Function>(funConatiner, 'getKeyAuth');
  var getTaskList = containerExtractiorFunction<Function>(funConatiner, 'orderListGetFunction');
  var getPass = containerExtractiorFunction<Function>(funConatiner, 'getPass');
  var acc = await getPass();
  var x = await getKeyAuth(
    acc['username'],
    acc['password'],
  );
  var x2 = await getTaskList(varConatiner['TaskLink'], x);
  List<dynamic> x3 = ((convert.jsonDecode(x2) as Map<String, dynamic>)['results']['value']['assignments']);
  return x3;
}
