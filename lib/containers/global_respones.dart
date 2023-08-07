import '../functions/processors/bad_response_preprocor.dart';

final responesConatiner = <int, Function>{
  500: stdBadResponsePreprocessingFunction,
  400: stdBadResponsePreprocessingFunction,
};
