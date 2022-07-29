import 'package:first_app/constant/colors.dart';
import 'package:first_app/widgets/back_arrow_button.dart';
import 'package:first_app/widgets/custom_button.dart';
import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:first_app/widgets/flat_buttons.dart';

class ConfirmEmailScreen extends StatelessWidget {
  const ConfirmEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 52,
          ),
          const BackArrowButton(),
          const SizedBox(
            height: 146,
          ),
          Container(
              alignment: Alignment.center,
              child: const WhiteText(false,
                  "Confirm Your E-mail", 20, FontWeight.w700, AppColors.black)),
          const SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.center,
            child: const WhiteText(false, "Enter your 4 digits code", 14,
                FontWeight.w600, AppColors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              alignment: Alignment.center,
              child: const WhiteText(false,
                  "example@gmail.com", 14, FontWeight.w400, AppColors.black)),
          const SizedBox(
            height: 60,
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            child: SizedBox(
              width: Get.width*0.5,
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                onChanged: (value) {},
                pinTheme: PinTheme(
                  fieldOuterPadding: EdgeInsets.symmetric(horizontal: 0),
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 40,
                  fieldWidth: 40,
                  activeColor: AppColors.blue,
                  inactiveColor: AppColors.offWhite,
                ),
                textStyle: const TextStyle(fontFamily: "Poppins"),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            WhiteText(false,
                "Did you get the code?", 14, FontWeight.w500, AppColors.black,),
            FlatButtons( false, "Please resend", AppColors.blue),
          ]),
          const SizedBox(
            height: 30,
          ),
          const CustomButton("Sign Up", false)
        ],
      ),
    ));
  }
}
