import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mc_project/app/app_colors.dart';
import 'package:mc_project/app/app_images.dart';
import 'package:mc_project/app/app_words.dart';
import 'package:mc_project/presentation/components/custom_save_button.dart';
import 'package:mc_project/presentation/components/title_text_style.dart';


class EditYourProfileScreen extends StatelessWidget {
  const EditYourProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleTextStyle(title: AppWords.editProfile),
        centerTitle: true,
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SizedBox(
              width: 30,
              child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 2, color: AppColors.mainColor),
                          borderRadius: BorderRadius.circular(10)))),
                  child: TitleTextStyle(
                    title: 'X',
                  )),
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
        ],
      ),
      backgroundColor: AppColors.bgColor,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Stack(
                fit: StackFit.passthrough,
                clipBehavior: Clip.none,
                children: [
                  const CircleAvatar(
                    backgroundColor: AppColors.mainColor,
                    radius: 100,
                  ),
                  const Positioned(
                    top: 5,
                    left: 5,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(AppImages.womenAvatar),
                      backgroundColor: AppColors.mainColor,
                      radius: 95,
                    ),
                  ),
                  Positioned(
                      bottom: -5,
                      right: -15,
                      child: RawMaterialButton(
                        onPressed: () {},
                        elevation: 1.0,
                        fillColor: AppColors.bgColor,
                        padding: const EdgeInsets.all(10.0),
                        shape: const CircleBorder(),
                        child: const Icon(
                          Icons.mode_edit_rounded,
                          color: AppColors.mainColor,
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide:
                        const BorderSide(width: 2, color: AppColors.mainColor),
                  ),
                  hintText: 'Name',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.black26),
                  contentPadding: const EdgeInsets.all(15),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide:
                        const BorderSide(width: 2, color: AppColors.mainColor),
                  ),
                  hintText: 'Email',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.black26),
                  contentPadding: const EdgeInsets.all(15),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide:
                        const BorderSide(width: 2, color: AppColors.mainColor),
                  ),
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.black26),
                  contentPadding: const EdgeInsets.all(15),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(15.r),
                child: const CustomSaveButton(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
