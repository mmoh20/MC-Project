import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mc_project/app/app_colors.dart';
import 'package:mc_project/app/app_fonts.dart';
import 'package:mc_project/app/app_words.dart';

class CustomVerifyButton extends StatelessWidget {
  const CustomVerifyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 101.w, vertical: 15.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24), color: AppColors.mainColor),
      child: Text(
        AppWords.verify,
        style: const TextStyle(
            color: AppColors.wordColor,
            fontSize: 14,
            fontFamily: AppFonts.popMed,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
