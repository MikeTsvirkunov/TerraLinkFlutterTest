T containerExtractiorFunction<T>(Map container, String key) {
  if (container.containsKey(key)) {
    return container[key] as T;
  } else {
    throw Exception('The key $key doesn\'t exist in container');
  }
}
