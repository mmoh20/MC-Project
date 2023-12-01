import 'package:flutter/material.dart';
import 'package:mc_project/app/app_fonts.dart';

class TitleTextStyle extends StatelessWidget {
  String title;



  TitleTextStyle({super.key, required this.title, });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:  const TextStyle(
          color:Colors.black, fontSize: 20, fontWeight: FontWeight.w400,fontFamily:AppFonts.popMed),
    );
  }
}
