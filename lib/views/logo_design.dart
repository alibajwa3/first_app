import 'package:first_app/widgets/custom_text_field.dart';
import 'package:first_app/widgets/flat_buttons.dart';
import 'package:first_app/widgets/header.dart';
import 'package:first_app/widgets/modal_bottom.dart';
import 'package:first_app/widgets/profiles_on_logo_design_screen.dart';
import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../constant/colors.dart';

class LogoDesign extends StatelessWidget {
  const LogoDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      width: Get.width,
      height: Get.height,
      child: Column(
        children: [
          Column(
            children: [
              const Header(),
              SizedBox(
                child: Row(
                  children: [
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20, left: 20),
                        child: WhiteText(false, "Sort By", 14, FontWeight.w600,
                            AppColors.black),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20, right: 20),
                        child: FlatButtons(
                            FontWeight.w500, false, "Top Rated", AppColors.blue,
                            onPressedFunction: () => showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(25.0),
                                    ),
                                  ),
                                  context: context,
                                  builder: (context) {
                                    return const ModalBottom();
                                  },
                                )
                            // showMaterialModalBottomSheet(
                            //
                            // context: context,
                            // builder: (context) => ModalBottom()),
                            )),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 20),
                child: SizedBox(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: const [
                      ProfilesOnLogoDesign(
                          "App Developer",
                          "Pakistan",
                          825,
                          15,
                          "I will develop Flutter app for you",
                          "Ali Bajwa",
                          "assets/images/bruce.png"),
                      ProfilesOnLogoDesign(
                          "App Developer",
                          "Pakistan",
                          825,
                          15,
                          "I will develop Flutter app for you",
                          "Ali Bajwa",
                          "assets/images/bruce.png"),
                      ProfilesOnLogoDesign(
                          "App Developer",
                          "Pakistan",
                          825,
                          15,
                          "I will develop Flutter app for you",
                          "Ali Bajwa",
                          "assets/images/bruce.png"),
                      ProfilesOnLogoDesign(
                          "App Developer",
                          "Pakistan",
                          825,
                          15,
                          "I will develop Flutter app for you",
                          "Ali Bajwa",
                          "assets/images/bruce.png"),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
