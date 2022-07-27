import 'package:first_app/constant/colors.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImageController extends GetxController {
  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;

  void get(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().getImage(source: imageSource);
    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
      selectedImageSize.value = "${((File(selectedImagePath.value)).lengthSync()/1024/1024).toStringAsFixed(2)}Mb";
    } else {
      Get.snackbar("Error", "No Image Selected",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: AppColors.red,
          colorText: AppColors.offWhite);
    }
  }
}


// class ImageController extends GetxController {
//   static ImageController get to => Get.find<ImageController>();
//
//   File? image;
//   String? imagePath;
//   final _picker = ImagePicker();
//
//   Future<void> getImage() async {
//     final pickedFile = await _picker.getImage(source: ImageSource.camera);
//
//     if (pickedFile != null) {
//       image = File(pickedFile.path);
//       imagePath = pickedFile.path;
//       update();
//     } else {
//     }
//   }
// }