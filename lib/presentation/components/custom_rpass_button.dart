import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/app_colors.dart';
import '../../app/app_fonts.dart';
import '../../app/app_images.dart';
import '../../app/app_words.dart';
import 'custom_done_button.dart';

class CustomRPassButton extends StatelessWidget {
  const CustomRPassButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r)),
                contentPadding:
                    EdgeInsets.symmetric(horizontal:35.w, vertical: 40.h),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      AppWords.congratulations,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontFamily: AppFonts.popMed),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    const Text(
                      AppWords.congSlogan,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 14, fontFamily: AppFonts.popMed),
                    ),
                    SizedBox(
                      height: 31.h,
                    ),
                    Image.asset(
                      AppImages.correct_phone,
                      width: 237,
                      height: 248,
                    ),
                    SizedBox(
                      height: 39.h,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const CustomDoneButton(),
                    )
                  ],
                ),
              );
            });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 101.w, vertical: 15.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: AppColors.mainColor),
        child: Text(
          AppWords.rPass,
          style: const TextStyle(
              color: AppColors.wordColor,
              fontSize: 14,
              fontFamily: AppFonts.popMed,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
