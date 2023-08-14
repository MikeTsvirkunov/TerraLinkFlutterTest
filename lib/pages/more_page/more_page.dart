import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'btn_block.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});
  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  late Future<Map<String, dynamic>> _dataFuture;
  
  @override
  void initState() {
    super.initState();
    _dataFuture = containerExtractiorFunction<Function>(funConatiner, 'getJsonProfileMap')();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color.fromARGB(255, 238, 240, 244)),
        child: Column(
          children: <Widget>[
            const Spacer(),
            FutureBuilder(
              future: _dataFuture,
              builder: (BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
                var futureBuilderChecker = containerExtractiorFunction<Function>(funConatiner, 'futureBuilderChecker');
                var successAuthRequestFutureBuilderProcessor = containerExtractiorFunction<Function>(funConatiner, 'successAuthRequestFutureBuilderProcessor');
                return futureBuilderChecker(snapshot, successAuthRequestFutureBuilderProcessor);
              }
            ),
            // ProfileBlock(),
            const Spacer(), 
            const BTNsBlock()
          ]
        ),
      )
    );
  }
}
