import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/more_page/profile_block.dart';

ProfileBlock profileBlockBuilder(Map<String, dynamic> profileDescription){

  var x = Image.network(
    'http://ot-lo-be-dev1.ot.dev.local/otcs/llisapi.dll/cs/api/v1/members/${profileDescription["id"]}/photo/', 
    width: 50, 
    height: 50, 
    errorBuilder: (_, __, ___) => const Icon(Icons.person, size: 50) 
  );
  return ProfileBlock(x, profileDescription['display_name']);
}
