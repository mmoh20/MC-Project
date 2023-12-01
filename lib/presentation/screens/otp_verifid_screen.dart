import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mc_project/app/app_colors.dart';
import 'package:mc_project/app/app_fonts.dart';
import 'package:mc_project/app/app_images.dart';
import 'package:mc_project/app/app_words.dart';
import 'package:mc_project/presentation/components/custom_done_button.dart';
import 'package:mc_project/presentation/screens/login_screen.dart';

class OtpVerifidScreen extends StatelessWidget {
  const OtpVerifidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Image.asset(
                AppImages.personImage,
                width: 113.w,
                height: 220.h,
              ),
              SizedBox(
                height: 66.h,
              ),
              const Text(
                AppWords.congratulations,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: AppFonts.popMed,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 63.h,
              ),
              Text(
                AppWords.otpVerifidSlogan,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: AppFonts.popMed,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              ),
              SizedBox(
                height: 65.h,
              ),
              Image.asset(
                AppImages.correct,
                width: 73.w,
                height: 73.h,
              ),
              SizedBox(
                height: 61.h,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const CustomDoneButton())
            ],
          ),
        ),
      ),
    );
  }
}
