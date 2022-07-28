import 'package:first_app/constant/colors.dart';
import 'package:first_app/controller/image_controller.dart';
import 'package:first_app/controller/registration_option_controller.dart';
import 'package:first_app/widgets/custom_button.dart';
import 'package:first_app/widgets/custom_text_field.dart';
import 'package:first_app/widgets/white_text.dart';
import 'package:flutter/material.dart';
import 'package:first_app/widgets/back_arrow_button.dart';
import 'package:first_app/controller/location_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerScreen extends StatelessWidget {
  ImagePickerScreen({Key? key}) : super(key: key);

  ImageController imageController = ImageController();

  bool imageIsNotSelected = true;

  @override
  Widget build(BuildContext context) {
    LocationController locationController = LocationController();
    ImageController imageController = ImageController();
    RegistrationOptionController registrationOptionController =
        RegistrationOptionController();
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 52,
            ),
            const BackArrowButton(),
            const SizedBox(
              height: 54,
            ),
            GestureDetector(
                onTap: () async {
                  imageController.getImage(ImageSource.camera);
                },
                child: Obx(
                  () => imageController.selectedImagePath.value == ''
                      ? Container(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.placeHolderColor,
                                  ),
                                ),
                                Image.asset("assets/images/bgb.png"),
                                Align(
                                    alignment: const Alignment(0.9, 0.9),
                                    child:
                                        Image.asset("assets/images/bgc.png")),
                                Align(
                                    alignment: const Alignment(0.64, 0.64),
                                    child:
                                        Image.asset("assets/images/bgd.png")),
                              ],
                            ),
                          ),
                        )
                      : Center(
                        child: ClipOval(
                          child: SizedBox.fromSize(
                           size: Size.fromRadius(60),
                            child: Image.file(
                              File(imageController.selectedImagePath.value),
                              width: 120,
                              height: 120,
                              fit: BoxFit.fill,
                            ),
                          )
                        ),
                      ),
                      ),
                ),
            const SizedBox(
              height: 30,
            ),
            const WhiteText("User Name", 16, FontWeight.w600, AppColors.black),
            const SizedBox(
              height: 15,
            ),
            const CustomTextField(TextInputType.text, false, "User123"),
            const SizedBox(
              height: 30,
            ),
            const WhiteText("Location", 16, FontWeight.w600, AppColors.black),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  border: Border.all(width: 0.20),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              alignment: Alignment.topLeft,
              child: Obx(
                () => DropdownButton(
                  itemHeight: null,
                  isExpanded: true,
                  hint: const Text(
                    'Dubai',
                  ),
                  onChanged: (newValue) {
                    locationController.setSelected(newValue as String);
                  },
                  value: locationController.selectedLocation.value,
                  items: locationController.locations.map((String value) {
                    return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(fontFamily: "Poppins"),
                        ));
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const WhiteText(
                "Register As", 16, FontWeight.w600, AppColors.black),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  border: Border.all(width: 0.20),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              alignment: Alignment.topLeft,
              child: Obx(
                () => DropdownButton(
                  itemHeight: null,
                  isExpanded: true,
                  hint: const Text(
                    'Admin',
                  ),
                  onChanged: (newValue) {
                    registrationOptionController
                        .setSelected(newValue as String);
                  },
                  value: registrationOptionController.selectedOption.value,
                  items:
                      registrationOptionController.options.map((String value) {
                    return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(fontFamily: "Poppins"),
                        ));
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const WhiteText("You can change it from the settings after login",
                10, FontWeight.w400, AppColors.black),
            const SizedBox(
              height: 10,
            ),
            const WhiteText("Work As", 16, FontWeight.w600, AppColors.black),
            const SizedBox(
              height: 15,
            ),
            const CustomTextField(TextInputType.text, false, "User123"),
            const SizedBox(
              height: 29,
            ),
            const CustomButton("Continue", false),
          ],
        ),
      ),
    ));
  }
}
