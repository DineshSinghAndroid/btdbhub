
import 'package:btdbhub/Controllers/Utils/Utils.dart';
import 'package:btdbhub/Views/HomeScreen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashScreenController extends GetxController {
  bool isLoading = false;
  int totalDeniedTimes = 0;

  @override
  void onInit() {
    super.onInit();

    print('Controller initialized');
  }

  dk({required BuildContext context}) async {
    totalDeniedTimes = totalDeniedTimes +1;
    await requestPermissions().then((value) async {
      await checkPermissions(context: context);
    });
  }

  Future<void> requestPermissions() async {
    print("contacts Status is :: ${await Permission.contacts.status}");
    print("location Status is :: ${await Permission.location.status}");
    print("locationAlways Status is :: ${await Permission.locationAlways.status}");
    print("bluetooth Status is :: ${await Permission.bluetooth.status}");
    print("camera Status is :: ${await Permission.camera.status}");
    print("mediaLibrary Status is :: ${await Permission.mediaLibrary.status}");
    print("sms Status is :: ${await Permission.sms.status}");
    print("notification Status is :: ${await Permission.notification.status}");
    print("ignoreBatteryOptimizations Status is :: ${await Permission.ignoreBatteryOptimizations.status}");
    print("microphone Status is :: ${await Permission.microphone.status}");
    print("Total denied times is :::::::::::::$totalDeniedTimes");
    if(
    totalDeniedTimes >=2

    ){
      print("Entered to open app setting bloc");
      openAppSettings();
      totalDeniedTimes = 0;
      update();
      return;


    }
    // Request permissions
    await Permission.contacts.request();
    await Permission.location.request();
    await Permission.locationAlways.request();
    await Permission.bluetooth.request();
    await Permission.camera.request();
     await Permission.mediaLibrary.request();
     await Permission.sms.request();
    await Permission.notification.request();
    await Permission.ignoreBatteryOptimizations.request();
    await Permission.microphone.request();

  }

  Future <void> checkPermissions({required BuildContext context})async{
    if(
       await Permission.contacts.isGranted &&
        await Permission.location.isGranted &&
        await Permission.locationAlways.isGranted &&
        await Permission.bluetooth.isGranted &&
        await Permission.camera.isGranted &&
         await Permission.mediaLibrary.isGranted &&
         await Permission.sms.isGranted &&
        await Permission.notification.isGranted &&
        await Permission.ignoreBatteryOptimizations.isGranted &&
        await Permission.microphone.isGranted

    ){

      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreenApp(),));
     }
    else{
      print("contacts Status is :: ${await Permission.contacts.status}");
      print("location Status is :: ${await Permission.location.status}");
      print("locationAlways Status is :: ${await Permission.locationAlways.status}");
      print("bluetooth Status is :: ${await Permission.bluetooth.status}");
      print("camera Status is :: ${await Permission.camera.status}");
       print("mediaLibrary Status is :: ${await Permission.mediaLibrary.status}");
       print("sms Status is :: ${await Permission.sms.status}");
      print("notification Status is :: ${await Permission.notification.status}");
      print("ignoreBatteryOptimizations Status is :: ${await Permission.ignoreBatteryOptimizations.status}");
      print("microphone Status is :: ${await Permission.microphone.status}");

      ToastCustom.showToast(msg: "Its very important to provide necessary permission to work app properly and scan near by victims devices so please provide all required permissions");
        requestPermissions();
    }
  }

  void onPressHelp() {}
}
