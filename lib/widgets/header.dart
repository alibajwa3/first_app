import 'package:first_app/widgets/back_arrow_button.dart';
import 'package:first_app/widgets/icon_button_custom.dart';
import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/colors.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      width: Get.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 46,),
        child: SizedBox(child: Row(children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 6),
            child: BackArrowButton(),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: WhiteText(false, "Logo Design", 16, FontWeight.w600, AppColors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 13),
            child: GestureDetector(
                child: const Icon(Icons.search, color: AppColors.black,)),
          )
        ],)),
      ),
    );
  }
}
