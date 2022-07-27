import 'package:get/get.dart';

import 'package:first_app/constant/locations.dart';

class RegistrationOptionController extends GetxController {
  List<String> options = [
    "Admin"
    , "User"
  ];
  var selectedOption = 'Admin'.obs;

  void setSelected(String value) {
    selectedOption.value = value;
  }
}
