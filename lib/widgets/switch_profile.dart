import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';

class SwitchProfileDialog extends StatelessWidget {
  final bool currentlyABuyer;
  final bool currentlyASeller;
  const SwitchProfileDialog(this.currentlyASeller, this.currentlyABuyer, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
          height: 206,
          width: 335,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: WhiteText(false, "Switch Profile", 20,
                      FontWeight.w600, AppColors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: SizedBox(
                    width: 335,
                    height: 21,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          child: WhiteText(false, "Seller", 14,
                              FontWeight.w400, AppColors.black),
                        ),
                        currentlyABuyer ? SizedBox(child: Image.asset("assets/images/radio_button.png"),) : const SizedBox()
                      ],
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: SizedBox(
                    height: 21,
                    child: Row(
                      children:  [
                        const Expanded(
                          child: WhiteText(false, "Buyer", 14,
                              FontWeight.w400, AppColors.black),
                        ),
                        currentlyASeller ? SizedBox(child: Image.asset("assets/images/radio_button.png"),) :
                        const SizedBox()
                      ],
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: SizedBox(
                    child: Row(
                      children: [
                        Expanded(child: Container()),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const SizedBox(
                            child: WhiteText(false, "Cancel", 16,
                                FontWeight.w500, AppColors.greyText),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: SizedBox(
                              child: WhiteText(false, "Done", 16,
                                  FontWeight.w500, AppColors.blue),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
