import 'package:first_app/model/home_screen_widget.dart';
import 'package:first_app/widgets/flat_buttons.dart';
import 'package:first_app/widgets/gradient_container.dart';
import 'package:first_app/widgets/services_tile.dart';
import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../constant/colors.dart';
import 'package:first_app/widgets/home_screen_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: AppColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height,
              width: Get.width,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.only(top: 320),
                      child: Column(
                        children: [
                          const SizedBox(
                            //Searchh Bar here
                            height: 84,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                width: Get.width * 0.83,
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: WhiteText("Popular Services", 16,
                                      FontWeight.w600, AppColors.black),
                                ),
                              ),
                              const FlatButtons("See All", AppColors.blue)
                            ],
                          ),
                          SingleChildScrollView(
                            child: GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                crossAxisSpacing: 3,
                                mainAxisSpacing: 3,
                              ),
                              itemCount: WIDGETS_LIST.length,
                              itemBuilder: ((context, index) {
                                return HomeScreenWidget(
                                    WIDGETS_LIST[index].widgetIconPath,
                                    WIDGETS_LIST[index].widgetTitle);
                              }),
                            ),
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(top: 0, child: GradientContainer(true)),
                  Positioned(
                      top: 45,
                      left: 291,
                      child: Image.asset("assets/images/notifications.png")),
                  const Positioned(
                      top: 40,
                      left: 20,
                      child: WhiteText(
                          "Home", 20, FontWeight.w600, AppColors.white)),
                  const Positioned(
                      top: 90,
                      left: 20,
                      child: WhiteText(
                          "Offers", 18, FontWeight.w600, AppColors.white)),
                  Positioned(
                      top: 43,
                      left: 331,
                      child: Image.asset("assets/images/maps_ugc.png")),
                  Positioned(
                      top: 110,
                      right: 327,
                      child: Image.asset("assets/images/ellipse_a.png")),
                  Positioned(
                      top: 70,
                      left: 301,
                      child: Image.asset("assets/images/ellipse_b.png")),
                  Positioned(
                    top: 150,
                    left: 20,
                    child: SizedBox(
                      height: 300,
                      width: 400,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: SizedBox(
                              width: 280,
                              child: ServicesTile(
                                  "View",
                                  "85",
                                  "Logo Designer Required",
                                  "assets/images/logoa.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: SizedBox(
                              child: ServicesTile(
                                  "View",
                                  "85",
                                  "Logo Designer Required",
                                  "assets/images/logoa.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
