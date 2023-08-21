import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar
 extends StatelessWidget implements PreferredSizeWidget{
   CustomAppBar
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      title: Text('ABC News',style: GoogleFonts.belgrano(color: Colors.blue.shade900),),
      elevation: 10,
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
  @override 
   final Size preferredSize=Size.fromHeight(AppBar().preferredSize.height); 

}