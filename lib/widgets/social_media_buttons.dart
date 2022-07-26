import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final String platformName;
  final ImageIcon platformIcon;

  const SocialMediaButton(this.platformIcon, this.platformName, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 156,
      height: 50,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffc4c4c4)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            platformIcon,
            const SizedBox(width: 10,),
            Text(
              platformName,
              style: const TextStyle(fontSize: 14, fontFamily: "Poppins"),
            )
          ],
        ),
      ),
    );
  }
}
