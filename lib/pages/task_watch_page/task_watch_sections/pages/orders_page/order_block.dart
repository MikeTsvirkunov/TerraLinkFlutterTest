import 'package:flutter/material.dart';
import 'package:flutter_application_terra_link_test/container_extractor_function.dart';
import 'package:flutter_application_terra_link_test/containers/global_functions.dart';
// import 'package:flutter_application_terra_link_test/pages/task_watch_page.dart/task_watch_sections/pages/requisites_page/common_requisites_block.dart';

class OrderBlock extends StatefulWidget {
  final String docName;
  final String? taskName;
  final String? author;
  final String? executor;
  final String? dateDue;
  final String? dateReady;
  final String? title;
  final List? innerDocs;
  const OrderBlock({Key? key, required this.docName, this.taskName, this.author, this.executor, this.dateDue, this.title, this.dateReady, this.innerDocs}) : super(key: key);
  @override
  State<OrderBlock> createState() => _OrderBlockState();
}

class _OrderBlockState extends State<OrderBlock> {
  @override
  Widget build(BuildContext context) {
    // if (widget.innerDocs != null || widget.innerDocs!.isNotEmpty){
    //   var x = 
    // }
    return ExpansionTile(
      shape: const Border(
        bottom: BorderSide(
          color: Color.fromARGB(255, 240, 242, 245)
        )
      ),
      collapsedShape: const Border(
        bottom: BorderSide(
          width: 2,
          color: Color.fromARGB(255, 240, 242, 245)
        )
      ),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      tilePadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      collapsedIconColor: const Color.fromARGB(255, 151, 162, 187),
      iconColor: const Color.fromARGB(255, 151, 162, 187),
      childrenPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      // trailing: Icon(Icons.keyboard_arrow_down_outlined),
      title: Text(
        widget.docName,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Название поручения',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                )
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 240, 242, 245),
                  borderRadius: BorderRadius.all(Radius.circular(100))
                ),
                child: Text(
                  widget.taskName != null ? widget.taskName! :  'Не указано',
                  textScaler: const TextScaler.linear(0.6),
                  style: const TextStyle(
                  fontSize: 18,
                )
                ),
              )
            ],
          ),
          const SizedBox(height: 5,),
          Text(
            'Автор: ${widget.author ?? "Не указан"}',
            style: const TextStyle(
              color: Color.fromARGB(255, 128, 130, 133)
            ),
          ),
          Text(
            'Исполнитель: ${widget.executor ?? "Не указан"}',
            style: const TextStyle(
              color: Color.fromARGB(255, 128, 130, 133)
            ),
          ),
          const SizedBox(height: 5,),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(containerExtractiorFunction(funConatiner, 'converterDateTimeToStringInOrdersOfWatchingTask')(widget.dateDue)),
                  const Text(
                    'Контрольная дата',
                    textScaler: TextScaler.linear(0.9),
                    style: TextStyle(
                      color: Color.fromARGB(255, 128, 130, 133)
                    ),
                  )
                ],
              ),
              Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(containerExtractiorFunction(funConatiner, 'converterDateTimeToStringInOrdersOfWatchingTask')(widget.dateReady)),
                  const Text(
                    'Фактическая дата',
                    textScaler: TextScaler.linear(0.9),
                    style: TextStyle(
                      color: Color.fromARGB(255, 128, 130, 133)
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 5,),
          Text(
            widget.title != null ? widget.title! : 'Нет', 
            overflow: TextOverflow.ellipsis, 
            softWrap: false,
          )
      ],
    );
  }
}
