import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

Center noDataFoundLottie() {
  return Center(
    child: Container(
      child: Lottie.asset("assets/common/noDataLottie.json",height: 300,width: Get.width/1.1),
    ),
  );
}