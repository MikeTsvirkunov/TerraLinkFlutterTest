// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/file_display_page/multiple_docs_display_page.dart';


Widget fileDisplayBuilder(List<String> filePathes){
  switch (filePathes.length) {
    case 0:
      return const Center(child: Text('No files'),); 
    case 1:
      return containerExtractiorFunction(funConatiner, 'singleFileDisplayBuilder')(filePathes.first);
    default:
      return MultipleFileDisplay(filePathes: filePathes);// containerExtractiorFunction(funConatiner, 'multipleFileDisplayBuilder')(filePathes);
  }
}
