import 'dart:collection';

import 'package:news_app/material/display_image.dart';
import 'package:news_app/material/videos.dart';
import 'package:news_app/models/videos_model.dart';

class VideosController {
  static final List<VideosModel> _videos = [
    VideosModel(title: "Palestine", videoUrl: videos.palestine, imageUrl: DisplayImage.palestine,),
    VideosModel(title: "Brazil", videoUrl: videos.brazil, imageUrl: DisplayImage.brazil,),
    VideosModel(title: "Algeria", videoUrl: videos.algeria, imageUrl: DisplayImage.algeria,),
    VideosModel(title: "India", videoUrl: videos.india, imageUrl: DisplayImage.india,),
    VideosModel(title: "Jordan", videoUrl: videos.jordan, imageUrl: DisplayImage.jordan,),
    VideosModel(title: "Japan", videoUrl: videos.japan, imageUrl: DisplayImage.japan,),
    VideosModel(title: "Oman", videoUrl: videos.oman, imageUrl: DisplayImage.oman,),
    VideosModel(title: "Portugal", videoUrl: videos.portugal, imageUrl: DisplayImage.portugal,),
    VideosModel(title: "Yemen", videoUrl: videos.yemen, imageUrl: DisplayImage.yemen,),
    VideosModel(title: "Switzerland", videoUrl: videos.switzerland, imageUrl: DisplayImage.switzerland,),
    
  ];

   static int get dataLength=> _videos.length;
  static VideosModel getVideo(int index)=> _videos.elementAt(index);
  static UnmodifiableListView<VideosModel> get dataList =>
  UnmodifiableListView(_videos);
}
