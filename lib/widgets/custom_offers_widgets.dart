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
        width: 335,
        child: Row(
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: Image.asset("assets/images/logo_first_offer.png"),
            ),
            SizedBox(
              height: 120,
              width: 215,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15, top: 15
                    ),
                    child: SizedBox(
                      height: 42,
                      width: 169,
                      child: WhiteText(
                          false,
                          offerDescription,
                          14,
                          FontWeight.w800,
                          AppColors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 29, left: 15),
                    child: SizedBox(
                      child: Row(
                        children: [
                          const WhiteText(false, "Started: ", 14, FontWeight.w400, AppColors.greyText),
                          WhiteText(false, '$offerPrice\$', 14,
                              FontWeight.w600, AppColors.blue),

                        ],
                      ),
                    ),
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
