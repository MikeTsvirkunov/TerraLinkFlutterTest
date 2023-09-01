import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page/task_watch_sections/pages/relations_page.dart/relation_doc_block.dart';

Widget relatedDocBlockBuilder(Map<String, dynamic> relatedDocParams){
  return RelationDocBlock(docName: relatedDocParams['name'], authorName: relatedDocParams['author'], docTitle: relatedDocParams['title']);
}