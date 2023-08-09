import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
import 'package:flutter_application_terra_link_test/containers/global_vars.dart';
import 'dart:convert' as convert;
import 'package:flutter_application_terra_link_test/functions/builders/task_block_bulilder.dart';
import 'package:flutter_application_terra_link_test/pages/task_page/horizontall_container/horizontal_container.dart';

class TaskContainer extends StatefulWidget {
  final ScrollController contr;
  // final List<Widget> listOfTasks;
  const TaskContainer(this.contr, {super.key});
  @override
  State<TaskContainer> createState() => _TaskContainerState();
}

Future<List<Widget>> f() async {
  var getKeyAuth =
      containerExtractiorFunction<Function>(funConatiner, 'getKeyAuth');
  var getTaskList =
      containerExtractiorFunction<Function>(funConatiner, 'getTaskList');
  var getPass = containerExtractiorFunction<Function>(funConatiner, 'getPass');
  var acc = await getPass();
  var x = await getKeyAuth(
    varConatiner['AuthLink'],
    acc['username'],
    acc['password'],
  );
  var x2 = await getTaskList(varConatiner['TaskLink'], x);
  List<dynamic> x3 = ((convert.jsonDecode(x2)
      as Map<String, dynamic>)['results']['value']['assignments']);
  List<Widget> k = [];
  for (var e in x3) {
    k.add(taskBlockBuilder(e));
  }
  return k;
}

class _TaskContainerState extends State<TaskContainer> {

  late Future<List<Widget>> _dataFuture;

  @override
  void initState() {
    super.initState();
    _dataFuture = f();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: widget.contr,
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 100),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: FutureBuilder(
          future: _dataFuture, 
          builder: (BuildContext context, AsyncSnapshot<List<Widget>> snapshot) {
        // AsyncSnapshot<Your object type>
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: Text('Please wait its loading...'));
            } else {
              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                List<Widget> m = [];
                return Column(children: <Widget>[
                  Container(
                    color: const Color.fromARGB(255, 240, 242, 245),
                    width: double.maxFinite,
                    height: 120,
                    child: const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment:
                            CrossAxisAlignment.center,
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          TaskCounterBlock('Согласование', '6',
                              'assets/images/icons/Union.png'),
                          TaskCounterBlock('Согласование', '6',
                              'assets/images/icons/Union.png'),
                          TaskCounterBlock('Согласование', '6',
                              'assets/images/icons/Union.png'),
                        ],
                      ),
                    ),
                  ),
                ] + (snapshot.data ?? m));
              }
            }
          },
        ) 
        // Column(children: k)
      )
    );
  }  
}
