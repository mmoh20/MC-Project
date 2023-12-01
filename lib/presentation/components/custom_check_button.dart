import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/app_colors.dart';
import '../../app/app_fonts.dart';
import '../../app/app_images.dart';
import '../../app/app_words.dart';
import 'custom_done_button.dart';
import 'main_text_style.dart';

class CustomCheckButton extends StatelessWidget {
  const CustomCheckButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30.r)),
              backgroundColor: AppColors.bgColor,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MainTextStyle(
                    title: AppWords.congratulations,
                    size: 20,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text(
                    AppWords.yourAnalysisAreNegative,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Image.asset(
                    AppImages.book,
                    width: 237.w,
                    height: 237.h,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 40.w, vertical: 20.h),
                              backgroundColor: AppColors.bgColor,
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.r)),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  MainTextStyle(
                                    title: AppWords.unfortunately,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  MainTextStyle(
                                    title: AppWords.yourAnalysisArePositive,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    height: 40.h,
                                  ),
                                  Image.asset(
                                    AppImages.sad,
                                    width: 237.w,
                                    height: 237.h,
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  InkWell(
                                    onTap: () {Navigator.pop(context);},
                                    child: const CustomDoneButton(),
                                  )
                                ],
                              ),
                            );
                          });
                    },
                    child: const CustomDoneButton(),
                  )
                ],
              ),
            );
          },
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 101.w, vertical: 15.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: AppColors.mainColor),
        child: const Text(
          AppWords.check,
          style: TextStyle(
              color: AppColors.wordColor,
              fontSize: 14,
              fontFamily: AppFonts.popMed,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
