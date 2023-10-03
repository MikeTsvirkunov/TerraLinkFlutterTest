import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/route_history/etaps_block/executor_block.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/route_history/etaps_block/step_of_etap_block.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/route_history/etaps_block/type_of_etap_block.dart';
// import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
// import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
// import 'package:flutter_application_terra_link_test/pages/task_watch_page/deadline_section/deadline_section.dart';
// import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/task_watch_sections_tab_bar/task_watch_sections_tab_bar.dart';
// import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/task_watch_sections_tab_bar/task_watch_sections_tabs_list.dart';

class InfoColumn extends StatefulWidget {
  const InfoColumn({
    super.key,
  });
  @override
  State<InfoColumn> createState() => _InfoColumnPageState();
}

class _InfoColumnPageState extends State<InfoColumn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(10),
      width: double.maxFinite,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          const TypeOfEtapBlock(name: "Регистрация документа"),
          StepOfEtapBlock(date: DateTime(20121, 11, 20), name: 'дата постановки'),
          StepOfEtapBlock(date: DateTime(20121, 11, 20), name: 'срок исполнения'),
          StepOfEtapBlock(date: DateTime(20121, 11, 20), name: 'исполнено'),
          const ExecutorBlock(
            role: 'Исполнитель', 
            name: 'Генадий Викторович Панасенков', 
            post: 'Руководитель отдела', 
            organisation: 'Цех по транспортировке и сдачи нефти ПАО «ЛУКОЙЛ»', 
            rightsAndDuties: 'Права и обязанности поверенного связаны прежде всего с необходимостью информировать доверителя о ходе исполнения задания. Все обязанности он должен исполнять лично.',
          )
        ],
      )
    );
  }
}
