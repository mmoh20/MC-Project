import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mc_project/presentation/screens/login_screen.dart';

import '../../app/app_colors.dart';
import '../../app/app_images.dart';
import '../../app/app_words.dart';
import '../components/main_text_style.dart';
import '../components/title_text_style.dart';

class AllDoctorsScreen extends StatelessWidget {
  const AllDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleTextStyle(title: AppWords.allDoctors),
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.bgColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left_rounded,
            size: 35,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut().then((value) {
                  print("Signed Out");
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()),(route) => false,);
                });
              },
              icon: const Icon(
                Icons.logout_outlined,
                size: 25,
                color: Colors.black,
              ))
        ],
      ),
      backgroundColor: AppColors.bgColor,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: AppColors.mainColor),
                      borderRadius: BorderRadius.circular(25.r)),
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
                height: 15.h,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: 30,
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
