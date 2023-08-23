import 'package:flutter/material.dart';

Widget requisitesPageBuilder(BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot){
  
  return const SingleChildScrollView(
    child: Column(
      children: [
        ExpansionTile(title: Text('BlaBla'))
      ]
    ),
  );
}