import 'package:first_app/widgets/gradient_container.dart';
import 'package:first_app/widgets/orders.dart';
import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/colors.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      child: SizedBox(
        child: Stack(
            children: [
          const GradientContainer(true),
          Positioned(
            top: 43,
            left: 273,
            right: 20,
            child: SizedBox(
              child: Row(
                children: [
                  Positioned(
                    top: 41,
                    left: 287,
                    right: 64,
                    child: GestureDetector(
                      onTap: null,
                      child: Image.asset("assets/images/notifications.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Positioned(
                      top: 40,
                      left: 331,
                      child: GestureDetector(
                        onTap: null,
                        child: Image.asset("assets/images/maps_ugc.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            top: 40,
            left: 20,
            child: WhiteText(
                false, "Orders", 18, FontWeight.w600, AppColors.white),
          ),
          Positioned(
            top: 97,
            left: 20,
            child: Container(
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              alignment: Alignment.center,
              height: 30,
              width: 48,
              child: const WhiteText(
                  false, "New", 12, FontWeight.w500, AppColors.blue),
            ),
          ),
          Positioned(
            top: 97,
            left: 88,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: AppColors.white),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              alignment: Alignment.center,
              height: 30,
              width: 96,
              child: const WhiteText(
                  false, "In Progress", 12, FontWeight.w500, AppColors.white),
            ),
          ),
          Positioned(
            top: 97,
            left: 192,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: AppColors.white),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              alignment: Alignment.center,
              height: 30,
              width: 96,
              child: const WhiteText(
                  false, "Completed", 12, FontWeight.w500, AppColors.white),
            ),
          ),
              Container(
                margin: EdgeInsets.only(top: 200),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child:
                      WhiteText(false, "Today", 16, FontWeight.w600, AppColors.black),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 100),
                      child: SizedBox(
                        child: ListView(
                          shrinkWrap: true,
                          primary: false,
                          children: const [
                            Orders(13, "alibajwa89", "I will build Flutter app for you",
                                500, "assets/images/girl_back.png"),
                            Orders(13, "alibajwa89", "I will build Flutter app for you",
                                500, "assets/images/girl_back.png"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
        ]),
      ),
    );
  }
}
