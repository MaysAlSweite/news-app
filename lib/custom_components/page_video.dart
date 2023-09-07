import 'package:flutter/material.dart';
import 'package:news_app/cards/video_card.dart';
import 'package:news_app/controllers/videos_controller.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: VideosController.dataLength,
    itemBuilder: (context, index) {
      return VideoCard(model: VideosController.dataList[index]);
    });
  }
}