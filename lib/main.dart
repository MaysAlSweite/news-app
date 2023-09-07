import 'package:flutter/material.dart';
import 'package:news_app/custom_components/home_screen.dart';
//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//import 'package:google_fonts/google_fonts.dart';
void main(List<String> args) {
  runApp(const NewsApp());
}
class NewsApp
 extends StatelessWidget {
  const NewsApp
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: HomeScreen(),
      

    );
  }
}