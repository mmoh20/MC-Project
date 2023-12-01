import 'package:flutter/material.dart';
import 'package:mc_project/app/app_fonts.dart';

class MainTextStyle extends StatelessWidget {
  String title;
  double? size;
  Color? cl;
  FontWeight? weight ;

  MainTextStyle({super.key, required this.title, this.size,this.cl,this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: size ?? 16,
          fontWeight:weight?? FontWeight.w400,
          fontFamily: AppFonts.popMed,
          color: cl ?? Colors.black),
    );
  }
}
