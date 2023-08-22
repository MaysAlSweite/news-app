import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar(
      {super.key, required this.index, required this.onClick});

  final int index;
  final Function(int) onClick;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      items: const [Icon(Icons.article), Icon(Icons.ondemand_video)],
      index: index,color: Colors.blue.shade900,
      onTap: (value) {
        onClick(value);
      },
    );
  }
}
