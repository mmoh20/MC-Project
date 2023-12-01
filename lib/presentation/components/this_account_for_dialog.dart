import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/app_colors.dart';
import '../../app/app_fonts.dart';
import '../../app/app_words.dart';
import '../screens/health_test_screen.dart';

AlertDialog thiaAccontFor(BuildContext context) {
  return AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
    contentPadding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 120.h),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          AppWords.thisAccountFor,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            fontFamily: AppFonts.popMed,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const HealthTestScreen()),
              (route) => false,
            );
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return AppColors.mainColor.withOpacity(0.5);
              }
              return AppColors.mainColor;
            }),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: const BorderSide(
                width: 5,
                color: AppColors.mainColor,
              ),
            )),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 65.w, vertical: 15.h),
            child: const Text(
              AppWords.patient,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        OutlinedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.white.withOpacity(0.5);
              }
              return Colors.white;
            }),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: const BorderSide(
                width: 5,
                color: AppColors.mainColor,
              ),
            )),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 65.w, vertical: 15.h),
            child: const Text(
              AppWords.doctor,
              style: TextStyle(color: AppColors.mainColor),
            ),
          ),
        ),
      ],
    ),
  );
}
