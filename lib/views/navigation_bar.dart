import 'package:first_app/controller/bottom_bar_controller.dart';
import 'package:first_app/views/explore_screen.dart';
import 'package:first_app/views/home_screen.dart';
import 'package:first_app/views/offers_screen.dart';
import 'package:first_app/views/orders_screen.dart';
import 'package:first_app/views/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:first_app/controller/bottom_bar_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/colors.dart';

class NavigationPage extends StatelessWidget {
  BottomNavigationController bottomNavigationController = Get.put(BottomNavigationController());
  NavigationPage({Key? key}) : super(key: key);

  final screen = [HomeScreen(), OffersScreen(), ExploreScreen(), OrdersScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() =>  IndexedStack(index: bottomNavigationController.selectedIndex.value, children: screen)),
      bottomNavigationBar: Obx(
            () => SizedBox(
              height: 50,
              child: Wrap(
                children: [BottomNavigationBar(
                  type: BottomNavigationBarType.shifting, selectedItemColor: AppColors.blue, unselectedItemColor: Colors.grey,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  onTap: (index) {
                    bottomNavigationController.changeIndex(index);
                  },
                  currentIndex: bottomNavigationController.selectedIndex.value,
                  items: [
                    BottomNavigationBarItem(icon: Image.asset("assets/images/work.png"), label: "Home", backgroundColor: AppColors.white),
                    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Offers", backgroundColor: AppColors.white),
                    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Explore", backgroundColor: AppColors.white),
                    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Orders", backgroundColor: AppColors.white),
                    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile", backgroundColor: AppColors.white),
                  ],
                ),]
              ),
            ),
      ),
    );
  }
}
