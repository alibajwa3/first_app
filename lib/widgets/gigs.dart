import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';

class GigsWidget extends StatelessWidget {
  final String title;
  final int gigPrice;
  final int numberOfReviews;
  final double gigRating;

  const GigsWidget(
      this.gigRating, this.numberOfReviews, this.gigPrice, this.title,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: SizedBox(
        height: 185,
        width: 162,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 113,
              width: 162,
              child: Image.asset("assets/images/girl.png"),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child:
                  WhiteText(false, title, 10, FontWeight.w400, AppColors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SizedBox(
                child: Row(
                  children: [
                    const Icon(
                      Icons.star_outlined,
                      color: AppColors.goldenColor,
                      size: 12,
                    ),
                    Text(
                      "$gigRating",
                      style: const TextStyle(
                          color: AppColors.goldenColor,
                          fontSize: 8,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600),
                    ),
                    Expanded(
                      child: Text(
                        '($numberOfReviews)',
                        style:
                            const TextStyle(fontSize: 8, fontFamily: "Poppins"),
                      ),
                    ),
                    const Text(
                      "Started: ",
                      style: TextStyle(fontSize: 8, fontFamily: "Poppins"),
                    ),
                    Text(
                      "$gigPrice\$",
                      style: const TextStyle(
                          fontSize: 8,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
