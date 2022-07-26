import 'package:flutter/material.dart';

import 'package:first_app/constant/colors.dart';

class WhiteText extends StatelessWidget {
  const WhiteText(this.textBody, this.textSize, this.fontWeight, this.textColor, {Key? key})
      : super(key: key);

  final String? textBody;
  final double? textSize;
  final FontWeight? fontWeight;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(textBody as String,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: textSize,
          fontWeight: fontWeight,
          fontFamily: "Poppins",
          color: textColor,
        ));
  }
}
