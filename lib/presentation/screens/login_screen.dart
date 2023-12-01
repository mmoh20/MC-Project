import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mc_project/app/app_colors.dart';
import 'package:mc_project/app/app_fonts.dart';
import 'package:mc_project/app/app_images.dart';
import 'package:mc_project/app/app_words.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:mc_project/presentation/components/custom_submit_button.dart';
import 'package:mc_project/presentation/components/title_text_style.dart';
import 'package:mc_project/presentation/screens/health_test_screen.dart';
import 'package:mc_project/presentation/screens/sign_up_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../components/fire_log_in_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTextController = TextEditingController();

  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: TitleTextStyle(title: AppWords.signIn),
        centerTitle: true,
        backgroundColor: AppColors.bgColor,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0.w),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.h,
              ),
              Image.asset(
                AppImages.login,
                width: 346.w,
                height: 258.h,
              ),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                height: 15.h,
              ),
              TextField(
                controller: _emailTextController,
                obscureText: false,
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Colors.black,
                    ),
                    labelText: AppWords.eEmail,
                    labelStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    fillColor: Colors.black.withOpacity(0.08),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.r),
                      borderSide:
                          const BorderSide(width: 0, style: BorderStyle.none),
                    )),
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.black,
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                controller: _passwordTextController,
                obscureText: true,
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.password_outlined,
                      color: Colors.black,
                    ),
                    labelText: AppWords.ePass,
                    labelStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    fillColor: Colors.black.withOpacity(0.08),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.r),
                      borderSide:
                          const BorderSide(width: 0, style: BorderStyle.none),
                    )),
                keyboardType: TextInputType.visiblePassword,
                cursorColor: Colors.black,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
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
                            children: <Widget>[
                              SizedBox(
                                height: 47.h,
                              ),
                              const Text(
                                AppWords.ffPassword,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: AppFonts.popMed,
                                ),
                              ),
                              SizedBox(
                                height: 44.h,
                              ),
                              Text(
                                AppWords.fPassSlogan,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: AppFonts.popMed,
                                ),
                              ),
                              SizedBox(
                                height: 43.h,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 35.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    AppWords.phoneNum,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 18.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 105.w,
                                    child: DropDownTextField(
                                      isEnabled: true,
                                      textFieldDecoration:
                                          const InputDecoration(
                                              hintText: '+971'),
                                      readOnly: false,
                                      dropDownItemCount: 3,
                                      searchShowCursor: false,
                                      enableSearch: false,
                                      //searchKeyboardType: TextInputType.number,
                                      dropDownList: const [
                                        DropDownValueModel(
                                            name: 'Egypt', value: "+20"),
                                        DropDownValueModel(
                                            name: 'Qatar', value: "+974"),
                                        DropDownValueModel(
                                          name: 'USA',
                                          value: "+01",
                                        ),
                                      ],
                                      onChanged: (val) {},
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  SizedBox(
                                    width: 190.w,
                                    child: const TextField(
                                      decoration: InputDecoration(
                                          hintText: 'Ex.1212440126'),
                                      keyboardType: TextInputType.number,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20.5.h,
                              ),
                              const CustomSubmitButton(),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.screenLink,
                  ),
                  child: const Text(
                    AppWords.fPassword,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              fireLoginButton(context, onTap: () {
                FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: _emailTextController.text,
                        password: _passwordTextController.text)
                    .then((value) {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.r)),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 40.w, vertical: 120.h),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                AppWords.thisAccountFor,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: AppFonts.popMed,
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HealthTestScreen()),
                                    (route) => false,
                                  );
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith(
                                          (states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return AppColors.mainColor
                                          .withOpacity(0.5);
                                    }
                                    return AppColors.mainColor;
                                  }),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: const BorderSide(
                                      width: 5,
                                      color: AppColors.mainColor,
                                    ),
                                  )),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 65.w, vertical: 15.h),
                                  child: const Text(
                                    AppWords.patient,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith(
                                          (states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return Colors.white.withOpacity(0.5);
                                    }
                                    return Colors.white;
                                  }),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: const BorderSide(
                                      width: 5,
                                      color: AppColors.mainColor,
                                    ),
                                  )),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 65.w, vertical: 15.h),
                                  child: const Text(
                                    AppWords.doctor,
                                    style:
                                        TextStyle(color: AppColors.mainColor),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      });

                  // Navigator.pushAndRemoveUntil(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const AllDoctorsScreen()),
                  //   (route) => false,
                  // );
                }).onError((error, stackTrace) {
                  if (kDebugMode) {
                    print("Error ${error.toString()}");
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.r)),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 30.w, vertical: 50.h),
                            content: const Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Center(
                                    child: Text(
                                  'Wrong Email or Password',
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: AppFonts.popMed),
                                ))
                              ],
                            ),
                          );
                        });
                  }
                });
              }),
              SizedBox(
                height: 10.h,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ));
                },
                style: TextButton.styleFrom(
                  shadowColor: Colors.transparent,
                  elevation: 0.0,
                  foregroundColor: AppColors.screenLink,
                ),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(color: AppColors.screenLink),
                    children: [
                      TextSpan(
                        text: AppWords.dontHaveAnAccount,
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const TextSpan(
                        text: AppWords.signUp,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.bgColor,
    );
  }
}

// showDialog(
//                        context: context,
//                        builder: (BuildContext context) {
//                          return AlertDialog(
//                            shape: RoundedRectangleBorder(
//                                borderRadius: BorderRadius.circular(30.r)),
//                            contentPadding: EdgeInsets.symmetric(
//                                horizontal: 40.w, vertical: 120.h),
//                            content: Column(
//                              mainAxisSize: MainAxisSize.min,
//                              children: [
//                                const Text(
//                                  AppWords.thisAccountFor,
//                                  textAlign: TextAlign.center,
//                                  style: TextStyle(
//                                      fontSize: 15,
//                                      fontFamily: AppFonts.popMed,),
//                                ),
//                                SizedBox(
//                                  height: 20.h,
//                                ),
//                                OutlinedButton(
//                                  onPressed: null,
//                                  style: ButtonStyle(
//                                    shape: MaterialStateProperty.all(
//                                        RoundedRectangleBorder(
//                                      borderRadius: BorderRadius.circular(30.0),
//                                      side: const BorderSide(
//                                        width: 5,
//                                        color: AppColors.mainColor,
//                                      ),
//                                    )),
//                                  ),
//                                  child: Padding(
//                                    padding: EdgeInsets.symmetric(
//                                        horizontal: 65.w, vertical: 15.h),
//                                    child: const Text(
//                                      AppWords.patient,
//                                      style:
//                                          TextStyle(color: AppColors.mainColor),
//                                    ),
//                                  ),
//                                ),
//                                SizedBox(
//                                  height: 30.h,
//                                ),
//                                OutlinedButton(
//                                  onPressed: null,
//                                  style: ButtonStyle(
//                                    shape: MaterialStateProperty.all(
//                                        RoundedRectangleBorder(
//                                      borderRadius: BorderRadius.circular(30.0),
//                                      side: const BorderSide(
//                                        width: 5,
//                                        color: AppColors.mainColor,
//                                      ),
//                                    )),
//                                  ),
//                                  child: Padding(
//                                    padding: EdgeInsets.symmetric(
//                                        horizontal: 65.w, vertical: 15.h),
//                                    child: const Text(
//                                      AppWords.doctor,
//                                      style:
//                                          TextStyle(color: AppColors.mainColor),
//                                    ),
//                                  ),
//                                ),
//                              ],
//                            ),
//                          );
//                        });
//                  },
