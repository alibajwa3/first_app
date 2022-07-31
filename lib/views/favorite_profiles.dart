import 'package:first_app/widgets/tab_text.dart';
import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../controller/tab_controller.dart';
import '../widgets/header_with_search_bar.dart';

class FavoriteProfiles extends StatelessWidget {
  FavoriteProfiles({Key? key}) : super(key: key);

  final MyTabController tabController = Get.put(MyTabController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      child: Column(
        children: [
          const HeaderWithSearchBar(),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: SizedBox(
              width: Get.width,
              child: Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: GestureDetector(
                        onTap: () {
                          tabController.showingFavoriteProfiles.value = true;
                        },
                        child: Obx(
                          () => Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              tabController.showingFavoriteProfiles.value
                                  ? const WhiteText(true, "Profiles", 16,
                                      FontWeight.w600, AppColors.blue)
                                  : const WhiteText(true, "Profiles", 16,
                                      FontWeight.w600, AppColors.greyText),
                              tabController.showingFavoriteProfiles.value
                                  ? const Padding(
                                      padding:
                                          EdgeInsets.only(left: 15, right: 15),
                                      child: Divider(
                                        height: 0,
                                        thickness: 2,
                                        color: AppColors.blue,
                                      ))
                                  : const SizedBox(),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 80,
                    child: GestureDetector(
                        onTap: () {
                          tabController.showingFavoriteProfiles.value = false;
                        },
                        child: Obx(
                          () => Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              tabController.showingFavoriteProfiles.value
                                  ? const WhiteText(true, "Gigs", 16,
                                      FontWeight.w600, AppColors.greyText)
                                  : const WhiteText(true, "Gigs", 16,
                                      FontWeight.w600, AppColors.blue),
                              tabController.showingFavoriteProfiles.value
                                  ? const SizedBox()
                                  : const Padding(
                                      padding:
                                          EdgeInsets.only(left: 23, right: 22),
                                      child: Divider(
                                        height: 0,
                                        thickness: 2,
                                        color: AppColors.blue,
                                      )),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
