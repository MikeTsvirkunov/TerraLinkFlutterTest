import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/pdf_screen.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/file_display_page/unresolved_file_display.dart';

Widget singleFileDisplayBuilder(String filePath) {
  switch (filePath.split('.').last) {
    case 'pdf':
      return PDFScreen(path: filePath);
    default:
      return UnresolveFileFormatScreen(
        filePath: filePath,
      );
  }
}

