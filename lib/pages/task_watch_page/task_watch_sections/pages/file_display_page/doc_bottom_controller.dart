import 'dart:async';
import 'package:flutter/material.dart';

class DocBottomController extends StatefulWidget {

  const DocBottomController({super.key});
  
  @override
  State<DocBottomController> createState() => _DocBottomControllerState();
}

class _DocBottomControllerState extends State<DocBottomController> {
  late Future<List<String>> filePathes;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          const Spacer(flex: 2,),
          Flexible(flex: 45, fit: FlexFit.tight, child: TextButton(
            style: const ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
              backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 210, 35, 60)),
              foregroundColor: MaterialStatePropertyAll(Colors.white)
            ),
            onPressed: (){}, 
            child: const FittedBox(child: Icon(Icons.check))
          )),
          const Spacer(flex: 2,),
          Flexible(flex: 45, fit: FlexFit.tight, child: TextButton(
            style: const ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
              foregroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 128, 130, 133)),
              side: MaterialStatePropertyAll(BorderSide(color: Color.fromARGB(255, 128, 130, 133)))
            ),
            onPressed: (){}, 
            child: const  FittedBox(child: Icon(Icons.close))
          )),
          const Spacer(flex: 2,),
          Flexible(
            flex: 16, 
            child: TextButton(
              onPressed: (){}, 
              style: const ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                foregroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 128, 130, 133)),
                side: MaterialStatePropertyAll(BorderSide(color: Color.fromARGB(255, 128, 130, 133)))
              ),
              child: const FittedBox(child: Icon(Icons.format_align_left_sharp))
            )
          ),
          const Spacer(flex: 2,),
        ]
      )
    );
  }
}


