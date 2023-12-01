import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mc_project/app/app_colors.dart';
import 'package:mc_project/app/app_images.dart';
import 'package:mc_project/app/app_words.dart';
import 'package:mc_project/presentation/components/custom_continue_button.dart';
import 'package:mc_project/presentation/components/main_text_style.dart';
import 'package:mc_project/presentation/components/title_text_style.dart';
import 'package:mc_project/presentation/screens/otp_verifid_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passVisible = false;
  bool passVisible2 = false;
   final TextEditingController _emailSignUp=TextEditingController();
   final TextEditingController _passSignUp=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          title: TitleTextStyle(
            title: AppWords.signUp,
          ),
          centerTitle: true,
          backgroundColor: AppColors.bgColor,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.chevron_left_rounded,
                color: Colors.black,
                size: 30,
              )),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child:
                                      MainTextStyle(title: AppWords.firstName)),
                              SizedBox(
                                  width: 150.w,
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Enter First Name',
                                        hintStyle: TextStyle(fontSize: 14)),
                                  ))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child:
                                      MainTextStyle(title: AppWords.lastName)),
                              SizedBox(
                                  width: 150.w,
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Enter Last Name',
                                        hintStyle: TextStyle(fontSize: 14)),
                                  ))
                            ],
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
                              child: MainTextStyle(title: AppWords.userName)),
                          SizedBox(
                              width: 300.w,
                              child: const TextField(
                                decoration: InputDecoration(
                                    hintText: 'Enter UserName',
                                    hintStyle: TextStyle(fontSize: 14)),
                              ))
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
                              child: MainTextStyle(title: AppWords.email)),
                          TextField(
                            decoration: const InputDecoration(
                                hintText: 'YourName@Example.Com',
                                hintStyle: TextStyle(fontSize: 14)),
                            controller: _emailSignUp,
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
                            controller: _passSignUp,
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
                        height: 27.5.h,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 220,
                width: 400,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppImages.signUpBacground),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: MainTextStyle(title: AppWords.phoneNum)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 105.w,
                            child: DropDownTextField(
                              isEnabled: true,
                              textFieldDecoration:
                                  const InputDecoration(hintText: '+971'),
                              dropDownItemCount: 3,
                              searchShowCursor: false,
                              readOnly: false,
                              enableSearch: false,
                              dropDownList: const [
                                DropDownValueModel(name: 'Egypt', value: "+20"),
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
                            width: 190.w,
                            child: const TextField(
                              decoration:
                                  InputDecoration(hintText: 'Ex.1212440126'),
                              keyboardType: TextInputType.number,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 27.5.h,
                      ),
                      InkWell(
                          onTap: () {
                            FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                                    email: _emailSignUp.text,
                                    password: _passSignUp.text)
                                .then((value) {if (kDebugMode) {
                                  print("Created New Account");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const OtpVerifidScreen(),
                                      ));

                                }});

                          },
                          child: const CustomContinueButton())
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
