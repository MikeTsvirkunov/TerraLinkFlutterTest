import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/requisites_page/common_requisites_block.dart';
// import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/task_watch_sections/pages/requisites_page/common_requisites_block.dart';

class AdresatsRequisitesExpansionTitle extends StatefulWidget {
  // final String nodeId;
  const AdresatsRequisitesExpansionTitle({Key? key}) : super(key: key);
  @override
  State<AdresatsRequisitesExpansionTitle> createState() => _AdresatsRequisitesExpansionTitleState();
}

class _AdresatsRequisitesExpansionTitleState extends State<AdresatsRequisitesExpansionTitle> {

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('Общие реквизиты'),
      children: [
        CommonRequisitesBlock(
          name: 'Дата регистрации', 
          value: containerExtractiorFunction<DateTime?>(varContainer, 'dateOfRegistrationOfWatchingTask')?.toString(),
        ),
        CommonRequisitesBlock(
          name: 'Заголовок', 
          value: containerExtractiorFunction<String?>(varContainer, 'titleOfWatchingTask')?.toString(),
        ),
        CommonRequisitesBlock(
          name: 'Текст документа', 
          value: containerExtractiorFunction<String?>(varContainer, 'textOfOfWatchingTask')?.toString(),
        ),
        CommonRequisitesBlock(
          name: 'Дата создания', 
          value: containerExtractiorFunction<DateTime?>(varContainer, 'dateOfCreationOfWatchingTask')?.toString(),
        ),
        CommonRequisitesBlock(
          name: 'Регистратор', 
          value: containerExtractiorFunction<String?>(varContainer, 'registratorOfWatchingTask')?.toString(),
        ),
        CommonRequisitesBlock(
          name: 'Гриф', 
          value: containerExtractiorFunction<String?>(varContainer, 'approvalStampOfWatchingTask')?.toString(),
        ),
        CommonRequisitesBlock(
          name: 'В ответ на (номер)', 
          value: containerExtractiorFunction<String?>(varContainer, 'responesForNumOfWatchingTask')?.toString(),
        ),
        CommonRequisitesBlock(
          name: 'В ответ на (дата)', 
          value: containerExtractiorFunction<String?>(varContainer, 'responesForDateOfWatchingTask')?.toString(),
        ),
      ]
    );
  }
}
