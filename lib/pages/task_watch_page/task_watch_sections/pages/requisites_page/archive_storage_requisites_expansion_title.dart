import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/requisites_page/common_requisites_block.dart';
// import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/task_watch_sections/pages/requisites_page/common_requisites_block.dart';

class ArchiveStorageRequisitesExpansionTitle extends StatefulWidget {
  // final String nodeId;
  const ArchiveStorageRequisitesExpansionTitle({Key? key}) : super(key: key);
  @override
  State<ArchiveStorageRequisitesExpansionTitle> createState() => _ArchiveStorageRequisitesExpansionTitleState();
}

class _ArchiveStorageRequisitesExpansionTitleState extends State<ArchiveStorageRequisitesExpansionTitle> {

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('Архивное хранение'),
      children: [
        CommonRequisitesBlock(
          name: 'Визирование', 
          value: containerExtractiorFunction<DateTime?>(varContainer, 'sighterOfWatchingTask')?.toString(),
        ),
        CommonRequisitesBlock(
          name: 'Автор', 
          value: containerExtractiorFunction<String?>(varContainer, 'authorOfWatchingTask')?.toString(),
        ),
        CommonRequisitesBlock(
          name: 'Соавтор', 
          value: containerExtractiorFunction<String?>(varContainer, 'coauthorOfWatchingTask')?.toString(),
        ),
        CommonRequisitesBlock(
          name: 'Группа регистраторов', 
          value: containerExtractiorFunction<DateTime?>(varContainer, 'groupOfCreatorsOfWatchingTask')?.toString(),
        ),
        CommonRequisitesBlock(
          name: 'Визирование заинтересованных подразделений', 
          value: containerExtractiorFunction<String?>(varContainer, 'sighterOfIdepartmentsOfWatchingTask')?.toString(),
        ),
        CommonRequisitesBlock(
          name: 'Исполнитель', 
          value: containerExtractiorFunction<String?>(varContainer, 'executorOfWatchingTask')?.toString(),
        ),
      ]
    );
  }
}
