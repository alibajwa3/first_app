import 'package:get/get.dart';

import 'package:first_app/constant/locations.dart';

class LocationController extends GetxController {
  List<String> locations = [
    "Dubai"
    , "Karachi"
  ];
  var selectedLocation = 'Dubai'.obs;

  void setSelected(String value) {
    selectedLocation.value = value;
  }
}
