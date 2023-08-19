import 'package:flutter/material.dart';
import 'bottom_tab_bar/bottom_tab_bar.dart';
import 'package:flutter_file_view/flutter_file_view.dart';

import 'package:flutter_localizations/flutter_localizations.dart';




void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // FlutterFileView.init();
    return MaterialApp(
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        // ViewerLocalizationsDelegate.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FileViewLocalizationsDelegate.delegate,
      ],
      theme: ThemeData(useMaterial3: true),
      home: const BottomTabBar(),
    );
  }
}


