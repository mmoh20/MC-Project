import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:mc_project/app/app_colors.dart';
import 'package:mc_project/app/app_fonts.dart';
import 'package:mc_project/app/app_words.dart';

import 'custom_continue_button_2.dart';

class CustomSubmitButton extends StatefulWidget {
  const CustomSubmitButton({super.key});

  @override
  State<CustomSubmitButton> createState() => _CustomSubmitButtonState();
}

class _CustomSubmitButtonState extends State<CustomSubmitButton> {
  int start = 30;

  void startTimer() {
    const onSec = Duration(seconds: 1);
    Timer timer = Timer.periodic(onSec, (timer) {
      if (start == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          start--;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);

        showModalBottomSheet<void>(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(75.r),
                topLeft: Radius.circular(75.r)),
          ),
          context: context,
          builder: (BuildContext context) {
            return SizedBox(
              height: 388.h,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                //mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 47.h,
                  ),
                  Text(
                    AppWords.enter4digits,
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: AppFonts.popMed,
                    ),
                  ),
                  SizedBox(
                    height: 44.h,
                  ),
                  Text(
                    AppWords.enter4digitsSlogan,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: AppFonts.popMed,
                    ),
                  ),
                  SizedBox(
                    height: 43.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                    child: OTPTextField(
                      length: 4,
                      width: MediaQuery.of(context).size.width,
                      fieldWidth: 50,
                      style: const TextStyle(fontSize: 17),
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.box,
                      onCompleted: (pin) {
                        print("Completed: $pin");
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20.5.h,
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
                    height: 20.5.h,
                  ),
                  InkWell(
                    child: const CustomContinueButton2(),
                    onTap: () {},
                  )
                ],
              ),
            );
          },
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 101.w, vertical: 15.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: AppColors.mainColor),
        child: const Text(
          AppWords.submit,
          style: TextStyle(
              color: AppColors.wordColor,
              fontSize: 14,
              fontFamily: AppFonts.popMed,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
