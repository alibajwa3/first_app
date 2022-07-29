import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/colors.dart';

class CustomOffersWidget extends StatelessWidget {
  final String offerDescription;
  final int offerPrice;
  const CustomOffersWidget(this.offerDescription, this.offerPrice, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      child: SizedBox(
        width: Get.width * 0.89,
        child: Row(
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: Image.asset("assets/images/logo_first_offer.png"),
            ),
            SizedBox(
              height: 120,
              width: Get.width * 0.5733,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: WhiteText(
                        false,
                        offerDescription,
                        14,
                        FontWeight.w800,
                        AppColors.black),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: WhiteText(false, '$offerPrice\$', 14,
                              FontWeight.w600, AppColors.black),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: AppColors.blue,
                            ),
                            child: const Text(
                              "View",
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 12,
                                  fontFamily: "Poppins"),
                            )),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
