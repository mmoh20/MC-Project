import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/app_colors.dart';
import '../../app/app_fonts.dart';
import '../../app/app_words.dart';
import 'custom_submit_button.dart';

TextButton fPassButton(BuildContext context) {
  return TextButton(
    onPressed: () {
      showModalBottomSheet<void>(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(75.r), topLeft: Radius.circular(75.r)),
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
                            const InputDecoration(hintText: '+971'),
                        readOnly: false,
                        dropDownItemCount: 3,
                        searchShowCursor: false,
                        enableSearch: false,
                        //searchKeyboardType: TextInputType.number,
                        dropDownList: const [
                          DropDownValueModel(name: 'Egypt', value: "+20"),
                          DropDownValueModel(name: 'Qatar', value: "+974"),
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
                        decoration: InputDecoration(hintText: 'Ex.1212440126'),
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
  );
}
