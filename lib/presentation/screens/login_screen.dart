import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mc_project/app/app_colors.dart';
import 'package:mc_project/app/app_fonts.dart';
import 'package:mc_project/app/app_images.dart';
import 'package:mc_project/app/app_words.dart';
import 'package:mc_project/presentation/components/f_pass_button.dart';
import 'package:mc_project/presentation/components/title_text_style.dart';
import 'package:mc_project/presentation/screens/sign_up_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../components/fire_log_in_button.dart';
import '../components/this_account_for_dialog.dart';

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
                  child: fPassButton(context)),
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
                        return thiaAccontFor(context);
                      });

                  // Navigator.pushAndRemoveUntil(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const AllDoctorsScreen()),
                  //   (route) => false,
                  // );
                }).onError((error, stackTrace) {
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
