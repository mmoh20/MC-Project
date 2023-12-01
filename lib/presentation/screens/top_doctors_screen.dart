import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mc_project/app/app_colors.dart';
import 'package:mc_project/app/app_images.dart';
import 'package:mc_project/app/app_words.dart';
import 'package:mc_project/presentation/components/main_text_style.dart';
import 'package:mc_project/presentation/screens/all_doctors_screen.dart';
import 'package:mc_project/presentation/screens/unused_screens/settings_screen.dart';

class TopDoctorsScreen extends StatelessWidget {
  const TopDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        actions: [
          IconButton(
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsScreen()));
            },
            icon: const Icon(
              Icons.settings,
              size: 25,
              color: Colors.black45,
            ),
          ),
        ],
        elevation: 0,
      ),
      backgroundColor: AppColors.bgColor,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainTextStyle(
                title: AppWords.hiMohamed,
                weight: FontWeight.w500,
              ),
              SizedBox(
                height: 10.h,
              ),
              MainTextStyle(title: AppWords.let, size: 18),
              SizedBox(
                height: 15.h,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: AppColors.mainColor),
                      borderRadius: BorderRadius.circular(25.r)),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  suffixIcon: Container(
                    width: 0,
                    height: 0,
                    decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25.r),
                            bottomRight: Radius.circular(25.r))),
                    child: const Icon(
                      Icons.filter_alt_outlined,
                      color: Colors.white,
                    ),
                  ),
                  suffixIconConstraints:
                      const BoxConstraints(minHeight: 60, minWidth: 70),
                  hintText: "Search a doctor",
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              MainTextStyle(
                title: AppWords.categories,
                size: 18,
                weight: FontWeight.w500,
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 80.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 85.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          gradient: LinearGradient(
                              colors: [
                                AppColors.gradiantBlueA2.withOpacity(0.6),
                                AppColors.gradiantBlueA1.withOpacity(.6),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.tooth,
                            width: 25.w,
                            height: 25.h,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          MainTextStyle(title: 'Dentist')
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      width: 85.w,
                      height: 75.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          gradient: LinearGradient(
                              colors: [
                                Colors.deepOrange.withOpacity(0.4),
                                AppColors.gradiantBlueA1.withOpacity(.6),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.eye,
                            width: 25.w,
                            height: 25.h,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          MainTextStyle(title: 'Eyes')
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      width: 85.w,
                      height: 75.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          gradient: LinearGradient(
                              colors: [
                                AppColors.gradiantBlueA2.withOpacity(0.6),
                                AppColors.gradiantBlueA1.withOpacity(.6),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.tooth,
                            width: 25.w,
                            height: 25.h,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          MainTextStyle(title: 'Dentist')
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      width: 85.w,
                      height: 75.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          gradient: LinearGradient(
                              colors: [
                                Colors.deepOrange.withOpacity(0.4),
                                AppColors.gradiantBlueA1.withOpacity(.6),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.eye,
                            width: 25.w,
                            height: 25.h,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          MainTextStyle(title: 'Eyes')
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainTextStyle(
                    title: AppWords.topDoctors,
                    size: 18,
                    weight: FontWeight.w500,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AllDoctorsScreen(),
                            ));
                      },
                      child: MainTextStyle(
                        title: "view all",
                        cl: AppColors.mainColor,
                      ))
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          gradient: LinearGradient(colors: [
                            AppColors.gradiantBlueA2.withOpacity(0.6),
                            AppColors.gradiantBlueA1.withOpacity(0.6),
                          ])),
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage(AppImages.doc),
                          radius: 25,
                        ),
                        trailing: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('4.9'),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                )
                              ],
                            ),
                            Icon(
                              Icons.comment,
                              color: AppColors.mainColor,
                              size: 20,
                            )
                          ],
                        ),
                        title: MainTextStyle(
                          title: 'Dr.Mohamed Ali',
                        ),
                        dense: true,
                        subtitle: MainTextStyle(
                          title: 'Surgon',
                          size: 14,
                          cl: Colors.black45,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
