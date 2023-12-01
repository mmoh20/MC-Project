import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mc_project/app/app_colors.dart';
import 'package:mc_project/app/app_words.dart';
import 'package:mc_project/presentation/components/custom_save_symptoms_button.dart';
import 'package:mc_project/presentation/components/main_text_style.dart';
import 'package:mc_project/presentation/components/title_text_style.dart';

class HealthTest2Screen extends StatefulWidget {
  const HealthTest2Screen({super.key});

  @override
  State<HealthTest2Screen> createState() => _HealthTest2ScreenState();
}

class _HealthTest2ScreenState extends State<HealthTest2Screen> {
  bool ischeked = false;
  bool ischeked2 = false;
  bool ischeked3 = false;
  bool ischeked4 = false;
  bool ischeked5 = false;
  bool ischeked6 = false;
  bool ischeked7 = false;
  bool ischeked8 = false;
  bool ischeked9 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleTextStyle(
          title: AppWords.healthTest,
        ),
        centerTitle: true,
        backgroundColor: AppColors.bgColor,
        elevation: 0,     
        leading: const IconButton(
            icon: Icon(
              Icons.chevron_left_rounded,
              size:38,
              color: Colors.black,
            ),
            onPressed: null),
      ),
      backgroundColor: AppColors.bgColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: MainTextStyle(
                    title: AppWords.symptoms,
                    size: 14,
                  )),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainTextStyle(title: AppWords.headache),
                  Checkbox(
                    value: ischeked,
                    onChanged: (bool? value) {
                      setState(() {
                        ischeked = value!;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => const BorderSide(
                          width: 3.0, color: AppColors.mainColor),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainTextStyle(title: AppWords.headache),
                  Checkbox(
                    value: ischeked2,
                    onChanged: (bool? value) {
                      setState(() {
                        ischeked2 = value!;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => const BorderSide(
                          width: 3.0, color: AppColors.mainColor),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainTextStyle(title: AppWords.headache),
                  Checkbox(
                    value: ischeked3,
                    onChanged: (bool? value) {
                      setState(() {
                        ischeked3 = value!;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => const BorderSide(
                          width: 3.0, color: AppColors.mainColor),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainTextStyle(title: AppWords.headache),
                  Checkbox(
                    value: ischeked4,
                    onChanged: (bool? value) {
                      setState(() {
                        ischeked4 = value!;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => const BorderSide(
                          width: 3.0, color: AppColors.mainColor),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainTextStyle(title: AppWords.headache),
                  Checkbox(
                    value: ischeked5,
                    onChanged: (bool? value) {
                      setState(() {
                        ischeked5 = value!;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => const BorderSide(
                          width: 3.0, color: AppColors.mainColor),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainTextStyle(title: AppWords.headache),
                  Checkbox(
                    value: ischeked6,
                    onChanged: (bool? value) {
                      setState(() {
                        ischeked6 = value!;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => const BorderSide(
                          width: 3.0, color: AppColors.mainColor),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainTextStyle(title: AppWords.headache),
                  Checkbox(
                    value: ischeked7,
                    onChanged: (bool? value) {
                      setState(() {
                        ischeked7 = value!;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => const BorderSide(
                          width: 3.0, color: AppColors.mainColor),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainTextStyle(title: AppWords.headache),
                  Checkbox(
                    value: ischeked8,
                    onChanged: (bool? value) {
                      setState(() {
                        ischeked8 = value!;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => const BorderSide(
                          width: 3.0, color: AppColors.mainColor),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainTextStyle(title: AppWords.headache),
                  Checkbox(
                    value: ischeked9,
                    onChanged: (bool? value) {
                      setState(() {
                        ischeked9 = value!;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0.r),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) =>  BorderSide(
                          width: 3.0.w, color: AppColors.mainColor),
                    ),
                  )
                ],
              ),
              SizedBox(
                height:30.h,
              ),
               InkWell(
                 borderRadius: BorderRadius.circular(24.r),
                onTap:(){Navigator.pop(context);},
                  child: const CustomSaveSymptomsButton())
            ],
          ),
        ),
      ),
    );
  }
}
