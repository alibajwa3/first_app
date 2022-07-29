import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  final List<Map<String, dynamic>> allSearchField = [
    {
      'name': "Art & Design",
      'name': "Writing",
      'name': "Audio & Music",
      'name': "Programming",
      'name': 'Data',
      'name': 'Business',
      'name': 'Lifestyle',
      'name': 'Animations',
      'name': 'Image Editing',
    }
  ];

  Rx<List<Map<String, dynamic>>> foundCategories =
      Rx<List<Map<String, dynamic>>>([]);

  @override
  void onInit() {
    // TODO: implement onInit
    foundCategories.value = allSearchField;
  }
  void filterCategories(String categoryName) {
    List<Map<String, dynamic>> results = [];
    if (categoryName.isEmpty) {
      results = allSearchField;
    } else {
      results = allSearchField
          .where((element) => element['name']
          .toString()
          .toLowerCase()
          .contains(categoryName.toLowerCase()))
          .toList();
    }
    foundCategories.value = results;
  }

  @override
  void onClose() {
    // TODO: implement onClose

    super.onClose();
  }

}
