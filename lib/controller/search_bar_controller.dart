import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchBarController extends GetxController {
  var textField = TextField().obs;

  void onPressed(TextField myTextField) {

    textField.value = myTextField;
  }
}