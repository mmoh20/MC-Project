import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mc_project/app/app_colors.dart';
import 'package:mc_project/app/app_fonts.dart';
import 'package:mc_project/app/app_words.dart';

class CustomSymptomsButton extends StatelessWidget {
 String? title ;
   CustomSymptomsButton({super.key,this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:25.w, vertical: 15.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient:  LinearGradient(
              colors: [AppColors.gradiantBlueA1.withOpacity(.6),AppColors.gradiantBlueA2.withOpacity(.6)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child:   Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

           Text(title??
            AppWords.headache,
            style: const TextStyle(
                color:Colors.black,
                fontSize: 14,
                fontFamily: AppFonts.popMed,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(width:15.w,),
          const Icon(Icons.cancel_rounded,color:AppColors.mainColor,)
        ],
      ),
    );
  }
}
