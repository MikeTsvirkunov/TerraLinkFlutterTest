import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/pdf_screen.dart';

Widget multipleFileDisplayBuilder(){
  return PDFScreen(path: containerExtractiorFunction(varContainer, 'plugForPdf'));
}