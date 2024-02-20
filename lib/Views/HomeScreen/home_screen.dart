import 'package:btdbhub/Controllers/Utils/CustomFileds/CustomAppBar.dart';
import 'package:btdbhub/Views/HomeScreen/homeCtrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenApp extends StatelessWidget {
   HomeScreenApp({super.key});
final HomeScreenCtrl _appCtrl = Get.put(HomeScreenCtrl());
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _appCtrl,
      builder: (controller) {
      return Scaffold(
        appBar: CustomAppBar(text: "Welcome to our group"),
        body: SafeArea(
          child: Container(
            height: Get.height,
            width: Get.width,
            child: ListView.builder(itemBuilder: (context, index) {
              return Container();
            },),
          ),
        ),
      );
    },);
  }
}
