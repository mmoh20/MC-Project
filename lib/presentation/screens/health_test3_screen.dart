import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:mc_project/app/app_colors.dart';
import 'package:mc_project/app/app_words.dart';
import 'package:mc_project/presentation/components/custom_continue_button.dart';
import 'package:mc_project/presentation/components/main_text_style.dart';
import 'package:mc_project/presentation/components/title_text_style.dart';

import 'health_test4_screen.dart';

class HealthTest3Screen extends StatefulWidget {
  const HealthTest3Screen({super.key});

  @override
  State<HealthTest3Screen> createState() => _HealthTest3ScreenState();
}

List options = ['Yes', 'No'];

class _HealthTest3ScreenState extends State<HealthTest3Screen> {
  String cOptions = options[1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleTextStyle(title: AppWords.healthTest),
        centerTitle: true,
        backgroundColor: AppColors.bgColor,
        elevation: 0,
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
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: MainTextStyle(
                    title: AppWords.hWYourPain,
                    size: 20,
                  )),
              SizedBox(
                height: 5.h,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MainTextStyle(
                    title: AppWords.tapToShowHoMuchPainsYouAreIn,
                    size: 14,
                  )),
              SizedBox(
                height: 10.h,
              ),
              const StepProgressIndicator(
                totalSteps: 4,
                currentStep: 2,
                size: 15,
                selectedColor: AppColors.mainColor,
                unselectedColor: Colors.black26,
                roundedEdges: Radius.circular(10),
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainTextStyle(
                    title: AppWords.mid,
                    size: 14,
                  ),
                  MainTextStyle(
                    title: AppWords.unBearable,
                    size: 14,
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MainTextStyle(title: AppWords.q1),
                        SizedBox(
                          height: 10.h,
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 2,
                          title: const Text(
                            'Yes',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black87),
                          ),
                          leading: Radio(
                            value: options[0],
                            groupValue: cOptions,
                            onChanged: (value) {
                              setState(() {
                                cOptions = value.toString();
                              });
                            },
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 2,
                          title: const Text(
                            'No',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black87),
                          ),
                          leading: Radio(
                            value: options[1],
                            groupValue: cOptions,
                            onChanged: (value) {
                              setState(() {
                                cOptions = value.toString();
                              });
                            },
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.black54,
                        ),
                        MainTextStyle(title: AppWords.q1),
                        SizedBox(
                          height: 10.h,
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 2,
                          title: const Text(
                            'Yes',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black87),
                          ),
                          leading: Radio(
                            value: options[0],
                            groupValue: cOptions,
                            onChanged: (value) {
                              setState(() {
                                cOptions = value.toString();
                              });
                            },
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 2,
                          title: const Text(
                            'No',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black87),
                          ),
                          leading: Radio(
                            value: options[1],
                            groupValue: cOptions,
                            onChanged: (value) {
                              setState(() {
                                cOptions = value.toString();
                              });
                            },
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.black54,
                        ),
                        MainTextStyle(title: AppWords.q1),
                        SizedBox(
                          height: 10.h,
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 2,
                          title: const Text(
                            'Yes',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black87),
                          ),
                          leading: Radio(
                            value: options[0],
                            groupValue: cOptions,
                            onChanged: (value) {
                              setState(() {
                                cOptions = value.toString();
                              });
                            },
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 2,
                          title: const Text(
                            'No',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black87),
                          ),
                          leading: Radio(
                            value: options[1],
                            groupValue: cOptions,
                            onChanged: (value) {
                              setState(() {
                                cOptions = value.toString();
                              });
                            },
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.black54,
                        ),
                        MainTextStyle(title: AppWords.q1),
                        SizedBox(
                          height: 10.h,
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 2,
                          title: const Text(
                            'Yes',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black87),
                          ),
                          leading: Radio(
                            value: options[0],
                            groupValue: cOptions,
                            onChanged: (value) {
                              setState(() {
                                cOptions = value.toString();
                              });
                            },
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 2,
                          title: const Text(
                            'No',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black87),
                          ),
                          leading: Radio(
                            value: options[1],
                            groupValue: cOptions,
                            onChanged: (value) {
                              setState(() {
                                cOptions = value.toString();
                              });
                            },
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.black54,
                        ),
                        MainTextStyle(title: AppWords.q1),
                        SizedBox(
                          height: 10.h,
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 2,
                          title: const Text(
                            'Yes',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black87),
                          ),
                          leading: Radio(
                            value: options[0],
                            groupValue: cOptions,
                            onChanged: (value) {
                              setState(() {
                                cOptions = value.toString();
                              });
                            },
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 2,
                          title: const Text(
                            'No',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black87),
                          ),
                          leading: Radio(
                            value: options[1],
                            groupValue: cOptions,
                            onChanged: (value) {
                              setState(() {
                                cOptions = value.toString();
                              });
                            },
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                  borderRadius: BorderRadius.circular(24.r),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HealthTest4Screen()));
                  },
                  child: const CustomContinueButton()),
            ],
          ),
        ),
      ),
    );
  }
}
