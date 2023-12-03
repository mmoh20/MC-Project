//import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mc_project/app/app_colors.dart';
import 'package:mc_project/app/app_images.dart';
import 'package:mc_project/app/app_words.dart';
import 'package:mc_project/presentation/components/custom_verify_button.dart';
import 'package:mc_project/presentation/components/title_text_style.dart';
import 'package:mc_project/presentation/screens/otp_verifid_screen.dart';
import '../../../app/app_fonts.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  static int start = 30;

  void startTimer() {
    //const onSec = Duration(seconds: 1);
    // Timer timer = Timer.periodic(onSec, (timer) {
    //   if (start == 0) {
    //     setState(() {
    //       timer.cancel();
    //     });
    //   } else {
    //     setState(() {
    //       start--;
    //     });
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: TitleTextStyle(title: AppWords.verificaton),
        centerTitle: true,
        backgroundColor: AppColors.bgColor,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
        child: SizedBox(
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Column(
            children: [
              Image.asset(
                AppImages.verificationImage,
                width: 292.w,
                height: 176.h,
              ),
              SizedBox(
                height: 70.h,
              ),
              Text(
                AppWords.otpSlogan,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: AppFonts.popMed),
              ),
              SizedBox(
                height: 51.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.black12,
                    ),
                    width: 53.w,
                    height: 53.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.black12,
                    ),
                    width: 53.w,
                    height: 53.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.black12,
                    ),
                    width: 53.w,
                    height: 53.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.black12,
                    ),
                    width: 53.w,
                    height: 53.h,
                  ),
                ],
              ),
              SizedBox(
                height: 28.h,
              ),
              RichText(
                  text: TextSpan(children: [
                    const TextSpan(
                        text: 'Resend in ',
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 14,
                            fontFamily: AppFonts.popMed,
                            color: Colors.black)),
                    TextSpan(
                        text: '$start',
                        style: const TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange)),
                    const TextSpan(
                        text: ' sec',
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 14,
                            fontFamily: AppFonts.popMed,
                            color: Colors.black)),
                  ])),
              SizedBox(
                height: 47.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const OtpVerifidScreen(),));
                },
                child: const CustomVerifyButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
