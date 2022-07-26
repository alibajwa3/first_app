import 'package:first_app/constant/colors.dart';
import 'package:first_app/widgets/custom_button.dart';
import 'package:first_app/widgets/custom_text_field.dart';
import 'package:first_app/widgets/flat_buttons.dart';
import 'package:first_app/widgets/social_media_buttons.dart';
import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 83,
            ),
            Row(children: const [
              WhiteText(
                  "Hi, Welcome Back!", 24, FontWeight.w600, AppColors.black),
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
            WhiteText("Email Address", 16, FontWeight.w500, AppColors.black),
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(
                TextInputType.text, false, "example@gmail.com"),
            const SizedBox(
              height: 40,
            ),
            WhiteText("Password", 16, FontWeight.w500, AppColors.black),
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
              children: const  [
                Checkbox(

                    value: false,
                    onChanged: null,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(),
                    )),
                SizedBox(
                  width: 10,
                ),
                WhiteText(
                    "Remember me", 14, FontWeight.w400, AppColors.black),
                SizedBox(
                  width: 72,
                ),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                WhiteText("or Login with", 14, FontWeight.w400, AppColors.black)
              ],
            ),
            const SizedBox(
              height: 65,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SocialMediaButton(
                    ImageIcon(AssetImage("assets/icons/facebook.png")),
                    "Facebook"),
                SizedBox(
                  width: 23,
                ),
                SocialMediaButton(
                    ImageIcon(AssetImage("assets/icons/google.png")), "Google"),
              ],
            ),
            const SizedBox(
              height: 67,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                WhiteText("Don't have an account?", 14, FontWeight.w500,
                    AppColors.black),
                FlatButtons("Sign up", AppColors.red)
              ],
            )
          ],
        ),
      ),
    );
  }
}
