import 'package:flutter/material.dart';

class AddBtn extends StatefulWidget {
  const AddBtn({super.key});
  @override
  State<AddBtn> createState() => _AppBtnState();
}

class _AppBtnState extends State<AddBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 48,
      alignment: AlignmentDirectional.topStart,
      child: TextButton(
        onPressed: () => {},
        style: ButtonStyle(
          
          alignment: Alignment.center,
          backgroundColor: const MaterialStatePropertyAll<Color>(
              Color.fromARGB(255, 210, 35, 60)),
          foregroundColor:
              const MaterialStatePropertyAll<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          )),
        ),
        child: const Text(
          '+',
          maxLines: 1,
          style: TextStyle(
            
            fontSize: 25,
            height: 0,
          ),
        ),
      )
    );
  }
}
