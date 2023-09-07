import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/web_view.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.model});

  final NewsModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: InkWell(
        onTap: () {
          var route = MaterialPageRoute(
              builder: ((context) =>
                  WebView(title: model.title, url: model.url)));
          Navigator.push(context, route);
        },
        child: Card(
          elevation: 10,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Expanded(
                child: Image(
                    image: NetworkImage(model.url),
                    fit: BoxFit.fill,
                    height: 100),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  flex: 3,
                  child: Text(
                    model.description,
                    style: GoogleFonts.acme(fontSize: 16),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
