import 'package:first_app/constant/colors.dart';
import 'package:first_app/widgets/flat_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ModalBottom extends StatelessWidget {
  const ModalBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 210,
      width: Get.width,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              child: Container(
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/modal_bottom.png")),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: FlatButtons(FontWeight.w600, false, "Top Rated", AppColors.blue, onPressedFunction: null),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: FlatButtons(FontWeight.w600, false, "Top Seller", AppColors.black, onPressedFunction: null),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: FlatButtons(FontWeight.w600, false, "Top Viewed", AppColors.black, onPressedFunction: null),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: FlatButtons(FontWeight.w600, false, "Best Designer", AppColors.black, onPressedFunction: null),
          )
        ],
      )
      );

  }
}
