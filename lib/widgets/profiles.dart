import 'package:first_app/widgets/tag_container.dart';
import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../constant/colors.dart';

class ProfilesWidget extends StatelessWidget {
  final String imageAssetPath;
  final String profileName;
  final String profileDescription;
  final int offerPrice;
  final int numberOfReviews;
  final String designation;
  final String location;
  const ProfilesWidget(
      this.designation,
      this.location,
      this.numberOfReviews,
      this.offerPrice,
      this.profileDescription,
      this.profileName,
      this.imageAssetPath,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
          // s
          height: Get.height * 0.3017,
          width: Get.width * 0.776,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 15.64, right: 15.33),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: ClipOval(
                          child: SizedBox.fromSize(
                        size: const Size.fromRadius(26),
                        child: Image.asset(
                          imageAssetPath,
                          width: 50,
                          height: 50,
                          fit: BoxFit.fill,
                        ),
                      )),
                    ),
                    SizedBox(
                      width: Get.width * 0.0533,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: Get.height * 0.06689,
                        width: Get.width * 0.3946,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WhiteText(false, profileName, 14, FontWeight.w600,
                                AppColors.black),
                            SizedBox(
                              height: Get.height * 0.004088,
                            ),
                            WhiteText(false, profileDescription, 10,
                                FontWeight.w400, AppColors.black)
                          ],
                        ),
                      ),
                    ),
                    FavoriteButton(
                      iconSize: 30,
                      isFavorite: true,
                      valueChanged: (isFavorite) {},
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.014,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: WhiteText(false, '$offerPrice\$/hr', 12,
                          FontWeight.w600, AppColors.black),
                    ),
                    SizedBox(
                      width: Get.width * 0.0600,
                    ),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 15,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    SizedBox(
                      width: Get.width * 0.02317,
                    ),
                    Text(
                      "( $numberOfReviews reviews )",
                      style:
                          const TextStyle(fontSize: 8, fontFamily: "Poppins"),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.01744,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "$designation, $location",
                    style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.0203,
                ),
                Wrap(
                  children: const [
                    TagContainer("Design"),
                    TagContainer("Graphic Design"),
                    TagContainer("Web Design"),
                    TagContainer("UI/UX Design"),
                    TagContainer("Print Design"),
                  ],
                ),
                SizedBox(height: Get.height * 0.01111,),
                Row(children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.black),
                          borderRadius: BorderRadius.circular(3),
                          color: AppColors.white,
                        ),
                        child: const Text(
                          "View Profile",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 12,
                              fontFamily: "Poppins"),
                        )),
                  ),
                  SizedBox(width: Get.width * 0.048,),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.black),
                          borderRadius: BorderRadius.circular(3),
                          color: AppColors.white,
                        ),
                        child: const Text(
                          "Chat",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 12,
                              fontFamily: "Poppins"),
                        )),
                  ),
                  SizedBox(width: Get.width * 0.048,),
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
                ],)
              ],
            ),
          )),
    );
  }
}
