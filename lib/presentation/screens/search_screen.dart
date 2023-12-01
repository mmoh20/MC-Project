import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mc_project/app/app_colors.dart';
import 'package:mc_project/app/app_words.dart';
import 'package:mc_project/presentation/components/title_text_style.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleTextStyle(
          title: AppWords.search,
        ),
        centerTitle: true,
        backgroundColor: AppColors.bgColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_left_rounded),
        ),
        iconTheme: const IconThemeData(color: Colors.black, size: 35),
        elevation: 0,
      ),
      backgroundColor: AppColors.bgColor,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w,vertical: 20.h),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintStyle: const TextStyle(color:Colors.black26),
                    hintText: "Search , e.g , headache",
                    suffixIcon: const Icon(
                      Icons.search_rounded,
                      color: Colors.black26,
                    ),
                    contentPadding:EdgeInsets.symmetric(horizontal:15.w,vertical:15.h),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide:
                             BorderSide(width:1.5.w, color: AppColors.mainColor)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide:
                             BorderSide(width:1.5.w, color: AppColors.mainColor))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
