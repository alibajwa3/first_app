import 'package:first_app/model/offers_widget.dart';
import 'package:first_app/widgets/custom_offers_widgets.dart';
import 'package:first_app/widgets/gradient_container.dart';
import 'package:first_app/widgets/icon_button_custom.dart';
import 'package:first_app/widgets/search_bar.dart';
import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/colors.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            const GradientContainer(false),
            Positioned(
                top: 40,
                left: 20,
                child: SizedBox(
                  height: 27,
                  width: Get.width * 0.8933,
                  child: Row(
                    children: const [
                      Expanded(
                          child: WhiteText(false, "Offers", 18, FontWeight.w600,
                              AppColors.white)),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: IconButtonCustom(
                            "assets/images/notifications.png", null),
                      ),
                      IconButtonCustom("assets/images/maps_ugc.png", null)
                    ],
                  ),
                )),
            Positioned(
              top: 86,
              left: 20,
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const SearchBar("Search for any offer")),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: Get.height * 0.73,
          width: Get.width,
          child: Stack(children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                height: Get.height * 0.5812,
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: Get.height * 0.5812,
                    child: ListView.builder(
                      itemCount: OFFERS_LIST.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: CustomOffersWidget(
                              OFFERS_LIST[index].offerTitle,
                              OFFERS_LIST[index].offerPrice),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 552,
                left: Get.width * 0.8133,
                child: const FloatingActionButton(
                  onPressed: null,
                  backgroundColor: AppColors.blue,
                  child: Icon(Icons.add),
                ))
          ]),
        ),
      ],
    );
  }
}
