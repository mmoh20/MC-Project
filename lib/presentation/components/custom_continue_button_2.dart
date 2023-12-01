import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/app_colors.dart';
import '../../app/app_fonts.dart';
import '../../app/app_words.dart';
import 'custom_rpass_button.dart';
import 'main_text_style.dart';

class CustomContinueButton2 extends StatefulWidget {
  const CustomContinueButton2({super.key});

  @override
  State<CustomContinueButton2> createState() => _CustomContinueButton2State();
}

class _CustomContinueButton2State extends State<CustomContinueButton2> {
  bool passVisible = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
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
            height: 448.h,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal:30.0.w),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                //mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 47.h,
                  ),
                  Text(
                    AppWords.rPass,
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: AppFonts.popMed,
                    ),
                  ),
                  SizedBox(
                    height: 44.h,
                  ),
                  Text(
                    AppWords.rPassSlogan,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: AppFonts.popMed,
                    ),
                  ),
                  SizedBox(
                    height: 43.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: MainTextStyle(title: AppWords.password)),
                      TextField(
                        obscureText: passVisible,
                        decoration: InputDecoration(
                            hintText: 'Your Password',
                            hintStyle: const TextStyle(fontSize: 14),
                            suffixIcon: IconButton(
                              icon: Icon(passVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                passVisible = !passVisible;
                              },
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 27.5.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: MainTextStyle(title: AppWords.cPassword)),
                      TextField(
                        obscureText: passVisible,
                        decoration: InputDecoration(
                            hintText: 'Your Password',
                            hintStyle: const TextStyle(fontSize: 14),
                            suffixIcon: IconButton(
                              icon: Icon(passVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                passVisible = !passVisible;
                              },
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height:30.5.h,
                  ),
                  const CustomRPassButton()
                ],
              ),
            ),
          );
        },
      );},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 101.w, vertical: 15.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24), color: AppColors.mainColor),
        child: Text(
          AppWords.continue_,
          style: const TextStyle(
              color: AppColors.wordColor,
              fontSize: 14,
              fontFamily: AppFonts.popMed,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
