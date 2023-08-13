import 'package:flutter/material.dart';
import 'top_bar_colapseable.dart';

class DocsPage extends StatefulWidget {
  const DocsPage({super.key});
  @override
  State<DocsPage> createState() => _DocsPageState();
}

class _DocsPageState extends State<DocsPage> {
  @override
  Widget build(BuildContext context) {
    return const ColapseableAppBar();
  }
}
