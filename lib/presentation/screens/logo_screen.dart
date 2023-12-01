import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mc_project/app/app_colors.dart';
import 'package:mc_project/app/app_images.dart';
import 'package:mc_project/app/app_words.dart';
import 'package:mc_project/presentation/screens/start_screen.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                AppImages.logo,
                width: 138.89.w,
                height: 104.38.h,
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StartScreen(),
                ));
          },
          backgroundColor: AppColors.mainColor,
          icon: const Icon(Icons.arrow_forward),
          label: const Text(AppWords.next),
        ));
  }
}
