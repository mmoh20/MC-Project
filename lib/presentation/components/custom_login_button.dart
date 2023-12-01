import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/app_colors.dart';
import '../../app/app_fonts.dart';
import '../../app/app_words.dart';

class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton({super.key, required Function onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width.w,
        height: 50.h,
        padding: EdgeInsets.symmetric(horizontal: 70.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return AppColors.mainColor.withOpacity(0.5);
                }
                return AppColors.mainColor;
              }),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)))),
          child: const Text(
            AppWords.login,
            style: TextStyle(
                color: AppColors.wordColor,
                fontSize: 16,
                fontFamily: AppFonts.popMed,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
