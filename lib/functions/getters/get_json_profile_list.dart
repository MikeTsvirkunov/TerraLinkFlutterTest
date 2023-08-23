import 'dart:convert' as convert;
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';

Future<Map<String, dynamic>> getJsonProfileMap() async {
  var getKeyAuth = containerExtractiorFunction<Function>(funConatiner, 'getKeyAuth');
  var getProfileList = containerExtractiorFunction<Function>(funConatiner, 'profileListGetFunction');
  var getPass = containerExtractiorFunction<Function>(funConatiner, 'getPass');
  var acc = await getPass();
  var x = await getKeyAuth(
    acc['username'],
    acc['password'],
  );
  var x2 = await getProfileList(varConatiner['AuthLink'], x);
  Map<String, dynamic> x3 = (convert.jsonDecode(x2) as Map<String, dynamic>)['data'];
  return x3;
}
