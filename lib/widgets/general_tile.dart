import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/colors.dart';

class GeneralTile extends StatelessWidget {
  final String iconPath;
  final String tileTitle;
  const GeneralTile(this.iconPath, this.tileTitle, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 54,
      width: Get.width,
      child: SizedBox(
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 0),
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: Image.asset(iconPath),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 1),
                child: WhiteText(false, tileTitle, 14, FontWeight.w400, AppColors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
