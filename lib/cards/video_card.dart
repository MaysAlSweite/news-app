import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/videos_model.dart';
import 'package:news_app/web_view.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({super.key, required this.model});
  final VideosModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),


      child: InkWell(
        onTap: () {
          var route = MaterialPageRoute(
            builder: (context) => WebView(
              title: model.title,
              url: model.videoUrl,
            ),
          );
          Navigator.push(context, route);
        },


        child: Card(
          elevation: 10,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Image(
                    image: NetworkImage(model.imageUrl),
                    width: double.infinity,
                    fit: BoxFit.fill,
                  )),
              Expanded(
                  flex: 1,
                  child: Center(
                      child: Text(
                    model.title,
                    style: GoogleFonts.aladin(fontSize: 20),
                  )))
            ],
          ),
        ),
      ),
    );
  }
}
