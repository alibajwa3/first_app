import 'package:first_app/widgets/back_arrow_button.dart';
import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/colors.dart';

class HeaderWithSearchBar extends StatelessWidget {
  const HeaderWithSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Container(
          color: AppColors.white,
          height: 80,
          width: Get.width,
          child: Stack(
            children: [
              const Positioned(
                top: 49,
                left: 20,
                child: const BackArrowButton(),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 52, top: 46),
                child: WhiteText(
                    false, "Favorites", 16, FontWeight.w500, AppColors.black),
              ),
              Positioned(
                top: 44,
                right: 13,
                child: GestureDetector(
                  onTap: () {
                  },
                  child: Image.asset(
                    "assets/images/search_icon.png",
                    scale: 1.3,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
