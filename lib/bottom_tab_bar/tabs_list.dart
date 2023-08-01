import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

var tabsList = <Widget>[
  const Tab(
    icon: ImageIcon(AssetImage('assets/images/icons/task.png')),
    text: 'Задачи',
  ),
  const Tab(
    icon: ImageIcon(AssetImage('assets/images/icons/bookmark.png')),
    text: 'Поручения',
  ),
  Tab(
      child: TextButton(
          onPressed: () => {},
          style: ButtonStyle(
            alignment: Alignment.center,
            backgroundColor: const MaterialStatePropertyAll<Color>(
                Color.fromARGB(255, 210, 35, 60)),
            foregroundColor:
                const MaterialStatePropertyAll<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              // side: BorderSide(color: Colors.red)
            )),
            // fixedSize: const MaterialStatePropertyAll(Size(36, 36))
          ),
          child: 
          const Text(
            'asd',
            style: TextStyle(fontSize: 10),
          ),
          )
      // Container(
      //   decoration: const BoxDecoration(
      //     borderRadius: BorderRadius.all(Radius.circular(10)),
      //     color: Color.fromARGB(255, 210, 35, 60)

      //   ),
      //   child: const Siz
      //edBox(height: 36, width: 36, child: Text('+')),
      // )
      ),
  const Tab(
    icon: ImageIcon(AssetImage('assets/images/icons/folder.png')),
    text: 'Файлы',
  ),
  const Tab(
    icon: ImageIcon(AssetImage('assets/images/icons/More.png')),
    text: 'Ещё',
    
  ),
];
