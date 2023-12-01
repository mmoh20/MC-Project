import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/app_colors.dart';
import '../../app/app_images.dart';
import '../../app/app_words.dart';
import 'custom_check_button.dart';
import 'custom_continue_button.dart';
import 'main_text_style.dart';

AlertDialog calender(BuildContext context) {
  return AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
    contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
    backgroundColor: AppColors.bgColor,
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          AppImages.calendar,
          width: 64.w,
          height: 61.h,
        ),
        SizedBox(
          height: 40.h,
        ),
        MainTextStyle(title: AppWords.calender),
        SizedBox(
          height: 40.h,
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.r)),
                    backgroundColor: AppColors.bgColor,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    content: SizedBox(
                      width: 300.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          MainTextStyle(
                            title: '${AppWords.sample} 1',
                            size: 18,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: '1.2-10',
                                hoverColor: Colors.black26,
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppColors.mainColor, width: 1),
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: AppColors.mainColor),
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          MainTextStyle(
                            title: '${AppWords.sample} 2',
                            size: 18,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: '1.2-10',
                                hoverColor: Colors.black26,
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppColors.mainColor, width: 1),
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: AppColors.mainColor),
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          MainTextStyle(
                            title: '${AppWords.sample} 3',
                            size: 18,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: '1.2-10',
                                hoverColor: Colors.black26,
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppColors.mainColor, width: 1),
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: AppColors.mainColor),
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          MainTextStyle(
                            title: '${AppWords.sample} 4',
                            size: 18,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: '1.2-10',
                                hoverColor: Colors.black26,
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppColors.mainColor, width: 1),
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: AppColors.mainColor),
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          MainTextStyle(
                            title: '${AppWords.sample} 5',
                            size: 18,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: '1.2-10',
                                hoverColor: Colors.black26,
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppColors.mainColor, width: 1),
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: AppColors.mainColor),
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          const Align(
                            alignment: Alignment.center,
                            child: CustomCheckButton(),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                        ],
                      ),
                    ),
                  );
                });
          },
          child: const CustomContinueButton(),
        )
      ],
    ),
  );
}
