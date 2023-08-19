import 'package:flutter/material.dart';
import 'bottom_tab_bar/bottom_tab_bar.dart';
import 'package:flutter_file_view/flutter_file_view.dart';

import 'package:flutter_localizations/flutter_localizations.dart';




void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  // ignore: public_member_api_docs
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // FlutterFileView.init();
  }

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


