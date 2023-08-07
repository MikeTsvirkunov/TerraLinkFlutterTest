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
  'getLookupsCount': () {return 0;},
};