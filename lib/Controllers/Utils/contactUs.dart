// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:url_launcher/url_launcher.dart';
// final HomeProfileScreenController _profileCtrl = Get.find();
// class Contactus {
//   static FloatingActionButton contactUsFloatingButton() {
//     return FloatingActionButton(
//         onPressed: () {
//           onTapWhatsapp();
//         },
//         child: Lottie.asset('assets/ludoOffline/supportLottie.json'));
//   }
// }
// Future<void> onTapWhatsapp() async {
//   // final Uri _url = Uri.parse('https://wa.me/+917414055310/?text=${Uri.encodeComponent("Hii I need help my user Id is $userIdis")}');
//   final Uri _url = Uri.parse(_profileCtrl.profileData?.data?.app?.whtasappSupport.toString()??"#");
//
//   if (!await launchUrl(_url)) {
//     throw Exception('Could not launch $_url');
//   }
// }
