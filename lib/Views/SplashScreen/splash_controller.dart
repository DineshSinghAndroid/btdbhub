import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashScreenController extends GetxController {
  bool isLoading = false;

  @override
  void onInit() {
    super.onInit();
    dk();
    print('Controller initialized');
  }

  dk() async {
    await requestPermissions();
  }

  Future<void> requestPermissions() async {
    // Request permissions
    await Permission.contacts.request();
    await Permission.storage.request();
    // Request other permissions as needed
  }
}
