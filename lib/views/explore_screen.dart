import 'package:first_app/widgets/flat_buttons.dart';
import 'package:first_app/widgets/gigs.dart';
import 'package:first_app/widgets/profiles.dart';
import 'package:flutter/material.dart';
import 'package:first_app/widgets/gradient_container.dart';
import 'package:first_app/widgets/white_text.dart';
import 'package:get/get.dart';
import 'package:first_app/widgets/icon_button_custom.dart';
import 'package:first_app/widgets/search_bar.dart';
import 'package:first_app/constant/colors.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(children: [
          SizedBox(
            height: Get.height * 0.1847,
            child: Stack(
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
                              child: WhiteText(false, "Explore", 18,
                                  FontWeight.w600, AppColors.white)),
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
                      child: const SearchBar("What you want to explore?")),
                ),
              ],
            ),
          ),
        ]),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.0246,
              ),
              SizedBox(
                child: Row(
                  children: [
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: WhiteText(false, "Profiles", 16, FontWeight.w800,
                            AppColors.black),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: FlatButtons(true, "See All", AppColors.blue),
                    ),
                    SizedBox(
                      height: Get.height * 0.01847,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Get.height * 0.0184729064,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            height: Get.height * 0.3017,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProfilesWidget(
                    "App Developer",
                    "Pakistan",
                    825,
                    15,
                    "I will develop Flutter app for you",
                    "Ali Bajwa",
                    "assets/images/bruce.png"),
                ProfilesWidget(
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
        SizedBox(
          height: Get.height * 0.0246,
        ),
        SizedBox(
          child: Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: WhiteText(
                      false, "Profiles", 16, FontWeight.w800, AppColors.black),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: FlatButtons(true, "See All", AppColors.blue),
              ),
              SizedBox(
                height: Get.height * 0.01847,
              ),
            ],
          ),
        ),
        SizedBox(
          child: SingleChildScrollView(
            child: SizedBox(
              height: Get.height * 0.7,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 5.5,
                mainAxisSpacing: 5.5,
                children: const [
                  GigsWidget(5, 100, 34, "I will design a beautiful logo for you"),
                  GigsWidget(5, 100, 34, "I will design a beautiful app for you"),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
