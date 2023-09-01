import 'package:flutter/material.dart';
import './tabs/app_tab.dart';
import './tabs/add_btn.dart';
// import 'package:flutter_svg/flutter_svg.dart';
double? x = 100;
var tabsList = <Widget>[
  MainAppTab('assets/images/icons/task.png', 'Задачи', x),
  MainAppTab('assets/images/icons/bookmark.png', 'Поручения', x),
  const AddBtn(),
  MainAppTab('assets/images/icons/folder.png', 'Файлы', x),
  MainAppTab('assets/images/icons/More.png', 'Ещё', x),
];
