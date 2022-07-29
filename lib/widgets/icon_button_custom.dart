import 'package:flutter/material.dart';

class IconButtonCustom extends StatelessWidget {
  final String iconPath;
  final VoidCallback? onPressed;
  const IconButtonCustom(this.iconPath, this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 16,
      child: GestureDetector(
        onTap: onPressed,
        child: Image.asset(iconPath),
      ),
    );

  }
}
