import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/requisites_page/archive_storage_requisites_expansion_title.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/requisites_page/union_requisites_expansion_title.dart';

Widget commonRequisitesOfWatchingTaskPageBuilder(Map<String, dynamic> requisites){
  // var commonRequisits = requisites['results']['data'].last;
  // containerExtenderFunction(varContainer, '', commonRequisits);
  return const SingleChildScrollView(
    child: Column(
      children: [
        UnionRequisitesExpansionTitle(),
        ArchiveStorageRequisitesExpansionTitle(),
      ]
    ),
  );
}