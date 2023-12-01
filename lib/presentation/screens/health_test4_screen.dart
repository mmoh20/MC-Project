import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:mc_project/app/app_colors.dart';
import 'package:mc_project/app/app_fonts.dart';
import 'package:mc_project/app/app_images.dart';
import 'package:mc_project/app/app_words.dart';
import 'package:mc_project/presentation/components/custom_done_button.dart';
import 'package:mc_project/presentation/components/main_text_style.dart';
import 'package:mc_project/presentation/components/title_text_style.dart';

class HealthTest4Screen extends StatelessWidget {
  const HealthTest4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TitleTextStyle(title: AppWords.healthTest),
          centerTitle: true,
          elevation: 0,
          backgroundColor: AppColors.bgColor,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chevron_left_rounded,
              size: 35,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: AppColors.bgColor,
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 20.h),
            child: Column(
              children: [
                Image.asset(
                  AppImages.healthTest,
                  width: 61.34.w,
                  height: 93.73.h,
                ),
                SizedBox(
                  height: 15.h,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppWords.healthTestSlogan,
                    style: TextStyle(fontSize: 16, fontFamily: AppFonts.popMed),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppWords.recommendedAnalysis,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: AppFonts.popMed,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppWords.neurologist,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: AppFonts.popMed,
                        fontWeight: FontWeight.w400,
                        color: Colors.deepOrange),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppWords.possibleConditions,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: AppFonts.popMed,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    const StepProgressIndicator(
                      totalSteps: 50,
                      currentStep: 32,
                      size: 20,
                      padding: 0,
                      selectedColor: AppColors.mainColor,
                      unselectedColor: Colors.black12,
                      roundedEdges: Radius.circular(7),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Text(AppWords.strongEvidence,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: AppFonts.popMed,
                        ))
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: MainTextStyle(title: AppWords.tensionHeadaches),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppWords.tensionTypeHeadaches,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    )),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      AppWords.showDetails,
                      style:
                          TextStyle(fontSize: 16, color: AppColors.mainColor),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.chevron_right_rounded,
                          size: 30,
                          color: AppColors.mainColor,
                        ))
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    const StepProgressIndicator(
                      totalSteps: 50,
                      currentStep: 32,
                      size: 20,
                      padding: 0,
                      selectedColor: AppColors.mainColor,
                      unselectedColor: Colors.black12,
                      roundedEdges: Radius.circular(7),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Text(AppWords.strongEvidence,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: AppFonts.popMed,
                        ))
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: MainTextStyle(title: AppWords.tensionHeadaches),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppWords.tensionTypeHeadaches,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    )),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      AppWords.showDetails,
                      style:
                          TextStyle(fontSize: 16, color: AppColors.mainColor),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.chevron_right_rounded,
                          size: 30,
                          color: AppColors.mainColor,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(onTap: () {}, child: const CustomDoneButton()),
              ],
            ),
          ),
        ));
  }
}
