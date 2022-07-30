import 'package:favorite_button/favorite_button.dart';
import 'package:first_app/widgets/tag_container.dart';
import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/colors.dart';

class ProfilesOnLogoDesignSecond extends StatelessWidget {
  final String imageAssetPath;
  final String profileName;
  final String profileDescription;
  final int offerPrice;
  final int numberOfReviews;
  final String designation;
  final String location;
  const ProfilesOnLogoDesignSecond(
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
        elevation: 2,
        child: SizedBox(
          height: 192,
          width: 162,
          child: Stack(
            children: [
              Positioned(
                  top: 10,
                  left: 10,
                  bottom: 152,
                  right: 122,
                  child: Image.asset(imageAssetPath)),
              Positioned(
                  top: 13,
                  left: 50,
                  bottom: 164,
                  right: 54,
                  child: WhiteText(false, profileName, 10, FontWeight.w600,
                      AppColors.black)),
              Positioned(
                top: 28,
                left: 50,
                bottom: 142,
                right: 29,
                child: WhiteText(false, profileDescription, 7, FontWeight.w400,
                    AppColors.black),
              ),
              Positioned(
                top: 11.55,
                left: 139.17,
                bottom: 169.75,
                right: 11.17,
                child: FavoriteButton(
                  iconSize: 24,
                  isFavorite: true,
                  valueChanged: (isFavorite) {},
                ),
              ),
              Positioned(
                top: 47,
                left: 12,
                bottom: 133,
                right: 124,
                child: WhiteText(false, '$offerPrice\$/hr', 8, FontWeight.w600,
                    AppColors.black),
              ),
              Positioned(
                top: 56,
                left: 50,
                bottom: 129,
                right: 56,
                child: SizedBox(
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 10,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 0.000000001),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                ),
              ),
              Positioned(
                top: 57,
                left: 102,
                right: 22,
                bottom: 129,
                child: Text(
                  "( $numberOfReviews reviews )",
                  style: const TextStyle(fontSize: 6, fontFamily: "Poppins"),
                ),
              ),
              Positioned(
                top: 71,
                bottom: 109,
                right: 35,
                left: 35,
                child: SizedBox(
                  child: Text(
                    "$designation, $location",
                    style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 7,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Positioned(
                top: 96,
                left: 10,
                child: SizedBox(
                  width: 104,
                  child: Wrap(
                    children: const [
                      TagContainer(7, "Design"),
                      TagContainer(7, "Graphic Design"),
                      TagContainer(7, "Web Design"),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 160,
                left: 10,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 7),
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.black),
                                borderRadius: BorderRadius.circular(3),
                                color: AppColors.white,
                              ),
                              child: const Text(
                                "View Profile",
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 8,
                                    fontFamily: "Poppins"),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 7),
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.black),
                                  borderRadius: BorderRadius.circular(3),
                                  color: AppColors.white,
                                ),
                                child: const Text(
                                  "Chat",
                                  style: TextStyle(
                                      color: AppColors.black,
                                      fontSize: 8,
                                      fontFamily: "Poppins"),
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: InkWell(
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
                                      fontSize: 8,
                                      fontFamily: "Poppins"),
                                )),
                          ),
                        ),
                      ],),
                  ),
                ),
              )
            ],
          ),
        )
        // Container(
        //   height: 192,
        //   width: 162,
        //   child: Column(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        //         child: SizedBox(
        //           child: Row(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Center(
        //                   child: ClipOval(
        //                       child: SizedBox.fromSize(
        //                         size: const Size.fromRadius(18),
        //                         child: Image.asset(
        //                           imageAssetPath,
        //                           width: 30,
        //                           height: 30,
        //                           fit: BoxFit.fill,
        //                         ),
        //                       )),
        //                 ),
        //                 Padding(
        //                   padding: const EdgeInsets.only(left: 10, right: 6.17),
        //                   child: Container(
        //                     child: SizedBox(
        //                         width: 70,
        //                         child: Column(
        //                       mainAxisAlignment: MainAxisAlignment.start,
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: [
        //                       Padding(
        //                         padding: const EdgeInsets.only(bottom: 1),
        //                         child: WhiteText(false, profileName, 10, FontWeight.w600, AppColors.black),
        //                       ),
        //                         SizedBox(child: WhiteText(false, profileDescription, 7, FontWeight.w400, AppColors.black))
        //                     ],)),
        //                   ),
        //                 ),
        //                 FavoriteButton(
        //                   iconSize: 1,
        //                   isFavorite: true,
        //                   valueChanged: (isFavorite) {},
        //                 ),
        //               ],
        //           ),
        //         ),
        //       ),
        //
        //     ],
        //   ),
        // ),
        );
  }
}
