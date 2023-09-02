import 'dart:collection';
import 'dart:typed_data';

import 'package:news_app/models/news_model.dart';
import '../material/descriptions.dart';
import '../material/images.dart';

class NewsController {
  static final List<NewsModel> _news = [
    NewsModel(title: 'Nasa', description: Descriptions.item1, url: Images.item1),
    NewsModel(title: 'Covid 19', description: Descriptions.item2, url: Images.item2),
    NewsModel(title: 'Amazon', description: Descriptions.item3, url: Images.item3),
    NewsModel(title: 'Bitcoin', description: Descriptions.item4, url: Images.item4),
    NewsModel(title: 'Wildfires', description: Descriptions.item5, url: Images.item5),
    NewsModel(title: 'Scientists', description: Descriptions.item6, url: Images.item6),
    NewsModel(title: 'Tokyo Summer Olympics', description: Descriptions.item7, url: Images.item7),
    NewsModel(title: 'Jeff Bezo', description: Descriptions.item8, url: Images.item8),
    NewsModel(title: 'Protests', description: Descriptions.item9, url: Images.item9),
    NewsModel(title: 'Scientists', description: Descriptions.item10, url: Images.item10),
  ];

  static int get dataLength=> _news.length;
  static NewsModel getNews(int index)=> _news.elementAt(index);
  static UnmodifiableListView<NewsModel> get dataList =>
  UnmodifiableListView(_news);
}
