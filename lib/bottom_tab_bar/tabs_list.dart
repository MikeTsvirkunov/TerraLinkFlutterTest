import 'package:flutter/material.dart';
import './tabs/app_tab.dart';
import './tabs/add_btn.dart';
import 'package:flutter_svg/flutter_svg.dart';

double? x = 100;
var tabsList = <Widget>[
  // Tab(
  //   // text: 'Задачи',
  //   icon: SvgPicture.asset(
  //     'assets/images/icons/task.svg',
  //     width: 30,
  //     height: 30,
  //   ),
  //   child: const FittedBox(child: Text('Задачи')),
  // ),
  // Tab(
  //   // text: 'Задачи',
  //   icon: SvgPicture.asset(
  //     'assets/images/icons/bookmark.svg',
  //     width: 30,
  //     height: 30,
  //   ),
  //   child: const FittedBox(child: Text('Поручения')),
  // ),
  // const AddBtn(),
  // Tab(
  //   // text: 'Задачи',
  //   icon: SvgPicture.asset(
  //     'assets/images/icons/folder.svg',
  //     width: 30,
  //     height: 30,
  //   ),
  //   child: const FittedBox(child: Text('Файлы')),
  // ),
  // Tab(
  //   // text: 'Задачи',
  //   icon: SvgPicture.asset(
  //     'assets/images/icons/more.svg',
  //     width: 30,
  //     height: 30,
  //   ),
  //   child: const FittedBox(child: Text('Ещё')),
  // ),
  MainAppTab('assets/images/icons/task.png', 'Задачи', x),
  MainAppTab('assets/images/icons/bookmark.png', 'Поручения', x),
  const AddBtn(),
  MainAppTab('assets/images/icons/folder.png', 'Файлы', x),
  MainAppTab('assets/images/icons/More.png', 'Ещё', x),
];
