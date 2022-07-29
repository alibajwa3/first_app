import 'package:flutter/material.dart';

import 'package:first_app/constant/colors.dart';

class WhiteText extends StatelessWidget {
  const WhiteText(this.wantCenterJustification, this.textBody, this.textSize, this.fontWeight, this.textColor, {Key? key})
      : super(key: key);

  final String? textBody;
  final double? textSize;
  final FontWeight? fontWeight;
  final Color textColor;
  final bool wantCenterJustification;

  @override
  Widget build(BuildContext context) {
    return Text(textBody as String,
        textAlign: wantCenterJustification ? TextAlign.center : TextAlign.left,
        style: TextStyle(
          fontSize: textSize,
          fontWeight: fontWeight,
          fontFamily: "Poppins",
          color: textColor,
        ));
  }
}
