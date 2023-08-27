// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/file_display.dart';


Widget fileDisplayBuilder(List<String> filePathes){
  if (filePathes.length == 1) return containerExtractiorFunction(funConatiner, 'singleFileDisplayBuilder')(filePathes.first);
  return containerExtractiorFunction(funConatiner, 'multipleFileDisplayBuilder')();
}
