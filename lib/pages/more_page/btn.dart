import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BTN extends StatefulWidget {
  final String text;
  final String icon;
  const BTN(this.icon, this.text, {super.key});
  @override
  State<BTN> createState() => _BTNState();
}

class _BTNState extends State<BTN> {
  bool x = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: double.maxFinite,
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 0.1,
            blurRadius: 7,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: TextButton(
        onPressed: () => {
            // x = true
            Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => const CupertinoPageScaffold(
              child: Center(child: Text(
                'On development',
                style: TextStyle(color: Colors.black, decoration: TextDecoration.none, fontSize: 20),
              )),
            )
          )
        )
        },
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Colors.white),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  // x = 
                return !states.contains(MaterialState.pressed)
                    ? const Color.fromARGB(255, 210, 35, 60)
                    : Colors.white;
                }
              ),
          shape: const MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            )
          ),
          overlayColor: const MaterialStatePropertyAll(Color.fromARGB(255, 170, 0, 24)),
          // foregroundColor: 
        ),

        child: SizedBox(
          height: 50,
          child: Row(
            children: [
              Padding(padding: const EdgeInsets.all(5), child: ImageIcon(AssetImage(widget.icon), size: 23,)), // color: x ? Colors.white : const Color.fromARGB(255, 170, 0, 24),)),
              const SizedBox(width: 10,),
              Text(widget.text, style: const TextStyle(),),
              const Spacer(),
              const Icon(
                Icons.navigate_next, 
                // color: x ? Colors.white : const Color.fromARGB(255, 209, 209, 214), 
                size: 30,
              )
            ],
          )
        )
      ),
    );
  }
}
