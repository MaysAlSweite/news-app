import 'package:flutter/material.dart';
import 'package:news_app/cards/news_card.dart';
import 'package:news_app/controllers/news_controller.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: NewsController.dataLength,
    itemBuilder: (context, index) {
      return NewsCard(model: NewsController.dataList[index]);
    });
  }
}