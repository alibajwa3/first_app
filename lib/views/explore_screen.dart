import 'package:first_app/model/profiles.dart';
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
    return SizedBox(
      child: Container(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(children: [
                SizedBox(
                  // height: Get.height * 0.1847,
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
                                  padding: EdgeInsets.only(right: 15),
                                  child: IconButtonCustom(
                                      "assets/images/notifications.png", null),
                                ),
                                IconButtonCustom(
                                    "assets/images/maps_ugc.png", null)
                              ],
                            ),
                          )),
                      Positioned(
                        top: 86,
                        left: 20,
                        child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child:
                                const SearchBar("What you want to explore?")),
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
                              child: WhiteText(false, "Profiles", 16,
                                  FontWeight.w800, AppColors.black),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: FlatButtons(
                              FontWeight.w500,
                              true,
                              "See All",
                              AppColors.blue,
                              onPressedFunction: null,
                            ),
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
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemCount: PROFILES_LIST.length,
                      itemBuilder: (context, index) {
                        return ProfilesWidget(
                            PROFILES_LIST[index].designation,
                            PROFILES_LIST[index].location,
                            PROFILES_LIST[index].numberOfReviews,
                            PROFILES_LIST[index].offerPrice,
                            PROFILES_LIST[index].profileDescription,
                            PROFILES_LIST[index].profileName,
                            PROFILES_LIST[index].imageAssetPath);
                      },
                    )),
              ),
              SizedBox(
                height: Get.height * 0.0246,
              ),
              SizedBox(
                child: Row(
                  children: const [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: WhiteText(false, "Gigs", 16, FontWeight.w800,
                            AppColors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: FlatButtons(
                        FontWeight.w500,
                        true,
                        "See All",
                        AppColors.blue,
                        onPressedFunction: null,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.01847,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: GridView.count(
                    padding: EdgeInsets.zero,
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.5,
                    mainAxisSpacing: 5.5,
                    children: const [
                      GigsWidget("assets/images/girl.png", 5, 100, 34,
                          "I will design a beautiful logo for you"),
                      GigsWidget("assets/images/girl.png", 5, 100, 34,
                          "I will design a beautiful app for you"),
                      GigsWidget("assets/images/girl.png", 5, 100, 34,
                          "I will design a beautiful logo for you"),
                      GigsWidget("assets/images/girl.png", 5, 100, 34,
                          "I will design a beautiful app for you"),
                      GigsWidget("assets/images/girl.png", 5, 100, 34,
                          "I will design a beautiful logo for you"),
                      GigsWidget("assets/images/girl.png", 5, 100, 34,
                          "I will design a beautiful app for you"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
