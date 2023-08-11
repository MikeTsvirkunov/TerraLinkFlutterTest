import 'dart:convert' as convert;
import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/functions/builders/task_block_bulilder.dart';
import 'package:flutter_application_terra_link_test/pages/docs_page/top_bar_colapseable.dart';

class DocsPage extends StatefulWidget {
  const DocsPage({super.key});
  @override
  State<DocsPage> createState() => _DocsPageState();
}

class _DocsPageState extends State<DocsPage> {
  @override
  Widget build(BuildContext context) {
    var getKeyAuth = containerExtractiorFunction<Function>(funConatiner, 'getKeyAuth');
    var getTaskList = containerExtractiorFunction<Function>(funConatiner, 'getTaskList');
    var getPass = containerExtractiorFunction<Function>(funConatiner, 'getPass');
    // var getTaskListProcessor = containerExtractiorFunction<Function>(
    //     funConatiner, 'getTaskListProcessor');
    // var responesCodeProcessor = containerExtractiorFunction<Function>(
    //     funConatiner, 'responesCodeProcessor');
    Future<String> f() async {
      var acc = await getPass();
      var x =  await getKeyAuth(varConatiner['AuthLink'], acc['username'], acc['password'],);
      var x2 = await getTaskList(varConatiner['TaskLink'], x);
      return x2;
    }
    return const ColapseableAppBar();

    // return FutureBuilder<String>(
    //   future: f(), // function where you call your api
    //   builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
    //     // AsyncSnapshot<Your object type>
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return const Center(child: Text('Please wait its loading...'));
    //     } else {
    //       if (snapshot.hasError) {
    //         return Center(child: Text('Error: ${snapshot.error}'));
    //       } else {
    //         String a = snapshot.data ?? '{}';
    //         List<dynamic> x = ((convert.jsonDecode(a) as Map<String, dynamic>)['results']['value']['assignments']);
            
    //         return Container(
    //           width: double.maxFinite,
    //           height: double.maxFinite,
    //           color: Colors.amber,
    //           child: taskBlockBuilder(x[0]),
    //           // child: Text(
    //           //   'res: ${x[0]}'
    //           // )
    //         );
    //       }
    //     }
    //   },
    // );
  }
}
