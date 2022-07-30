import 'package:first_app/widgets/icon_button_custom.dart';
import 'package:first_app/widgets/tag_container.dart';
import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/colors.dart';

class Orders extends StatelessWidget {
  final String imageAssetPath;
  final int orderPrice;
  final String orderDescription;
  final String buyerName;
  final int timeAfterOrderPlaced;
  const Orders(this.timeAfterOrderPlaced, this.buyerName, this.orderDescription,
      this.orderPrice, this.imageAssetPath,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      height: 135,
      // width: 335,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 70,
                    width: 90,
                    child: Image.asset(imageAssetPath),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: Get.width * 0.54,
                            child: Row(
                              children: [
                                WhiteText(false, "\$$orderPrice", 14,
                                    FontWeight.w600, AppColors.black),
                                SizedBox(
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                      color: AppColors.red.withOpacity(0.21),
                                    ),
                                    height: 21,
                                    width: 42,
                                    child: const Text(
                                      "New",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 10,
                                          color: AppColors.red),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Container(
                                height: 30,
                                width: 184,
                                child: WhiteText(false, orderDescription, 10,
                                    FontWeight.w400, AppColors.black)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Image.asset(
                      "assets/images/placeholder_orders.png",
                      width: 20,
                      height: 20,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 16),
                    child: WhiteText(
                        false, buyerName, 12, FontWeight.w600, AppColors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 17, left: 10),
                    child: WhiteText(
                      false,
                      "($timeAfterOrderPlaced hrs ago)",
                      12,
                      FontWeight.w500,
                      AppColors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.33),
                    child: GestureDetector(
                        onTap: null,
                        child: const Icon(Icons.more_vert)),
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
