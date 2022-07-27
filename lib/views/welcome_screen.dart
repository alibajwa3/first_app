import 'package:first_app/widgets/custom_button.dart';
import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';

import 'package:first_app/constant/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 230,
          ),
          Container(
              alignment: Alignment.center,
              child: SizedBox(
                height: 165.2,
                width: 279.22,
                child: Image.asset("assets/images/girl.png"),
              )),
          const SizedBox(
            height: 83.8,
          ),
          Container(
            alignment: Alignment.center,
            child: const SizedBox(
              width: 258,
              height: 84,
              child: WhiteText("Work remotely with client or company", 26,
                  FontWeight.w600, AppColors.black),
            ),
          ),
          const SizedBox(height: 30,),
          Container(
            alignment: Alignment.center,
            child: const SizedBox(
              width: 324,
              height: 75,
              child: WhiteText("In freelance app user can work from home for any client or company. And it's one of the best platforms to earn money", 14,
                  FontWeight.w400, AppColors.black),
            ),
          ),
          const SizedBox(height: 70,),
          const Padding(padding: EdgeInsets.all(20), child: CustomButton("Let's Start", true)),
        ],
      ),
    );
  }
}
