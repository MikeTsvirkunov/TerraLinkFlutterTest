import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_const.dart';

String converterStringDateTimeToStringInOrdersOfWatchingTask(String? dt){
  if (dt != null){
    var x = DateTime.parse(dt);
    return '${x.day} ${containerExtractiorFunction(constConatiner, 'monthNumNameMapForFull')[x.month].toLowerCase()}';
  }
  return 'Не указанна';
}