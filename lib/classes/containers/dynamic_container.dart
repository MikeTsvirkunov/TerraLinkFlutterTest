import 'package:flutter_application_terra_link_test/interfaces/iExtractable.dart';
import 'package:flutter_application_terra_link_test/interfaces/iextendable.dart';

class DynamicContainer implements IExtendable, IExtractable{
  late Map<String, dynamic> container;

  DynamicContainer(this.container);

  @override 
  T extract<T>(String key) {
    return container[key] as T;
  }

  @override
  void extend(String key, value) {
    container[key] = value;
  }
}