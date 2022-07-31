// import 'package:first_app/widgets/account_widget.dart';
// import 'package:first_app/widgets/general_widget.dart';
// import 'package:first_app/widgets/gradient_container.dart';
// import 'package:first_app/widgets/log_out_in_button.dart';
// import 'package:first_app/widgets/special_gradient_container.dart';
// import 'package:first_app/widgets/white_text.dart';
// import 'package:flutter/material.dart';
// import 'package:first_app/widgets/account_widget.dart';
// import 'package:first_app/widgets/general_widget.dart';
// import 'package:first_app/widgets/gradient_container.dart';
// import 'package:first_app/widgets/log_out_in_button.dart';
// import 'package:first_app/widgets/special_gradient_container.dart';
// import 'package:first_app/widgets/white_text.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../constant/colors.dart';
//
// class ProfileLogOut extends StatelessWidget {
//
//   const ProfileLogOut({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           height: double.infinity,
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 20, right: 20,),
//           child: SizedBox(
//             child:  ListView(
//               padding: const EdgeInsets.only(top: 187),
//               children: [
//                 const WhiteText(false, "Account", 16, FontWeight.w600, AppColors.black),
//                 const Padding(
//                   padding: const EdgeInsets.only(top: 15),
//                   child: const AccountWidget(),
//                 ),
//                 const Padding(
//                     padding: EdgeInsets.only(top: 30),
//                     child: WhiteText(false, "General", 16, FontWeight.w600, AppColors.black)),
//                 const Padding(
//                   padding: EdgeInsets.only(top: 15),
//                   child: GeneralWidget(),
//                 ),
//                 Container(height: 20, color: Colors.transparent,)
//               ],
//             ),
//
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
//           child: SizedBox(
//               width: Get.width,
//               height: 167,
//               child: const SpecialGradientContainer()),
//         ),
//         const Positioned(
//           top: 40,
//           left: 20,
//           child:
//           WhiteText(false, "Profile", 18, FontWeight.w600, AppColors.white),
//         ),
//         Positioned(
//           top: 97,
//           left: 20,
//           child: Stack(
//             alignment: AlignmentDirectional.center,
//             children: [
//               Container(
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: AppColors.placeHolderColor,
//                 ),
//               ),
//               Image.asset("assets/images/bgb.png"),
//               Align(
//                   alignment: const Alignment(0.9, 0.9),
//                   child:
//                   Image.asset("assets/images/bgc.png")),
//               Align(
//                   alignment: const Alignment(0.64, 0.64),
//                   child:
//                   Image.asset("assets/images/bgd.png")),
//             ],
//           ),
//         ),
//         const Positioned(
//           top: 99,
//           left: 90,
//           child:
//           WhiteText(false, "User123", 16, FontWeight.w500, AppColors.white),
//         ),
//         const Positioned(
//           top: 107,
//           right: 20,
//           child: LogoutinButton(
//               "Log out", AppColors.white, AppColors.red, FontWeight.w500),
//         ),
//         const Positioned(
//           top: 126,
//           left: 90,
//           child: WhiteText(
//               false, "user123@gmail.com", 12, FontWeight.w400, AppColors.white),
//         ),
//         Positioned(
//           top: 43,
//           right: 64,
//           child: Image.asset("assets/images/notifications.png"),
//         ),
//         Positioned(
//           top: 39,
//           right: 14,
//           child: Image.asset("assets/images/maps_ugc.png"),
//         ),
//       ],
//     );;
//   }
// }
