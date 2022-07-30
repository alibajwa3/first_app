import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';

class TagContainer extends StatelessWidget {
  final String tagTitle;
  final double fontSize;
  const TagContainer(this.fontSize, this.tagTitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.34, bottom: 4.34),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(3.0),
        child: Container(
          color: AppColors.greyColor,
          padding: const EdgeInsets.all(4.5),
          child: WhiteText(true, tagTitle, fontSize, FontWeight.w400, AppColors.black),
        ),
      ),
    );
  }
}
