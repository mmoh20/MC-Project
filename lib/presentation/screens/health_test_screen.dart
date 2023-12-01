import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mc_project/app/app_fonts.dart';
import 'package:mc_project/app/app_images.dart';
import 'package:mc_project/app/app_words.dart';
import 'package:mc_project/presentation/components/custom_continue_button.dart';

import '../../app/app_colors.dart';
import '../components/custom_check_button.dart';
import '../components/main_text_style.dart';

class HealthTestScreen extends StatefulWidget {
  const HealthTestScreen({super.key});

  @override
  State<HealthTestScreen> createState() => _HealthTestScreenState();
}

class _HealthTestScreenState extends State<HealthTestScreen> {
  int count = 0;

  void incrementCount() {
    setState(() {
      count++;
    });
  }

  void decementCount() {
    if (count != 0) {
      setState(() {
        count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppWords.healthTest,
          style: TextStyle(
              fontSize: 20, fontFamily: AppFonts.popMed, color: Colors.black),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.menu_sharp,
                  size: 35,
                )),
          )
        ],
      ),
      backgroundColor: AppColors.bgColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
          child: Column(
            children: [
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppWords.hello,
                    style: TextStyle(fontFamily: AppFonts.popMed, fontSize: 16),
                  )),
              SizedBox(
                height: 15.h,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppWords.lGetStarted,
                    style: TextStyle(
                        fontFamily: AppFonts.popMed,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  )),
              SizedBox(
                height: 80.h,
              ),
              MainTextStyle(title: AppWords.sYourAge),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          decementCount();
                        },
                        borderRadius: BorderRadius.circular(15.r),
                        child: Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: AppColors.bgColor,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: AppColors.mainColor, width: 2),
                          ),
                          child: const Center(
                            child: Text(
                              '-',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: AppFonts.popMed),
                            ),
                          ),
                        )),
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: AppColors.mainColor, width: 2),
                          color: AppColors.bgColor,
                          borderRadius: BorderRadius.circular(10)),
                      width: 50.w,
                      height: 50.w,
                      child: Center(
                          child: Text(
                        '$count',
                        style: const TextStyle(fontSize: 25),
                      )),
                    ),
                    InkWell(
                        onTap: () {
                          incrementCount();
                        },
                        borderRadius: BorderRadius.circular(15.r),
                        child: Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: AppColors.bgColor,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: AppColors.mainColor, width: 2),
                          ),
                          child: const Center(
                            child: Text(
                              '+',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w300),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              MainTextStyle(
                title: AppWords.gender,
              ),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(30.r),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.r),
                            gradient: LinearGradient(
                                colors: [
                                  AppColors.gradiantBlueA1.withOpacity(0.50),
                                  AppColors.gradiantBlueA2.withOpacity(0.50)
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 23.w, vertical: 13.h),
                          child: Image.asset(
                            AppImages.male,
                            width: 65.w,
                            height: 65.h,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(30.r),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.r),
                            gradient: LinearGradient(
                                colors: [
                                  AppColors.gradiantBlueA1.withOpacity(0.50),
                                  AppColors.gradiantBlueA2.withOpacity(0.50)
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 23.w, vertical: 13.h),
                          child: Image.asset(
                            AppImages.female,
                            width: 65.w,
                            height: 65.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 83.h,
              ),
              InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.r)),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 50.h),
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
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        30.r)),
                                            backgroundColor: AppColors.bgColor,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 20.w,
                                                    vertical: 20.h),
                                            content: SizedBox(
                                              width: 300.w,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  MainTextStyle(
                                                    title: AppWords.sample,
                                                    size: 18,
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  TextField(
                                                    decoration: InputDecoration(
                                                        hintText: '1.2-10',
                                                        hoverColor:
                                                            Colors.black26,
                                                        border:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                                  color: AppColors
                                                                      .mainColor,
                                                                  width: 1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.r),
                                                        ),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderSide: const BorderSide(
                                                                width: 2,
                                                                color: AppColors
                                                                    .mainColor),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20))),
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  MainTextStyle(
                                                    title: AppWords.sample,
                                                    size: 18,
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  TextField(
                                                    decoration: InputDecoration(
                                                        hintText: '1.2-10',
                                                        hoverColor:
                                                            Colors.black26,
                                                        border:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                                  color: AppColors
                                                                      .mainColor,
                                                                  width: 1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.r),
                                                        ),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderSide: const BorderSide(
                                                                width: 2,
                                                                color: AppColors
                                                                    .mainColor),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20))),
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  MainTextStyle(
                                                    title: AppWords.sample,
                                                    size: 18,
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  TextField(
                                                    decoration: InputDecoration(
                                                        hintText: '1.2-10',
                                                        hoverColor:
                                                            Colors.black26,
                                                        border:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                                  color: AppColors
                                                                      .mainColor,
                                                                  width: 1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.r),
                                                        ),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderSide: const BorderSide(
                                                                width: 2,
                                                                color: AppColors
                                                                    .mainColor),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20))),
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  MainTextStyle(
                                                    title: AppWords.sample,
                                                    size: 18,
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  TextField(
                                                    decoration: InputDecoration(
                                                        hintText: '1.2-10',
                                                        hoverColor:
                                                            Colors.black26,
                                                        border:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                                  color: AppColors
                                                                      .mainColor,
                                                                  width: 1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.r),
                                                        ),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderSide: const BorderSide(
                                                                width: 2,
                                                                color: AppColors
                                                                    .mainColor),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20))),
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  MainTextStyle(
                                                    title: AppWords.sample,
                                                    size: 18,
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  TextField(
                                                    decoration: InputDecoration(
                                                        hintText: '1.2-10',
                                                        hoverColor:
                                                            Colors.black26,
                                                        border:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                                  color: AppColors
                                                                      .mainColor,
                                                                  width: 1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.r),
                                                        ),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderSide: const BorderSide(
                                                                width: 2,
                                                                color: AppColors
                                                                    .mainColor),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20))),
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
                        });
                  },
                  borderRadius: BorderRadius.circular(20.r),
                  child: const CustomContinueButton())
            ],
          ),
        ),
      ),
    );
  }
}
