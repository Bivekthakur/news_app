import 'package:flutter/material.dart';
import 'package:newsapp/config/netwok/network_page.dart';

class TechCrunchNews extends StatefulWidget {
  const TechCrunchNews({super.key});

  @override
  State<TechCrunchNews> createState() => _TechCrunchNewsState();
}

class _TechCrunchNewsState extends State<TechCrunchNews> {
  @override
  Widget build(BuildContext context) {
    NetworkRequest.getTechCrunchNews();
    return  Scaffold(
      body: ListView(
        children: [
          Text('Tech news'),
        ],
      ),
    );
  }
}
