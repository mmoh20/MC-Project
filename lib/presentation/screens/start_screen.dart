import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mc_project/app/app_fonts.dart';
import 'package:mc_project/app/app_images.dart';
import 'package:mc_project/app/app_words.dart';
import 'package:mc_project/presentation/components/custom_button.dart';
import 'package:mc_project/presentation/components/custom_skip_button.dart';
import 'package:mc_project/presentation/screens/login_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  List<ImgSlider> slider = [
    ImgSlider(AppImages.tology, 268.79.w, 265.52.h, AppWords.description1a,
        AppWords.description1b),
    ImgSlider(AppImages.doctor, 301.11.w, 280.05.h, AppWords.description2a,
        AppWords.description2b),
    ImgSlider(AppImages.medicalPrescription, 274.2.w, 282.62.h,
        AppWords.description3a, AppWords.description3b),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 168.h,
          ),
          Expanded(
            child: PageView.builder(
                controller: _pageController,
                physics:
                    const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
                itemCount: 3,
                onPageChanged: (value) {
                  setState(() {
                    _currentPage = value;
                  });
                },
                itemBuilder: (context, index) {
                  final item = slider[index];
                  return Column(
                    children: [
                      Image.asset(
                        item.img,
                        width: item.wid,
                        height: item.height,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        item.title,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: Colors.black,
                                fontFamily: AppFonts.popMed,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                      ),
                      Text(
                        item.decrip,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: Colors.black,
                                fontFamily: AppFonts.popMed,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                      ),
                    ],
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    height: 10,
                    width: _currentPage == index ? 30 : 10,
                    decoration: BoxDecoration(
                        color:
                            _currentPage == index ? Colors.black : Colors.grey,
                        borderRadius: BorderRadius.circular(5)),
                  ));
            }),
          ),
          SizedBox(
            height: 200.h,
          ),
          if (_currentPage == slider.length - 1)
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  const LoginScreen(),
                      ));
                },
                child: const CustomSkipButton()),
          if (_currentPage < slider.length - 1)
            InkWell(
                onTap: () {
                  if (_currentPage < slider.length - 1) {
                    _pageController.nextPage(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeOut);
                  } else {
                    _pageController.jumpToPage(0);
                  }
                },
                child: const CustomButton()),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}

class ImgSlider {
  final String img;
  double wid;
  double height;
  String title;
  String decrip;

  ImgSlider(
    this.img,
    this.wid,
    this.height,
    this.title,
    this.decrip,
  );
}
