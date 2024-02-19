 import '../../Utils/Utils.dart';
import 'ConnectionValidator.dart';

class InternetCheck {
  static check() async {
    bool checkInternet = await ConnectionValidator().check();
    if (!checkInternet) {
      ToastCustom.showToast(msg: "No Internet Found");
      return;
    }
  }

  static Future<bool> checkStatus() async {
    bool checkInternet = await ConnectionValidator().check();
    if (!checkInternet) {
      return false;
    } else {
      return true;
    }
  }
}
