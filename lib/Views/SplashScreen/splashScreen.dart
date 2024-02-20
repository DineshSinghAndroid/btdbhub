import 'package:btdbhub/Controllers/Utils/CustomFileds/ButtonCustom.dart';
import 'package:btdbhub/Views/SplashScreen/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_asker/permission_asker.dart';



class SplashScreen extends StatelessWidget {
    SplashScreen({super.key});

  SplashScreenController walletCtrl = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: Colors.red
        ),
        child: IconButton(
          icon: Icon(Icons.message,size: 29,color: Colors.white,),
          onPressed: (){
        walletCtrl.onPressHelp();
          },

        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/an1.jpg',),fit: BoxFit.cover
              )
            ),
        height: Get.height,
        width: Get.width,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: Get.height/1.6,left: 10,right: 10),
            child: ButtonCustom(
              // buttonHeight: 55,
              // buttonWidth: Get.width,
              onPress: (){
              walletCtrl.dk(context: context);
            },text: "Start", textSize: 22,),
          ),
        ),
      )),
    );
  }
}
