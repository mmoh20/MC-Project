import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mc_project/app/app_images.dart';
import 'package:mc_project/app/app_words.dart';
import 'package:mc_project/presentation/components/custom_symptoms_button.dart';
import 'package:mc_project/presentation/components/main_text_style.dart';
import 'package:mc_project/presentation/components/title_text_style.dart';

import '../../app/app_colors.dart';

class HealthTestWomanScreen2 extends StatelessWidget {
  const HealthTestWomanScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleTextStyle(title: AppWords.healthTest),
        centerTitle: true,
        backgroundColor: AppColors.bgColor,
        elevation: 0,
      ),
      backgroundColor: AppColors.bgColor,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:20.w, vertical: 20.h),
          child: Column(
            children: [
              Image.asset(
                AppImages.woman,
                width: 226.w,
                height: 410.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MainTextStyle(
                    title: AppWords.mysymptoms,
                    size: 20,
                  )),
              SizedBox(
                height: 15.h,
              ),

              Row(children: [CustomSymptomsButton(),SizedBox(width: 5.w,),CustomSymptomsButton(),],),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomSymptomsButton(title:'Headache in face',),
                  CustomSymptomsButton(),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => AppColors.bgColor),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          side: MaterialStateProperty.all(const BorderSide(
                              color: AppColors.mainColor, width: 2))),
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 45.w, vertical: 15.h),
                        child: const Text(
                          AppWords.back,
                          style: TextStyle(color: AppColors.mainColor),
                        ),
                      )),
                  SizedBox(width: 20.w,),
                  OutlinedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => AppColors.mainColor),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          side: MaterialStateProperty.all(const BorderSide(
                              color: AppColors.mainColor, width: 3))),
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 45.w, vertical: 15.h),
                        child: const Text(
                          AppWords.next,
                          style: TextStyle(color: AppColors.bgColor),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
