import 'package:flutter/material.dart';

import 'package:get/get.dart';

// problem with spacing around

class CustomButton extends StatelessWidget {
  const CustomButton(this.buttonText, this.isOnBoardingScreen, {Key? key})
      : super(key: key);

  final String buttonText;

  // final Icon? buttonIcon;
  final bool isOnBoardingScreen;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: Get.height * 0.06157,
        width: Get.width,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFF0075FF),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: Get.width * 0.7,
                  alignment: Alignment.center,
                  child: Text(
                    buttonText,
                    style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
                (isOnBoardingScreen) ?
                    Icon(
                        size: 20,
                        Icons.arrow_forward_rounded,
                      )
                    : const SizedBox(width: 0, height: 0,)
              ],
            )));
  }
}
