import 'package:flutter/material.dart';
import './tabs/app_tab.dart';
import './tabs/add_btn.dart';
// import 'package:flutter_svg/flutter_svg.dart';

var tabsList = <Widget>[
  const MainAppTab('assets/images/icons/task.png', 'Задачи', 38),
  const MainAppTab('assets/images/icons/bookmark.png', 'Поручения', 56),
  const AddBtn(),
  const MainAppTab('assets/images/icons/folder.png', 'Файлы', 51),
  const MainAppTab('assets/images/icons/More.png', 'Ещё', 38),
];
