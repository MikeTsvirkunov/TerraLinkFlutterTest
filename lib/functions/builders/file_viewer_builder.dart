import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';
import 'package:flutter_file_view/flutter_file_view.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Widget fileViewerBuilder(String node_id) {
  // var getKeyAuth = containerExtractiorFunction<Function>(funConatiner, 'getKeyAuth');
  // var getPass = containerExtractiorFunction<Function>(funConatiner, 'getPass');
  // var acc = await getPass();
  // var ticket = await getKeyAuth(varConatiner['AuthLink'],acc['username'],acc['password'],);
  // var response = await http.get(
  //   Uri.parse('http://ot-lo-be-dev1.ot.dev.local/otcs/llisapi.dll/api/v2/app/container/$node_id/page'),
  //   headers: {'otcsticket': ticket}
  // );
  // List<dynamic> x3 = ((convert.jsonDecode(response.body) as Map<String, dynamic>)['results']);
  // for (var i in x3){

  // }
  return Text('');// FileView(controller: FileViewController.asset('assets/files/s.xlsx'));
}