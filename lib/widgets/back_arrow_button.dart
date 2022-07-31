import 'package:flutter/material.dart';

class BackArrowButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const BackArrowButton({this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Image.asset("assets/images/backward_arrow_black.png"),
    );
  }
}
