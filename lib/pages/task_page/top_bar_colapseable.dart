import 'package:flutter/material.dart';
import './horizontal_scroll_bar.dart';
import 'package:flutter_application_terra_link_test/pages/task_page/task_container.dart';

class ColapseableAppBar extends StatefulWidget {
  const ColapseableAppBar({super.key});
  @override
  State<ColapseableAppBar> createState() => _ChangingAppBarState();
}

class _ChangingAppBarState extends State<ColapseableAppBar> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
          children: [ 
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              alignment:  _scrollPosition == 0 ? Alignment.topLeft : Alignment.topCenter,
              child: Wrap(
                children: [
                  Text(
                    'Задачи', 
                    style: TextStyle(
                      fontSize: _scrollPosition == 0 ? 20 : 10,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  SizedBox(
                    height: 0,
                    child: IconButton(
                      onPressed: ()=>{},
                      padding: const EdgeInsets.all(0),
                      icon: Icon(Icons.autorenew, size: _scrollPosition == 0 ? 20 : 10, color: const Color.fromARGB(255, 210, 35, 60)),
                    )
                  )
                ],
              )
            ),
            const SizedBox(
              height: 40,
              child: SearchBar(
                hintText: 'Search',
              )
            ),
          ]
        ),
      ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 238, 240, 244),
        ),
        child: TaskContainer(_scrollController)
      )
      // ListView(
        // controller: _scrollController,
        // children: [],
        // itemCount: 20,
        // itemBuilder: (context, index) {
        //   return ListTile(
        //     title: Text('Item: $index'),
        //   );
        // },
      // ),
    );
  }
}
