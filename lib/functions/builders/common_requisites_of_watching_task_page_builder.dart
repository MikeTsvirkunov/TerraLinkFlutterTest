import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/requisites_page/common_requisites_block.dart';

Widget commonRequisitesOfWatchingTaskPageBuilder(Map<String, dynamic> requisites){
  String? dateOfRegistrationOfWatchingTask = containerExtractiorFunction<String?>(varContainer, 'dateOfRegistrationOfWatchingTask');
  String? dateOfCreationOfWatchingTask = containerExtractiorFunction<String?>(varContainer, 'dateOfCreationOfWatchingTask');

  return SingleChildScrollView(
    child: Column(
      children: [
        ExpansionTile(
          title: const Text('Общие реквизиты'),
            children: [
              CommonRequisitesBlock(
                name: 'Дата регистрации', 
                value: dateOfRegistrationOfWatchingTask != null ? dateOfRegistrationOfWatchingTask.toString() : 'Не указан',
              ),
              CommonRequisitesBlock(
                name: 'Дата создания', 
                value: dateOfCreationOfWatchingTask != null ? dateOfRegistrationOfWatchingTask.toString() : 'Не указан',
              ),
            ]
          ),
      ]
    ),
  );
}