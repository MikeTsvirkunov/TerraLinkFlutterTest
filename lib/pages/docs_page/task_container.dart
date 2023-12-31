import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';

class TaskContainer extends StatefulWidget {
  final ScrollController contr;
  // final List<Widget> listOfTasks;
  const TaskContainer(this.contr, {super.key});
  @override
  State<TaskContainer> createState() => _TaskContainerState();
}


class _TaskContainerState extends State<TaskContainer> {
  
  late Future<List<dynamic>> _dataFuture;

  @override
  void initState() {
    super.initState();
    _dataFuture = containerExtractiorFunction<Function>(funConatiner, 'getJsonTasksList')();
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
          builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
            return containerExtractiorFunction<Function>(
              funConatiner, 
              'futureBuilderChecker'
            )(
              snapshot, 
              containerExtractiorFunction<Function>(
                funConatiner, 
                'successTasksRequestFutureBuilderProcessor'
              )
            );
          },
        ) 
      )
    );
  }  
}
