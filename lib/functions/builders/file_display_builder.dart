// import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
// import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
// import 'package:flutter_application_terra_link_test/containers/global_vars.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/file_display.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;

// import 'package:path_provider/path_provider.dart';

Future<Widget> fileDisplayGetter(String nodeId) async {
  // var getKeyAuth = containerExtractiorFunction<Function>(funConatiner, 'getKeyAuth');
  // var acc = await containerExtractiorFunction<Function>(funConatiner, 'getPass')();
  // var ticket = await getKeyAuth(varConatiner['AuthLink'],acc['username'],acc['password'],);
  // var response = await http.get(
  //   Uri.parse('http://ot-lo-be-dev1.ot.dev.local/otcs/llisapi.dll/api/v2/app/container/$nodeId/page'),
  //   headers: {'otcsticket': ticket}
  // );
  // List<dynamic> x3 = ((convert.jsonDecode(response.body) as Map<String, dynamic>)['results']);
  // for (var e in x3){
  //   String id = e['id'].toString();
  //   var response2 = await http.get(
  //     Uri.parse('http://ot-lo-be-dev1.ot.dev.local/otcs/llisapi.dll/api/v1/nodes/$id/content/doc$id'),
  //     headers: <String, String>{
  //       'otcsticket': ticket
  //     }
  //   );
  //   if (response2.statusCode == 200){
  //     var dir = await getApplicationDocumentsDirectory();
  //   }
  //   // File file = File("${dir.path}/$id");
  //   // File('${getApplicationDocumentsDirectory()}').writeAsBytes(response.bodyBytes);
  //   // File.fromUri();
  // }
  
  return FileDisplay(nodeId: nodeId,);
}

Future<Widget> fileDisplayBuilder(String nodeId) async {
  // var getKeyAuth = containerExtractiorFunction<Function>(funConatiner, 'getKeyAuth');
  // var acc = await containerExtractiorFunction<Function>(funConatiner, 'getPass')();
  // var ticket = await getKeyAuth(varConatiner['AuthLink'],acc['username'],acc['password'],);
  // var response = await http.get(
  //   Uri.parse('http://ot-lo-be-dev1.ot.dev.local/otcs/llisapi.dll/api/v2/app/container/$nodeId/page'),
  //   headers: {'otcsticket': ticket}
  // );
  // List<dynamic> x3 = ((convert.jsonDecode(response.body) as Map<String, dynamic>)['results']);
  // for (var e in x3){
  //   String id = e['id'].toString();
  //   var response2 = await http.get(
  //     Uri.parse('http://ot-lo-be-dev1.ot.dev.local/otcs/llisapi.dll/api/v1/nodes/$id/content/doc$id'),
  //     headers: <String, String>{
  //       'otcsticket': ticket
  //     }
  //   );
  //   if (response2.statusCode == 200){
  //     var dir = await getApplicationDocumentsDirectory();
  //   }
  //   // File file = File("${dir.path}/$id");
  //   // File('${getApplicationDocumentsDirectory()}').writeAsBytes(response.bodyBytes);
  //   // File.fromUri();
  // }

  return FileDisplay(
    nodeId: nodeId,
  );
}