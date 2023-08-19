import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/file_display.dart';
// import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/header.dart';
import 'package:flutter_file_view/flutter_file_view.dart';
import 'package:flutter/src/gestures/tap.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'btn_block.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TaskWatchPage extends StatefulWidget {
  final String name;
  const TaskWatchPage(this.name, {super.key});
  @override
  State<TaskWatchPage> createState() => _TaskWatchPageState();
}

class _TaskWatchPageState extends State<TaskWatchPage> {
  late FileViewController x;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // FlutterFileView.init();
    x = FileViewController.asset('assets/files/FileTest.doc');
  }

  @override
  Widget build(BuildContext context) {
    // var x = FlutterFileView();
    var yourLink = 'http://www.africau.edu/images/default/sample.pdf';
    var controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
      ),
    )
    ..loadRequest(Uri.parse('https://docs.google.com/gview?embedded=true&url=$yourLink'));

    // FlutterFileView.init();
    // var x = FileView(controller: FileViewController.asset('assets/files/FileTest.txt'));
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {
              Navigator.pop(context);
            }, 
            child: const SizedBox(
              height: 100,
              child: Text(
                'К списку задач',
              ),
            ),
          )// TaskWatchHeader('К списку задач', widget.name)
        ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 110, 0, 0),
        width: double.maxFinite,
        child: WebViewWidget(controller: controller,) 
      ) // TaskWatchHeader('К списку задач', widget.name))
    );
  }
}
