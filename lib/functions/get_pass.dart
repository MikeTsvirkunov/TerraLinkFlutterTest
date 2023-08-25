import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_application_terra_link_test/containers/global_const.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';

Future<Map<String, dynamic>> getPass() async {
  return  rootBundle.loadString(containerExtractiorFunction(constConatiner, 'AcountPass'))
      .then((jsonStr) => jsonDecode(jsonStr) as Map<String, dynamic>); // File(containerExtractiorFunction(varConatiner, 'AcountPass')).readAsString();
}
