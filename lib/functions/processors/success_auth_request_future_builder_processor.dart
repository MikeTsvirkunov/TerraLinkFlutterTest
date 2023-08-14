import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';

Widget successAuthRequestFutureBuilderProcessor(AsyncSnapshot<Map<String, dynamic>> snapshot) {
  return containerExtractiorFunction(funConatiner, 'profileBlockBuilder')(snapshot.data);
  // return  ProfileBlock(Image(image: AssetImage('assets/images/user/user.jpg')), snapshot['display_name'].toString());
}
