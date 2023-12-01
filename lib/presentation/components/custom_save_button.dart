import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/app_colors.dart';
import '../../app/app_fonts.dart';
import '../../app/app_words.dart';

class CustomSaveButton extends StatelessWidget {
  const CustomSaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 101.w, vertical: 15.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24), color: AppColors.mainColor),
      child: const Text(
        AppWords.save,
        style: TextStyle(
            color: AppColors.wordColor,
            fontSize: 14,
            fontFamily: AppFonts.popMed,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
