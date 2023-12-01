import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mc_project/app/app_colors.dart';
import 'package:mc_project/app/app_images.dart';
import 'package:mc_project/app/app_words.dart';
import 'package:mc_project/presentation/components/main_text_style.dart';
import 'package:mc_project/presentation/components/title_text_style.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleTextStyle(
          title: AppWords.settings,
        ),
        centerTitle: true,
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SizedBox(
              width: 30,
              child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 2, color: AppColors.mainColor),
                          borderRadius: BorderRadius.circular(10)))),
                  child: TitleTextStyle(
                    title: 'X',
                  )),
            ),
          ),
          SizedBox(
            width: 15.w,
          )
        ],
      ),
      backgroundColor: AppColors.bgColor,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Image.asset(
                  AppImages.editWithPen,
                  width: 25.w,
                  height: 25.h,
                ),
                title: MainTextStyle(
                  title: AppWords.editYourProfile,
                ),
                horizontalTitleGap: 0,
                dense: true,
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset(
                  AppImages.settings1,
                  width: 25.w,
                  height: 35.h,
                ),
                title: MainTextStyle(
                  title: AppWords.healthTest,
                ),
                horizontalTitleGap: 0,
                dense: true,
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset(
                  AppImages.dLecturer,
                  width: 18.w,
                  height: 24.h,
                ),
                title: MainTextStyle(
                  title: AppWords.doctors,
                ),
                horizontalTitleGap: 0,
                dense: true,
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset(
                  AppImages.conditions,
                  width: 20.w,
                  height: 20.h,
                ),
                title: MainTextStyle(
                  title: AppWords.conditions,
                ),
                horizontalTitleGap: 0,
                dense: true,
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset(
                  AppImages.bell,
                  width: 17.w,
                  height: 18.h,
                ),
                title: MainTextStyle(
                  title: AppWords.notifications,
                ),
                horizontalTitleGap: 0,
                dense: true,
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset(
                  AppImages.helpQ,
                  width: 18.w,
                  height: 18.h,
                ),
                title: MainTextStyle(
                  title: AppWords.messages,
                ),
                horizontalTitleGap: 0,
                dense: true,
                onTap: () {},
              ),
              const Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(5.r),
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainTextStyle(title: AppWords.privacyPolicy),
                    const Icon(
                      Icons.chevron_right_rounded,
                      size: 30,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(5.r),
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainTextStyle(title: AppWords.termsOfService),
                    const Icon(
                      Icons.chevron_right_rounded,
                      size: 30,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(5.r),
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainTextStyle(title: AppWords.medicalSources),
                    const Icon(
                      Icons.chevron_right_rounded,
                      size: 30,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(5.r),
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainTextStyle(title: AppWords.aboutUs),
                    const Icon(
                      Icons.chevron_right_rounded,
                      size: 30,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              MainTextStyle(
                title: AppWords.logOut,
                cl: Colors.red,
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
