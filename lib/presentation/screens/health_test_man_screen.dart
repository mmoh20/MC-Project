import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mc_project/app/app_images.dart';
import 'package:mc_project/app/app_words.dart';
import 'package:mc_project/presentation/components/main_text_style.dart';
import 'package:mc_project/presentation/components/title_text_style.dart';
import 'package:mc_project/presentation/screens/health_test2_screen.dart';

import '../../app/app_colors.dart';
import 'health_test3_screen.dart';

class HealthTestManScreen extends StatelessWidget {
  const HealthTestManScreen({super.key});

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
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
          child: Column(
            children: [
              Image.asset(
                AppImages.man,
                width: 226.w,
                height: 410.h,
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                children: [
                   InkWell(
                    onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>const HealthTest2Screen()));},
                     borderRadius: BorderRadius.circular(15.r),
                    child: const CircleAvatar(
                      radius: 15,
                      backgroundColor: AppColors.mainColor,
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 25, color: AppColors.bgColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  MainTextStyle(
                    title: AppWords.addsymptom,
                    size: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MainTextStyle(
                    title: AppWords.addsymptomSlogan,
                    size: 16,
                  )),
              SizedBox(
                height:40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      onPressed: () {Navigator.pop(context);},
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 45.w, vertical: 15.h),
                        child: const Text(
                          AppWords.back,
                          style: TextStyle(color: AppColors.mainColor),
                        ),
                      )),
                  OutlinedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                                  (states) => AppColors.mainColor),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          side: MaterialStateProperty.all(const BorderSide(
                              color: AppColors.mainColor, width: 3))),
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const HealthTest3Screen()));},
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
