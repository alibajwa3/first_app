import 'package:first_app/constant/colors.dart';
import 'package:first_app/widgets/custom_button.dart';
import 'package:first_app/widgets/custom_text_field.dart';
import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:first_app/widgets/social_media_buttons.dart';
import 'package:first_app/widgets/flat_buttons.dart';
import 'package:first_app/widgets/back_arrow_button.dart';
import 'package:first_app/controller/check_controller.dart';

class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({Key? key}) : super(key: key);
  final CheckController ctrl = Get.put(CheckController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 52,
          ),
          const BackArrowButton(),
          const SizedBox(
            height: 20,
          ),
          const WhiteText(false,
              "Create Account", 24, FontWeight.w600, AppColors.black),
          const SizedBox(
            height: 5,
          ),
          const WhiteText(false, "Stay connected and earn money", 14, FontWeight.w400,
              AppColors.black),
          const SizedBox(
            height: 30,
          ),
          const CustomTextField(TextInputType.text, false, "Name"),
          const SizedBox(
            height: 20,
          ),
          const CustomTextField(TextInputType.emailAddress, false, "Email"),
          const SizedBox(
            height: 20,
          ),
          const CustomTextField(TextInputType.text, true, "Password"),
          const SizedBox(
            height: 20,
          ),
          const CustomTextField(TextInputType.text, true, "Confirm Password"),
          const SizedBox(
            height: 23,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              width: 24,
              height: 24,
              child: Obx(
                () => Checkbox(
                  splashRadius: 10,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  value: ctrl.checkBool.value,
                  onChanged: (value) {
                    ctrl.checkBool.value = !ctrl.checkBool.value;
                  },
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const FittedBox(
                child: WhiteText(false,
                    "I agree with the term and conditions", 14, FontWeight.w400, AppColors.black)),
          ]),
          const SizedBox(height: 50,),
          const CustomButton("Sign Up", false),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 1,
                width: 110,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.offWhite)),
              ),
              const WhiteText(false,
                  "or Login with", 14, FontWeight.w400, AppColors.black),
              Container(
                height: 1,
                width: 110,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.offWhite)),
              ),
            ],
          ),
          const SizedBox(height: 50,),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SocialMediaButton(
                    Image.asset("assets/images/facebook.png"), "Facebook"),
                const SizedBox(
                  width: 23,
                ),
                SocialMediaButton(
                    Image.asset("assets/images/google.png"), "Google"),
              ],
            ),
          ),
          const SizedBox(height: 35,),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            WhiteText(false, "Already have an account?", 14, FontWeight.w500,
                AppColors.black),
            FlatButtons(FontWeight.w500, false, "Login", AppColors.blue, onPressedFunction: null,),
          ])
        ]),
      ),
    );
  }
}
