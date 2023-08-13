import 'package:flutter_application_terra_link_test/functions/builders/task_block_bulilder.dart';
import 'package:flutter_application_terra_link_test/functions/builders/task_counter_block_builder.dart';
import 'package:flutter_application_terra_link_test/functions/checkers/future_builder_checker.dart';
import 'package:flutter_application_terra_link_test/functions/generators/generate_task_block_list.dart';
import 'package:flutter_application_terra_link_test/functions/getters/get_json_tasks_list.dart';
import 'package:flutter_application_terra_link_test/functions/processors/success_tasks_request_future_builder_processor.dart';
import '../functions/requests/auth_ticket_get_function.dart';
import '../functions/requests/task_list_get_function.dart';
import '../functions/processors/bad_response_preprocor.dart';
import '../functions/processors/respones_code_processor.dart';
import '../functions/processors/get_task_list_processor.dart';
import 'package:flutter_application_terra_link_test/functions/get_pass.dart';

final funConatiner = <String, Function>{
  'getKeyAuth': authTicketGetFunction,
  'getTaskList': taskListGetFunction,
  'stdBadResponsePreprocessor': stdBadResponsePreprocessingFunction,
  'responesCodeProcessor': responesCodeProcessor,
  'getTaskListProcessor': getTaskListProcessor,
  'getPass': getPass,
  'taskCountersContainerBuilder': taskCountersContainerBuilder,
  'taskBlockBuilder': taskBlockBuilder,
  'getJsonTasksList': getJsonTasksList,
  'generateTaskBlockList': generateTaskBlockList,
  'futureBuilderChecker': futureBuilderChecker,
  'successTasksRequestFutureBuilderProcessor': successTasksRequestFutureBuilderProcessor,
  'getLookupsCount': () {return 0;},
};