import 'package:flutter_application_terra_link_test/interfaces/iExtractable.dart';

class ConstantContainer implements IExtractable{
  late Map<String, dynamic> container;
  
  ConstantContainer(this.container);

  @override
  T extract<T>(String key) {
    return container[key] as T;
  }
  
}