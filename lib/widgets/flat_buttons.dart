import 'package:flutter/material.dart';

class FlatButtons extends StatelessWidget {
  final String buttonText;
  final Color color;
  final bool wantUnderline;
  final FontWeight fontWeight;
  final VoidCallback? onPressedFunction;
  const FlatButtons(this.fontWeight, this.wantUnderline, this.buttonText, this.color, {Key? key, required this.onPressedFunction}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressedFunction,
      child: Text(
        buttonText,
        style: TextStyle(color: color, fontFamily: "Poppins", decoration: wantUnderline ? TextDecoration.underline : TextDecoration.none, fontWeight: fontWeight),
      ),
    );
    // return SizedBox(
    //   child: TextButton(
    //       onPressed: null,
    //       child: Text(
    //         buttonText,
    //         style: TextStyle(color: color, fontSize: 14),
    //       )),
    // );
  }
}
