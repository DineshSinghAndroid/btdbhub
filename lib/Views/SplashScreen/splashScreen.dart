import 'package:btdbhub/Views/SplashScreen/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SplashScreen extends StatelessWidget {
    SplashScreen({super.key});

  SplashScreenController walletCtrl = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: SafeArea(
          child: Container(
        height: Get.height,
        width: Get.width,
        child: Image.asset(
          "assets/an1.jpg",
          fit: BoxFit.cover,
        ),
      )),
    );
  }
}
