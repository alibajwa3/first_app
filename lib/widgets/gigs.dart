import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';
import '';
import '../constant/colors.dart';
import '../constant/styles.dart';

class GigsWidget extends StatelessWidget {
  final String title;
  final int gigPrice;
  final int numberOfReviews;
  final double gigRating;
  final String imageAssetPath;

  const GigsWidget( this.imageAssetPath,
      this.gigRating, this.numberOfReviews, this.gigPrice, this.title,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Card(
      child: SizedBox(
        width: 162,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            child: SizedBox(
              height: 113,
              width: 162,
              child: Image.asset(
                imageAssetPath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
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
                  Text("$gigPrice\$", style: style)
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
