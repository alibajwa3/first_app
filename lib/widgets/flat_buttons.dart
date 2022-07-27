import 'package:flutter/material.dart';

class FlatButtons extends StatelessWidget {
  final String buttonText;
  final Color color;
  const FlatButtons(this.buttonText, this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Text(
        buttonText,
        style: TextStyle(color: color, fontFamily: "Poppins"),
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
