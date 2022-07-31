import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';

import 'package:first_app/constant/colors.dart';

class TabText extends StatelessWidget {
  const TabText(this.text, {Key? key})
      : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: 59,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          WhiteText(true, text, 16, FontWeight.w500, AppColors.blue),
          Divider(color: AppColors.blue,)
        ],
      ),
    );
  }
}
