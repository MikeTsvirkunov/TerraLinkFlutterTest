import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PDFScreen extends StatefulWidget {
  final String? path;

  const PDFScreen({Key? key, this.path}) : super(key: key);

  @override
  State<PDFScreen> createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> with WidgetsBindingObserver {
  final Completer<PDFViewController> _controller = Completer<PDFViewController>();
  int? pages = 0;
  int nowPage = 0;
  int? currentPage = 0;
  bool isReady = false;
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: <Widget>[
          PDFView(
            filePath: widget.path,
            enableSwipe: true,
            swipeHorizontal: false,
            autoSpacing: false,
            pageFling: true,
            pageSnap: true,
            fitEachPage: true,
            defaultPage: currentPage!,
            fitPolicy: FitPolicy.WIDTH,
            preventLinkNavigation: false, // if set to true the link is handled in flutter
            onRender: (pages) {
              setState(() {
                this.pages = pages;
                isReady = true;
              });
            },
            onError: (error) {
              setState(() {
                errorMessage = error.toString();
              });
              if (kDebugMode) {
                print(error.toString());
              }
            },
            onPageError: (page, error) {
              setState(() {
                errorMessage = '$page: ${error.toString()}';
              });
              if (kDebugMode) {
                print('$page: ${error.toString()}');
              }
            },
            onViewCreated: (PDFViewController pdfViewController) {
              _controller.complete(pdfViewController);
            },
            onLinkHandler: (String? uri) {
              if (kDebugMode) {
                print('goto uri: $uri');
              }
            },
            onPageChanged: (int? page, int? total) {
              if (kDebugMode) {
                print('page change: $page/$total');
              }
              setState(() {
                currentPage = page;
              });
            },
          ),
          errorMessage.isEmpty
              ? !isReady
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Container()
              : Center(
                  child: Text(errorMessage),
                )
        ],
      ),
      floatingActionButton: FutureBuilder<PDFViewController>(
        future: _controller.future,
        builder: (context, AsyncSnapshot<PDFViewController> snapshot) {
          if (snapshot.hasData) {
            return Container(
              margin: const EdgeInsets.fromLTRB(32, 50, 0, 0),
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(0), 
              width: double.maxFinite,
              child: Container(
                width: 25+(currentPage!.toString().length.toDouble() + pages!.toString().length.toDouble())*10,
                height: 40,
                transformAlignment: AlignmentDirectional.center,
                padding: EdgeInsetsDirectional.all(10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color.fromARGB(255, 51, 51, 51),
                ),
                alignment: AlignmentDirectional.center,
                child: Text(
                  '$currentPage/$pages',
                  maxLines: 1,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    overflow: TextOverflow.clip,
                    backgroundColor: Colors.amber
                  ),
                ),
              )
            );
          }
          return Container();
        },
      ),
    );
  }
}
