import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  final List<Map<String, dynamic>> allSearchField = [
    {'name': "Art & Design",
    'name': "Writing",
      'name': "Audio & Music",
    }
  ];

  Rx<List<Map<String, dynamic>>> foundCategories = Rx<List<Map<String, dynamic>>>([]);
}