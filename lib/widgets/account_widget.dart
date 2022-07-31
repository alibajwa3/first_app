import 'package:first_app/widgets/general_tile.dart';
import 'package:first_app/widgets/switch_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: 335,
      color: AppColors.white,
      child: Column(
        children: [
          GeneralTile(onPressed: () => showDialog(context: context, builder: (context) => const SwitchProfileDialog(true, true))
          , "assets/images/person.png", "Switch Profile",),
          const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Divider(height: 0,)),
          GeneralTile(onPressed: null, "assets/images/favorite.png", "Favorites"),
          Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Divider(height: 0,)),
         GeneralTile(onPressed: null, "assets/images/grid_view.png", "My gigs"),
          Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Divider(height: 0,)),
         GeneralTile(onPressed: null, "assets/images/hires.png", "My Hires"),
          Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Divider(height: 0,)),
          GeneralTile(onPressed: null, "assets/images/interests.png", "My interest")
        ],
      ),
    );
  }
}
