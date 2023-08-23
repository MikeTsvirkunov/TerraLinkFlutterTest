// import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:http/http.dart';

Future<Map<String, dynamic>> requisitesPageParamsGetter(nodeId) async {
  var acc = await containerExtractiorFunction<Function>(funConatiner, 'getPass')();
  var ticket = await containerExtractiorFunction<Function>(funConatiner, 'getKeyAuth')(
    acc['username'],
    acc['password'],
  );
  Request orderListGetFunction = await containerExtractiorFunction<Function>(funConatiner, 'getInfoRKAtributes')(nodeId, ticket);
  return orderListGetFunction.body as Map<String, dynamic>;
}