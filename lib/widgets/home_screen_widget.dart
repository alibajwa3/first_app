import 'package:flutter/material.dart';

import '../constant/colors.dart';

class HomeScreenWidget extends StatelessWidget {
  final String imageFilePath;
  final String titleOfTheWidget;

  const HomeScreenWidget(this.imageFilePath, this.titleOfTheWidget, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: AppColors.white,
        height: 107,
        width: 107,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 28.83,
            ),
            SizedBox(
                height: 28.33, width: 28.33, child: Image.asset(imageFilePath)),
            const SizedBox(
              height: 12.83,
            ),
            Text(
              titleOfTheWidget,
              style: const TextStyle(
                fontSize: 12,
                fontFamily: "Poppins",
              ),
            )
          ],
        ),
      ),
    );
  }
}
