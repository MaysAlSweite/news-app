import 'package:flutter/material.dart';
import 'package:news_app/custom_components/page_news.dart';
import 'package:news_app/custom_components/page_video.dart';

import 'custom_appbar.dart';
import 'custom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _page=[NewsPage(),VideoPage()];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(),
      body: _page[index],
      bottomNavigationBar: CustomNavigationBar(
        index: index,
        onClick: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}