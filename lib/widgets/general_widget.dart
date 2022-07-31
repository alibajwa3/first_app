import 'package:first_app/widgets/account_tile.dart';
import 'package:first_app/widgets/general_tile.dart';
import 'package:first_app/widgets/rate_us.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';

class GeneralWidget extends StatelessWidget {
  const GeneralWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      width: 335,
      color: AppColors.white,
      child: Column(
        children: [
          AccountTile(false, onPressed: null, "Languages", "assets/images/language.png",),
          Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Divider(height: 0,)),
          AccountTile(true, onPressed: null, "Active status", "assets/images/active_status.png", ),
          Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Divider(height: 0,)),
          AccountTile(false, onPressed: null, "Notification settings", "assets/images/notification_blue.png", ),
          Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Divider(height: 0,)),
          AccountTile(false, onPressed: null, "Security", "assets/images/shield.png",),
          Padding(padding: EdgeInsets.only(left: 15, right: 15), child: Divider(height: 0,)),
          GeneralTile(onPressed: null, "assets/images/share.png", "Share with friends", ),
          Padding(padding: EdgeInsets.only(left: 15, right: 15), child: Divider(height: 0,)),
          AccountTile(false, onPressed: () => showDialog(context: context, builder: (context) => const RateUs()), "Rate us", "assets/images/hotel_class.png",),
          Padding(padding: EdgeInsets.only(left: 15, right: 15), child: Divider(height: 0,)),
          AccountTile(false, onPressed: null, "Feedback", "assets/images/chat.png",  ),
          Padding(padding: EdgeInsets.only(left: 15, right: 15), child: Divider(height: 0,)),
          GeneralTile(onPressed: null, "assets/images/mark_email_unread.png", "AppSupport", ),
          Padding(padding: EdgeInsets.only(left: 15, right: 15), child: Divider(height: 0,)),
          GeneralTile(onPressed: null, "assets/images/info.png", "About app", ),
          Padding(padding: EdgeInsets.only(left: 15, right: 15), child: Divider(height: 0,)),
          GeneralTile(onPressed: null, "assets/images/verified_user.png", "Privacy policy", )
        ],
      ),
    );
  }
}
