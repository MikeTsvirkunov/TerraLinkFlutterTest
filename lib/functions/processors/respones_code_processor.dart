import 'package:http/http.dart' as http;
import 'package:flutter_application_terra_link_test/containers/global_respones.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';

Future<String> responesCodeProcessor(Function successProcessor, http.Response response) async {
  if (response.statusCode == 200) {
    return successProcessor(response);
  } else {
    var f = responesConatiner.containsKey(response.statusCode)
      ? responesConatiner[response.statusCode] 
      : funConatiner['stdBadResponsePreprocessor'];
    if (f != null){
      return f();
    } else {
      throw const FormatException('Error in processing ');
    }
  }
}
