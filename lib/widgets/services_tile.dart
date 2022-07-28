import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';
import 'package:first_app/widgets/white_text.dart';
import '../constant/colors.dart';

class ServicesTile extends StatelessWidget {
  final String assetPath;
  final String serviceDescription;
  final String servicePrice;
  final String serviceTileButtonText;

  const ServicesTile(this.serviceTileButtonText, this.servicePrice,
      this.serviceDescription, this.assetPath,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: 335,
      child: SizedBox(
        height: 150,
        width: 280,
        child: Stack(
          children: [
            Image.asset(assetPath),
            Positioned(
                top: 120,
                left: 15,
                child: WhiteText("\$$servicePrice", 10, FontWeight.w600, AppColors.white)),
            Positioned(
              top: 105,
              left: 211,
              child: InkWell(
                onTap: () {},
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: AppColors.blue,
                    ),
                    child: const Text(
                      "View",
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 12,
                          fontFamily: "Poppins"),
                    )),
              ),
            ),
            Positioned(
                top: 97,
                left: 15,
                child: WhiteText(serviceDescription, 14, FontWeight.w500, AppColors.white))
          ],
        ),
      ),
    );
  }
}
