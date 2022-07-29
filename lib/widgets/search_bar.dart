import 'package:first_app/controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/colors.dart';

class SearchBar extends StatelessWidget {
  final String labelText;
  const SearchBar(this.labelText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SearchController searchController = SearchController();
    return Container(
      height: Get.height * 0.0541,
      width: Get.width * 0.8933,
      child: TextField(
        style: const TextStyle(
            fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w500,),
        onChanged: (value) => searchController.filterCategories(value),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 20),
          hintStyle: const TextStyle(color: AppColors.black),
          fillColor: AppColors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          hintText: labelText,
          // labelText: labelText,
          prefixIcon: const ImageIcon(
            AssetImage("assets/images/search.png"),
          ),
        ),
      ),
    );
  }
}
