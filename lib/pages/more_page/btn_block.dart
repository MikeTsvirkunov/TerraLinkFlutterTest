import 'package:flutter/material.dart';
import 'btn.dart';

class BTNsBlock extends StatefulWidget {
  const BTNsBlock({super.key});
  @override
  State<BTNsBlock> createState() => _BTNsBlockState();
}

class _BTNsBlockState extends State<BTNsBlock> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[BTN(Icon(Icons.person_outlined), 'Профиль')]
    );
  }
}


      //   TextButton(
      //     onPressed: ()=>{}, 
      //     child: const Row(
      //       children: [
      //         Icon(Icons.person_outlined), 
      //         Text('Профиль'), 
      //         Icon(Icons.navigate_next)
      //       ],
      //     )
      //   ),
      //   TextButton(
      //     onPressed: () => {},
      //     child: const Row(
      //       children: [
      //         Icon(Icons.person_outlined),
      //         Text('Профиль'),
      //         Icon(Icons.navigate_next)
      //       ],
      //     )
      //   )
      // ],
