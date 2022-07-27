import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType keyBoardType;
  final bool usingForPassword;
  final String hintText;

  const CustomTextField(this.keyBoardType, this.usingForPassword, this.hintText,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
            height: 50,
            width: Get.width,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              style: const TextStyle(fontFamily: "Poppins", fontSize: 14,),
              keyboardType: keyBoardType,
              obscureText: usingForPassword ? true : false,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: hintText,
                hintStyle: const TextStyle(fontFamily: "Poppins", fontSize: 14),
              ),
            ),
      )
    );
  }
}

