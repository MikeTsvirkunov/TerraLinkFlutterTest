// import 'package:flutter/material.dart';
// import 'dart:typed_data';

// import 'package:file_picker/file_picker.dart';
// import 'package:flutter_file_view/flutter_file_view.dart';
// import 'dart:async';

// import 'package:open_file/open_file.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// // import 'page_file_view.dart';


// class TaskWatchHeader extends StatefulWidget {
//   final String backText;
//   final String name;
//   const TaskWatchHeader(this.backText, this.name, {super.key});
//   @override
//   State<TaskWatchHeader> createState() => _TaskWatchHeaderState();
// }

// class _TaskWatchHeaderState extends State<TaskWatchHeader> {
  
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: Column(
//         children: [
//           TextButton(
//             onPressed: (){

//             }, 
//             child: 
//             Row(
//               children: [
//                 const Icon(Icons.chevron_left_rounded),
//                 Text(
//                   widget.backText,
//                   style: const TextStyle(
//                     color: Color.fromARGB(255, 243, 0, 52)
//                   ),
//                 ),
//               ]
//             )
//           ),
//           Text(
//             widget.name,
//             style: const TextStyle(
//               fontSize: 50,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//           MyApp(),
//         ]
//       ),
//     );
//   }
// }


// class MyApp extends StatefulWidget {
//   // ignore: public_member_api_docs
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   void initState() {
//     FlutterFileView.init();

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       localizationsDelegates: <LocalizationsDelegate<dynamic>>[
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//         FileViewLocalizationsDelegate.delegate,
//       ],
//       supportedLocales: <Locale>[Locale('en', 'US'), Locale('zh', 'CN')],
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

// // ignore: public_member_api_docs
// class HomePage extends StatefulWidget {
//   // ignore: public_member_api_docs
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List<String> files = <String>[
//     'FileTest.docx',
//     'FileTest.doc',
//     'FileTest.xlsx',
//     'FileTest.xls',
//     'FileTest.pptx',
//     'FileTest.ppt',
//     'FileTest.pdf',
//     'FileTest.txt',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('File View')),
//       body: _buildBodyWidget(),
//     );
//   }

//   Widget _buildBodyWidget() {
//     return ListView.builder(
//       itemCount: files.length,
//       itemBuilder: (BuildContext context, int index) {
//         final String filePath = files[index];
//         String fileShowText = '';

//         final int i = filePath.lastIndexOf('/');
//         if (i <= -1) {
//           fileShowText = filePath;
//         } else {
//           fileShowText = filePath.substring(i + 1);
//         }

//         final Widget child = ElevatedButton(
//           onPressed: () {
//             FileViewController? controller;

//             if (filePath.contains('http://') || filePath.contains('https://')) {
//               controller = FileViewController.network(filePath);
//             } else {
//               controller = FileViewController.asset('assets/files/$filePath');
//             }

//             Navigator.of(context).push(
//               MaterialPageRoute<void>(
//                 builder: (_) => FileViewPage(controller: controller!),
//               ),
//             );
//           },
//           child: Text(fileShowText),
//         );

//         return Container(
//           margin: const EdgeInsets.only(top: 10),
//           padding: const EdgeInsets.symmetric(horizontal: 15),
//           child: child,
//         );
//       },
//     );
//   }
// }

// class FileViewPage extends StatefulWidget {
//   // ignore: public_member_api_docs
//   const FileViewPage({Key? key, required this.controller}) : super(key: key);

//   /// The [FileViewController] responsible for the file being rendered in this
//   /// widget.
//   final FileViewController controller;

//   @override
//   State<FileViewPage> createState() => _FileViewPageState();
// }

// class _FileViewPageState extends State<FileViewPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('文档')),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: FileView(
//               controller: widget.controller,
//               onCustomViewStatusBuilder: (_, ViewStatus status) {
//                 if (status == ViewStatus.LOADING) {
//                   /// 加载中的状态布局，红色背景一闪而过。
//                   return Container(color: Colors.red);
//                 }

//                 return null;
//               },
//               onCustomX5StatusBuilder: (_, X5Status status) {
//                 if (status == ViewStatus.LOADING) {
//                   /// 加载中的状态布局，红色背景一闪而过。
//                   return Container(color: Colors.red);
//                 }

//                 return null;
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
