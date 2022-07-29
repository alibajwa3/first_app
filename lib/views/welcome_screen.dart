import 'package:first_app/widgets/custom_button.dart';
import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';

import 'package:first_app/constant/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.2832,
            ),
            Container(
                alignment: Alignment.center,
                child: SizedBox(
                  height: Get.height * 0.2034,
                  width: 279.22,
                  child: Image.asset("assets/images/girl.png"),
                )),
            SizedBox(
              height: Get.height * 0.1032,
            ),
            Container(
              alignment: Alignment.center,
              child: SizedBox(
                width: 258,
                height: Get.height * 0.1034,
                child: const WhiteText(false, "Work remotely with client or company", 26,
                    FontWeight.w600, AppColors.black),
              ),
            ),
            SizedBox(height: Get.height * 0.0369,),
            Container(
              alignment: Alignment.center,
              child: SizedBox(
                width: 324,
                height: Get.height * 0.09236,
                child: const WhiteText(true, "In freelance app user can work from home for any client or company. And it's one of the best platforms to earn money", 14,
                    FontWeight.w400, AppColors.black),
              ),
            ),
            SizedBox(height: Get.height * 0.08620,),
            const Padding(padding: EdgeInsets.only(left: 20, right: 20), child: CustomButton("Let's Start", true)),
          ],
        ),
      ),
    );
  }
}
