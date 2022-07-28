import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PickImage {
  static Future<XFile?> pickImage() async {
    XFile? imageFile;
    if (GetPlatform.isMobile) {
      await Get.bottomSheet(BottomSheet(
        onClosing: () {},
        builder: (context) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.collections),
              title: const Text('Pick Form Gallery'),
              onTap: () async {
                imageFile = await ImagePicker().pickImage(
                    source: ImageSource.gallery, maxHeight: 500, maxWidth: 500);
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera),
              title: const Text('Pick Form Camera'),
              onTap: () async {
                imageFile = await ImagePicker().pickImage(
                    source: ImageSource.camera, maxHeight: 500, maxWidth: 500);
                Get.back();
              },
            ),
          ],
        ),
      ));
      return imageFile;
    } else {
      return imageFile =
      await ImagePicker().pickImage(source: ImageSource.gallery);
    }
  }

  static Future<XFile?> pickProfilePicture() async {
    XFile? imageFile;
    if (GetPlatform.isMobile) {
      await Get.bottomSheet(BottomSheet(
        onClosing: () {},
        builder: (context) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.collections),
              title: const Text('Pick Form Gallery'),
              onTap: () async {
                imageFile = await ImagePicker().pickImage(
                    source: ImageSource.gallery, maxHeight: 200, maxWidth: 200);
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera),
              title: const Text('Pick Form Camera'),
              onTap: () async {
                imageFile = await ImagePicker().pickImage(
                    source: ImageSource.camera, maxHeight: 100, maxWidth: 100);
                Get.back();
              },
            ),
          ],
        ),
      ));
      return imageFile;
    } else {
      return imageFile = await ImagePicker().pickImage(
          source: ImageSource.gallery, maxHeight: 100, maxWidth: 100);
    }
  }
}