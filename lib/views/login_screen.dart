import 'package:first_app/constant/colors.dart';
import 'package:first_app/widgets/custom_button.dart';
import 'package:first_app/widgets/custom_text_field.dart';
import 'package:first_app/widgets/flat_buttons.dart';
import 'package:first_app/widgets/social_media_buttons.dart';
import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:first_app/controller/check_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final CheckController ctrl = Get.put(CheckController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 48,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [FlatButtons("Skip", AppColors.black)],
              ),
              const SizedBox(
                height: 14,
              ),
              Row(children: [
                const WhiteText(
                    "Hi, Welcome Back!", 24, FontWeight.w600, AppColors.black),
                const SizedBox(
                  width: 12.93,
                ),
                SizedBox(child: Image.asset("assets/images/handwave.png"))
              ]),
              const SizedBox(
                height: 5,
              ),
              Row(children: const [
                WhiteText("Hello again, you've been missed!", 14, FontWeight.w400,
                    AppColors.black),
              ]),
              const SizedBox(
                height: 50,
              ),
              const WhiteText(
                  "Email Address", 16, FontWeight.w500, AppColors.black),
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                  TextInputType.text, false, "example@gmail.com"),
              const SizedBox(
                height: 40,
              ),
              const WhiteText("Password", 16, FontWeight.w500, AppColors.black),
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                  TextInputType.text, true, "example@gmail.com"),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
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
                  const Expanded(
                    child: FittedBox(
                        child: WhiteText(
                            "Remember me", 14, FontWeight.w400, AppColors.black)),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  const Expanded(child: FlatButtons("Forgot Password?", AppColors.red))
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const CustomButton("Login", false),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 1,
                    width: 110,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.offWhite)),
                  ),
                  const WhiteText(
                      "or Login with", 14, FontWeight.w400, AppColors.black),
                  Container(
                    height: 1,
                    width: 110,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.offWhite)),
                  ),
                ],
              ),
              const SizedBox(
                height: 65,
              ),
              Row(
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
              const SizedBox(
                height: 67,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                WhiteText("Don't have an account?", 14, FontWeight.w500,
                    AppColors.black),
                FlatButtons("Sign up", AppColors.blue),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
