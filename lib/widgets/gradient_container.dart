import 'package:flutter/material.dart';
import 'package:first_app/constant/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GradientContainer extends StatelessWidget {
  final bool isBeingUsedOnHomeScreen;

  const GradientContainer(this.isBeingUsedOnHomeScreen, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: isBeingUsedOnHomeScreen ? 215 : 150,
        width: Get.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              AppColors.gradientFirst,
              AppColors.gradientSecond,
            ]
          ),
        ),
      ),
    );
  }
}
