import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderSearchBar extends StatefulWidget {
  final Function(String)? fun;
  const HeaderSearchBar(this.fun, {super.key});
  @override
  State<HeaderSearchBar> createState() => _HeaderSearchBarState();
}

class _HeaderSearchBarState extends State<HeaderSearchBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const  EdgeInsets.fromLTRB(0, 0, 0, 0),
          alignment: AlignmentDirectional.bottomCenter,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromARGB(255, 240, 242, 245),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.71, 
                child: const SearchBar(
                  hintText: ' Поиск',
                  leading: Icon(Icons.search),
                  textStyle: MaterialStatePropertyAll(TextStyle()),
                  surfaceTintColor: MaterialStatePropertyAll(Color.fromARGB(0, 240, 242, 245)),
                  overlayColor: MaterialStatePropertyAll(Color.fromARGB(0, 240, 242, 245)),
                  backgroundColor: MaterialStatePropertyAll(Color.fromARGB(0, 240, 242, 245)),
                  shadowColor: MaterialStatePropertyAll(Color.fromARGB(0, 0, 0, 0)),
                )
              ),
              SizedBox(
                height: 80,
                width: MediaQuery.of(context).size.width * 0.08,
                child: IconButton(
                  padding: const EdgeInsetsDirectional.all(0),
                  icon: const Icon(Icons.mic),
                  onPressed: (){},
                )
              )
            ]
          )
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.12,
          child: IconButton(
            onPressed: (){}, 
            icon: SvgPicture.asset(
              'assets/images/icons/filter.svg',
              width: 30,
              height: 30,
            )
          )
        )
      ]
    )
  );
  }
}
