import 'package:flutter/material.dart';

Widget futureBuilderChecker(AsyncSnapshot snapshot, Function successProcessor){
  if (snapshot.connectionState == ConnectionState.waiting) {
    return const Center(child: Text('Please wait its loading...'));
  } else {
    if (snapshot.hasError) {
      return Center(child: Text('Error: ${snapshot.error}'));
    } else {
      return successProcessor(snapshot);
    }
  }
}